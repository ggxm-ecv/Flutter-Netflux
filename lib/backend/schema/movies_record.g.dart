// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movies_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoviesRecord> _$moviesRecordSerializer =
    new _$MoviesRecordSerializer();

class _$MoviesRecordSerializer implements StructuredSerializer<MoviesRecord> {
  @override
  final Iterable<Type> types = const [MoviesRecord, _$MoviesRecord];
  @override
  final String wireName = 'MoviesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MoviesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.genre;
    if (value != null) {
      result
        ..add('genre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.releaseYear;
    if (value != null) {
      result
        ..add('release_year')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.poster;
    if (value != null) {
      result
        ..add('poster')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MoviesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoviesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre':
          result.genre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_year':
          result.releaseYear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MoviesRecord extends MoviesRecord {
  @override
  final String title;
  @override
  final String uid;
  @override
  final String genre;
  @override
  final String releaseYear;
  @override
  final String poster;
  @override
  final DocumentReference<Object> reference;

  factory _$MoviesRecord([void Function(MoviesRecordBuilder) updates]) =>
      (new MoviesRecordBuilder()..update(updates)).build();

  _$MoviesRecord._(
      {this.title,
      this.uid,
      this.genre,
      this.releaseYear,
      this.poster,
      this.reference})
      : super._();

  @override
  MoviesRecord rebuild(void Function(MoviesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoviesRecordBuilder toBuilder() => new MoviesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoviesRecord &&
        title == other.title &&
        uid == other.uid &&
        genre == other.genre &&
        releaseYear == other.releaseYear &&
        poster == other.poster &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, title.hashCode), uid.hashCode), genre.hashCode),
                releaseYear.hashCode),
            poster.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoviesRecord')
          ..add('title', title)
          ..add('uid', uid)
          ..add('genre', genre)
          ..add('releaseYear', releaseYear)
          ..add('poster', poster)
          ..add('reference', reference))
        .toString();
  }
}

class MoviesRecordBuilder
    implements Builder<MoviesRecord, MoviesRecordBuilder> {
  _$MoviesRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _genre;
  String get genre => _$this._genre;
  set genre(String genre) => _$this._genre = genre;

  String _releaseYear;
  String get releaseYear => _$this._releaseYear;
  set releaseYear(String releaseYear) => _$this._releaseYear = releaseYear;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MoviesRecordBuilder() {
    MoviesRecord._initializeBuilder(this);
  }

  MoviesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _uid = $v.uid;
      _genre = $v.genre;
      _releaseYear = $v.releaseYear;
      _poster = $v.poster;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoviesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoviesRecord;
  }

  @override
  void update(void Function(MoviesRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoviesRecord build() {
    final _$result = _$v ??
        new _$MoviesRecord._(
            title: title,
            uid: uid,
            genre: genre,
            releaseYear: releaseYear,
            poster: poster,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
