import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/widget/device/device_widget.dart';
import '/home/widget/nav_bar/nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        MoveEffect(
          curve: Curves.linear,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(-62.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(26.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 90.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 1.ms),
        FadeEffect(
          curve: Curves.bounceOut,
          delay: 0.ms,
          duration: 1280.ms,
          begin: 0.645,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () =>
                FocusScope.of(context).requestFocus(_model.unfocusNode),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: Container(
                height: 355.0,
                child: DeviceWidget(),
              ),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFFBFAFA),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Color(0xFFFBFAFA),
            iconTheme: IconThemeData(color: Color(0xFF131211)),
            automaticallyImplyLeading: false,
            leading: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(19.0, 0.0, 0.0, 0.0),
              child: Icon(
                Icons.menu_outlined,
                color: Color(0xFF131212),
                size: 24.0,
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.print_outlined,
                      color: Color(0xFFC2C0D8),
                      size: 24.0,
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        'Connected',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: Color(0x9FBB6BD9),
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)).around(SizedBox(width: 8.0)),
                ),
              ),
            ],
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 2.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 320),
                          curve: Curves.easeIn,
                          width: double.infinity,
                          height: 240.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFC2C0D8), Color(0xFF4B39EF)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(-0.5, -1.0),
                              end: AlignmentDirectional(0.5, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 0.0,
                                    borderWidth: 0.0,
                                    buttonSize: 35.0,
                                    icon: Icon(
                                      Icons.quiz,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      size: 22.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                ]
                                    .divide(SizedBox(width: 0.0))
                                    .around(SizedBox(width: 0.0)),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.00, 0.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 100.0,
                                            height: 100.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: Image.asset(
                                                  'assets/images/logo.png',
                                                ).image,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5.0),
                                              border: Border.all(
                                                color: Color(0x46FFFFFF),
                                              ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'containerOnPageLoadAnimation1']!),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'MAMMOTH',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                              Text(
                                                'Print your creative drawings',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                        ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                            ].divide(SizedBox(height: 5.0)),
                                          ),
                                        ].divide(SizedBox(width: 8.0)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 10.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        await showModalBottomSheet(
                                          isScrollControlled: true,
                                          backgroundColor: Colors.transparent,
                                          enableDrag: false,
                                          context: context,
                                          builder: (context) {
                                            return GestureDetector(
                                              onTap: () =>
                                                  FocusScope.of(context)
                                                      .requestFocus(
                                                          _model.unfocusNode),
                                              child: Padding(
                                                padding:
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height: 355.0,
                                                  child: DeviceWidget(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
                                      },
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 45.0,
                                            height: 45.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                              shape: BoxShape.rectangle,
                                            ),
                                            child: Opacity(
                                              opacity: 0.6,
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/mini-printer_(1).png',
                                                    width: 32.0,
                                                    height: 32.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'My Device',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                          ),
                                        ].divide(SizedBox(height: 5.0)),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xF7FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Opacity(
                                            opacity: 0.6,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/layout_(1).png',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Templates',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xF7FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Opacity(
                                            opacity: 0.6,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/draft.png',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Projects',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 45.0,
                                          height: 45.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xF7FFFFFF),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child: Opacity(
                                            opacity: 0.6,
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/stars.png',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Favourites',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color: Colors.white,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 5.0)),
                                    ),
                                  ]
                                      .divide(SizedBox(width: 25.0))
                                      .addToStart(SizedBox(width: 5.0))
                                      .addToEnd(SizedBox(width: 5.0)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 170.0,
                                height: 85.0,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: Color(0x00DEE5EC),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Opacity(
                                            opacity: 0.4,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed('Graphics');
                                              },
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.1,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F2F2F2),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/output-onlinepngtools.png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFF191647),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation2']!),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/editorial.png',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 35.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed('Graphics');
                                            },
                                            child: Text(
                                              'Graphics',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF191647),
                                                    fontSize: 20.0,
                                                    letterSpacing: 5.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 2.0,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 170.0,
                                height: 85.0,
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.00, 1.00),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  1.0,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.09,
                                          decoration: BoxDecoration(
                                            color: Color(0x00DEE5EC),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Opacity(
                                            opacity: 0.4,
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context
                                                    .pushNamed('TemplateList');
                                              },
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.1,
                                                decoration: BoxDecoration(
                                                  color: Color(0x00F2F2F2),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/output-onlinepngtools.png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  border: Border.all(
                                                    color: Color(0xFF191647),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'containerOnPageLoadAnimation3']!),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/mood-board.png',
                                          width: 40.0,
                                          height: 40.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.5,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(-1.00, 0.00),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 35.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed('TemplateList');
                                            },
                                            child: Text(
                                              'Templates',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: Color(0xFF191647),
                                                    fontSize: 20.0,
                                                    letterSpacing: 5.0,
                                                    fontWeight: FontWeight.w900,
                                                    lineHeight: 2.0,
                                                  ),
                                            ),
                                          ).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation3']!),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]
                                .divide(SizedBox(width: 8.0))
                                .addToStart(SizedBox(width: 3.0))
                                .addToEnd(SizedBox(width: 3.0)),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                13.0, 13.0, 0.0, 0.0),
                            child: Text(
                              'Qick Action',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            height: 200.0,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                MasonryGridView.count(
                                  physics: const NeverScrollableScrollPhysics(),
                                  crossAxisCount: 4,
                                  crossAxisSpacing: 10.0,
                                  mainAxisSpacing: 20.0,
                                  itemCount: 7,
                                  itemBuilder: (context, index) {
                                    return [
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('Note');
                                                },
                                                child: Container(
                                                  width: 70.0,
                                                  height: 163.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools.png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Opacity(
                                                    opacity: 0.8,
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/listing.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Note',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              Container(
                                                width: 60.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFD1DBE3),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: Image.asset(
                                                      'assets/images/output-onlinepngtools_(80).png',
                                                    ).image,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 8.0, 8.0, 8.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: Image.asset(
                                                      'assets/images/camera_(1).png',
                                                      width: 100.0,
                                                      height: 75.0,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Camera',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context
                                                      .pushNamed('PhotoEditor');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/content-marketing.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Photo',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('Collage');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xCFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/collage_(1).png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Collage',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('doc');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/document.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Document',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('webview');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/www.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Web',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                      () => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed('Drawing');
                                                },
                                                child: Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD1DBE3),
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/father.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Drawing',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 8.0)),
                                          ),
                                    ][index]();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 100.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/abc.png',
                                width: 300.0,
                                height: 300.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.00, 0.00),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                13.0, 13.0, 0.0, 0.0),
                            child: Text(
                              'Advanced  Action',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 15.0, 0.0, 0.0),
                          child: Container(
                            height: 400.0,
                            decoration: BoxDecoration(),
                            child: Container(
                              height: double.infinity,
                              child: Stack(
                                children: [
                                  MasonryGridView.count(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    crossAxisCount: 4,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 20.0,
                                    itemCount: 13,
                                    itemBuilder: (context, index) {
                                      return [
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Lable');
                                                  },
                                                  child: Container(
                                                    width: 70.0,
                                                    height: 163.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Opacity(
                                                      opacity: 0.8,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    8.0,
                                                                    8.0,
                                                                    8.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child: Image.asset(
                                                            'assets/images/tag.png',
                                                            width: 100.0,
                                                            height: 75.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Lable Sticker',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: Color(0xFFD1DBE3),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/ocr.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Text Scaner',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: Color(0xFFD1DBE3),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/barcode-scan.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Cod Scaner',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 60.0,
                                                  height: 60.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: Color(0xFFD1DBE3),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/font.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Banner',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context
                                                        .pushNamed('Diagram');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/hierarchy.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Diagram',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Charts');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/pie-chart.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Charts',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Task');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/sticky-note.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Task',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Map');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/map.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Map',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context.pushNamed('Tag');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/mention.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Tag',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context
                                                        .pushNamed('Timeline');
                                                  },
                                                  child: Container(
                                                    width: 70.0,
                                                    height: 163.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/timeline.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Timeline',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF0C0D0D),
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Container(
                                                  width: 70.0,
                                                  height: 163.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.asset(
                                                        'assets/images/output-onlinepngtools_(80).png',
                                                      ).image,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                    border: Border.all(
                                                      color: Color(0xFFD1DBE3),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 8.0,
                                                                8.0, 8.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: Image.asset(
                                                        'assets/images/discussion.png',
                                                        width: 100.0,
                                                        height: 75.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'AI Chat GPT',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            Color(0xFF0C0D0D),
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context
                                                        .pushNamed('Calendar');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/reminder.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Calendar',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                        () => Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    context
                                                        .pushNamed('Markdown');
                                                  },
                                                  child: Container(
                                                    width: 60.0,
                                                    height: 60.0,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.asset(
                                                          'assets/images/output-onlinepngtools_(80).png',
                                                        ).image,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFFD1DBE3),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  8.0,
                                                                  8.0,
                                                                  8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/to-do-list.png',
                                                          width: 100.0,
                                                          height: 75.0,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Markdown',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        fontSize: 12.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                      ][index]();
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 1.00),
                child: Stack(
                  children: [
                    wrapWithModel(
                      model: _model.navBarModel,
                      updateCallback: () => setState(() {}),
                      child: NavBarWidget(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
