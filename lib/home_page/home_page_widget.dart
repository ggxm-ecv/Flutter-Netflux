import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login_page/login_page_widget.dart';
import '../movie_page/movie_page_widget.dart';
import '../movies_result_page/movies_result_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController1;
  TextEditingController searchFieldController;
  PageController pageViewController2;
  PageController pageViewController3;
  PageController pageViewController4;
  PageController pageViewController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Image.network(
                    'https://www.phoneworld.com.pk/wp-content/uploads/2020/10/seo-watch-free-link-preview.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Color(0x00EEEEEE),
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.95, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: InkWell(
                            onTap: () async {
                              await signOut();
                              await Navigator.pushAndRemoveUntil(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: Duration(milliseconds: 300),
                                  reverseDuration: Duration(milliseconds: 300),
                                  child: LoginPageWidget(),
                                ),
                                (r) => false,
                              );
                            },
                            child: Icon(
                              Icons.logout,
                              color: Color(0xFFF1F4F8),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                          child: Text(
                            'Tous vos programmes en toute simplicité',
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Inter',
                                      color: Color(0xFFF1F4F8),
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Material(
                color: Colors.transparent,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(4, 0, 4, 0),
                          child: TextFormField(
                            controller: searchFieldController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF57636C),
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              prefixIcon: Icon(
                                Icons.search_sharp,
                                color: Color(0xFF57636C),
                                size: 16,
                              ),
                            ),
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Color(0xFF262D34),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: Duration(milliseconds: 300),
                                reverseDuration: Duration(milliseconds: 300),
                                child: MoviesResultPageWidget(
                                  search: searchFieldController.text,
                                ),
                              ),
                            );
                          },
                          text: 'Rechercher',
                          options: FFButtonOptions(
                            width: 128,
                            height: 40,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Lexend Deca',
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.normal,
                                    ),
                            elevation: 2,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 50,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Films à l\'affiche',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: StreamBuilder<List<MoviesRecord>>(
                                    stream: queryMoviesRecord(
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<MoviesRecord>
                                          pageViewMoviesRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: double.infinity,
                                        height: 345,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 50),
                                              child: PageView.builder(
                                                controller: pageViewController1 ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewMoviesRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewMoviesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, pageViewIndex) {
                                                  final pageViewMoviesRecord =
                                                      pageViewMoviesRecordList[
                                                          pageViewIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child:
                                                              MoviePageWidget(
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              'Title',
                                                            ),
                                                            releaseYear:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .releaseYear,
                                                              '01/01/2022',
                                                            ),
                                                            genre:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .genre,
                                                              'Drame',
                                                            ),
                                                            poster:
                                                                pageViewMoviesRecord
                                                                    .poster,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 10, 0),
                                                          child: Image.network(
                                                            pageViewMoviesRecord
                                                                .poster,
                                                            width: 100,
                                                            height: 230,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller: pageViewController1 ??=
                                                      PageController(
                                                          initialPage: min(
                                                              0,
                                                              pageViewMoviesRecordList
                                                                      .length -
                                                                  1)),
                                                  count:
                                                      pageViewMoviesRecordList
                                                          .length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController1
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 16,
                                                    dotHeight: 16,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFFD8220F),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Drame',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: StreamBuilder<List<MoviesRecord>>(
                                    stream: queryMoviesRecord(
                                      queryBuilder: (moviesRecord) =>
                                          moviesRecord.where('genre',
                                              whereIn: ["Drame"]),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<MoviesRecord>
                                          pageViewMoviesRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: double.infinity,
                                        height: 345,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 50),
                                              child: PageView.builder(
                                                controller: pageViewController2 ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewMoviesRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewMoviesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, pageViewIndex) {
                                                  final pageViewMoviesRecord =
                                                      pageViewMoviesRecordList[
                                                          pageViewIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child:
                                                              MoviePageWidget(
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              'Title',
                                                            ),
                                                            releaseYear:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .releaseYear,
                                                              '01/01/2022',
                                                            ),
                                                            genre:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .genre,
                                                              'Drame',
                                                            ),
                                                            poster:
                                                                pageViewMoviesRecord
                                                                    .poster,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 10, 0),
                                                          child: Image.network(
                                                            pageViewMoviesRecord
                                                                .poster,
                                                            width: 100,
                                                            height: 230,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller: pageViewController2 ??=
                                                      PageController(
                                                          initialPage: min(
                                                              0,
                                                              pageViewMoviesRecordList
                                                                      .length -
                                                                  1)),
                                                  count:
                                                      pageViewMoviesRecordList
                                                          .length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController2
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 16,
                                                    dotHeight: 16,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFFD8220F),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Comédie',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: StreamBuilder<List<MoviesRecord>>(
                                    stream: queryMoviesRecord(
                                      queryBuilder: (moviesRecord) =>
                                          moviesRecord.where('genre',
                                              whereIn: ["Comédie"]),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<MoviesRecord>
                                          pageViewMoviesRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: double.infinity,
                                        height: 345,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 50),
                                              child: PageView.builder(
                                                controller: pageViewController3 ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewMoviesRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewMoviesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, pageViewIndex) {
                                                  final pageViewMoviesRecord =
                                                      pageViewMoviesRecordList[
                                                          pageViewIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child:
                                                              MoviePageWidget(
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              'Title',
                                                            ),
                                                            releaseYear:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .releaseYear,
                                                              '01/01/2022',
                                                            ),
                                                            genre:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .genre,
                                                              'Drame',
                                                            ),
                                                            poster:
                                                                pageViewMoviesRecord
                                                                    .poster,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 10, 0),
                                                          child: Image.network(
                                                            pageViewMoviesRecord
                                                                .poster,
                                                            width: 100,
                                                            height: 230,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller: pageViewController3 ??=
                                                      PageController(
                                                          initialPage: min(
                                                              0,
                                                              pageViewMoviesRecordList
                                                                      .length -
                                                                  1)),
                                                  count:
                                                      pageViewMoviesRecordList
                                                          .length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController3
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 16,
                                                    dotHeight: 16,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFFD8220F),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Aventure',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: StreamBuilder<List<MoviesRecord>>(
                                    stream: queryMoviesRecord(
                                      queryBuilder: (moviesRecord) =>
                                          moviesRecord.where('genre',
                                              whereIn: ["Aventure"]),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<MoviesRecord>
                                          pageViewMoviesRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: double.infinity,
                                        height: 345,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 50),
                                              child: PageView.builder(
                                                controller: pageViewController4 ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewMoviesRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewMoviesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, pageViewIndex) {
                                                  final pageViewMoviesRecord =
                                                      pageViewMoviesRecordList[
                                                          pageViewIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child:
                                                              MoviePageWidget(
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              'Title',
                                                            ),
                                                            releaseYear:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .releaseYear,
                                                              '01/01/2022',
                                                            ),
                                                            genre:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .genre,
                                                              'Drame',
                                                            ),
                                                            poster:
                                                                pageViewMoviesRecord
                                                                    .poster,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 10, 0),
                                                          child: Image.network(
                                                            pageViewMoviesRecord
                                                                .poster,
                                                            width: 100,
                                                            height: 230,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller: pageViewController4 ??=
                                                      PageController(
                                                          initialPage: min(
                                                              0,
                                                              pageViewMoviesRecordList
                                                                      .length -
                                                                  1)),
                                                  count:
                                                      pageViewMoviesRecordList
                                                          .length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController4
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 16,
                                                    dotHeight: 16,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFFD8220F),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 40),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Fantastique',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Poppins',
                                color:
                                    FlutterFlowTheme.of(context).tertiaryColor,
                              ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: StreamBuilder<List<MoviesRecord>>(
                                    stream: queryMoviesRecord(
                                      queryBuilder: (moviesRecord) =>
                                          moviesRecord.where('genre',
                                              whereIn: ["Fantastique"]),
                                      limit: 6,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      List<MoviesRecord>
                                          pageViewMoviesRecordList =
                                          snapshot.data;
                                      return Container(
                                        width: double.infinity,
                                        height: 345,
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 50),
                                              child: PageView.builder(
                                                controller: pageViewController5 ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewMoviesRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewMoviesRecordList
                                                        .length,
                                                itemBuilder:
                                                    (context, pageViewIndex) {
                                                  final pageViewMoviesRecord =
                                                      pageViewMoviesRecordList[
                                                          pageViewIndex];
                                                  return InkWell(
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .rightToLeft,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  300),
                                                          reverseDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      300),
                                                          child:
                                                              MoviePageWidget(
                                                            title:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              'Title',
                                                            ),
                                                            releaseYear:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .releaseYear,
                                                              '01/01/2022',
                                                            ),
                                                            genre:
                                                                valueOrDefault<
                                                                    String>(
                                                              pageViewMoviesRecord
                                                                  .genre,
                                                              'Drame',
                                                            ),
                                                            poster:
                                                                pageViewMoviesRecord
                                                                    .poster,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(10,
                                                                      0, 10, 0),
                                                          child: Image.network(
                                                            pageViewMoviesRecord
                                                                .poster,
                                                            width: 100,
                                                            height: 230,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        4,
                                                                        0,
                                                                        0),
                                                            child: Text(
                                                              pageViewMoviesRecord
                                                                  .title,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .title2
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .tertiaryColor,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 1),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 10),
                                                child: SmoothPageIndicator(
                                                  controller: pageViewController5 ??=
                                                      PageController(
                                                          initialPage: min(
                                                              0,
                                                              pageViewMoviesRecordList
                                                                      .length -
                                                                  1)),
                                                  count:
                                                      pageViewMoviesRecordList
                                                          .length,
                                                  axisDirection:
                                                      Axis.horizontal,
                                                  onDotClicked: (i) {
                                                    pageViewController5
                                                        .animateToPage(
                                                      i,
                                                      duration: Duration(
                                                          milliseconds: 500),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  effect: ExpandingDotsEffect(
                                                    expansionFactor: 2,
                                                    spacing: 8,
                                                    radius: 16,
                                                    dotWidth: 16,
                                                    dotHeight: 16,
                                                    dotColor: Color(0xFF9E9E9E),
                                                    activeDotColor:
                                                        Color(0xFFD8220F),
                                                    paintStyle:
                                                        PaintingStyle.fill,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
