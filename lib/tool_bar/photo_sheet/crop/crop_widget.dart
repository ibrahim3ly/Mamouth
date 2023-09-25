import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'crop_model.dart';
export 'crop_model.dart';

class CropWidget extends StatefulWidget {
  const CropWidget({Key? key}) : super(key: key);

  @override
  _CropWidgetState createState() => _CropWidgetState();
}

class _CropWidgetState extends State<CropWidget> with TickerProviderStateMixin {
  late CropModel _model;

  var hasColumnTriggered = false;
  final animationsMap = {
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CropModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 125.0,
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Container(
                width: 40.0,
                height: 8.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: Color(0xFFDDC6C6),
                    width: 1.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Crop',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Tajawal',
                                      fontSize: 14.0,
                                    ),
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 30.0,
                            icon: Icon(
                              Icons.close_sharp,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 13.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 20.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/aspect_(1).png',
                                width: 35.0,
                                height: 35.0,
                                fit: BoxFit.none,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/aspect.png',
                                width: 35.0,
                                height: 35.0,
                                fit: BoxFit.none,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/aspect_(1).png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.none,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/aspect.png',
                                width: 40.0,
                                height: 40.0,
                                fit: BoxFit.none,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ).animateOnActionTrigger(
            animationsMap['columnOnActionTriggerAnimation']!,
            hasBeenTriggered: hasColumnTriggered),
      ),
    );
  }
}
