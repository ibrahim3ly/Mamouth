import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/tool_bar/photo_sheet/adjustment/adjustment_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tag_model.dart';
export 'tag_model.dart';

class TagWidget extends StatefulWidget {
  const TagWidget({Key? key}) : super(key: key);

  @override
  _TagWidgetState createState() => _TagWidgetState();
}

class _TagWidgetState extends State<TagWidget> {
  late TagModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    FFIcons.kax,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Home');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Text(
                  'Print  Tag ',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                child: Image.asset(
                  'assets/images/printer_8835519.png',
                  width: 28.0,
                  height: 25.0,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xFFF6F3F3),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 85.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: Color(0x61C3A0A0),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 5.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('Home');
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/edit_1160515.png',
                                  width: 28.0,
                                  height: 28.0,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Edit Data',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF0E1113),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 5.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                barrierColor: Color(0x00FFFFFF),
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: Container(
                                        height: 185.0,
                                        child: AdjustmentWidget(),
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/printer_8835519.png',
                                  width: 30.0,
                                  height: 30.0,
                                  fit: BoxFit.contain,
                                ),
                                Text(
                                  'Print',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Color(0xFF0E1113),
                                        fontSize: 12.0,
                                      ),
                                ),
                              ].divide(SizedBox(height: 8.0)),
                            ),
                          ),
                        ),
                      ]
                          .divide(SizedBox(width: 35.0))
                          .addToStart(SizedBox(width: 0.0))
                          .addToEnd(SizedBox(width: 0.0)),
                    ),
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(height: 1.0)),
        ),
      ),
    );
  }
}
