import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'movies_record.g.dart';

abstract class MoviesRecord
    implements Built<MoviesRecord, MoviesRecordBuilder> {
  static Serializer<MoviesRecord> get serializer => _$moviesRecordSerializer;

  @nullable
  String get title;

  @nullable
  String get uid;

  @nullable
  String get genre;

  @nullable
  @BuiltValueField(wireName: 'release_year')
  String get releaseYear;

  @nullable
  String get poster;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MoviesRecordBuilder builder) => builder
    ..title = ''
    ..uid = ''
    ..genre = ''
    ..releaseYear = ''
    ..poster = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('movies');

  static Stream<MoviesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MoviesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  MoviesRecord._();
  factory MoviesRecord([void Function(MoviesRecordBuilder) updates]) =
      _$MoviesRecord;

  static MoviesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMoviesRecordData({
  String title,
  String uid,
  String genre,
  String releaseYear,
  String poster,
}) =>
    serializers.toFirestore(
        MoviesRecord.serializer,
        MoviesRecord((m) => m
          ..title = title
          ..uid = uid
          ..genre = genre
          ..releaseYear = releaseYear
          ..poster = poster));
