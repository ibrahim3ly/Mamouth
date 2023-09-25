import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adjustment_model.dart';
export 'adjustment_model.dart';

class AdjustmentWidget extends StatefulWidget {
  const AdjustmentWidget({Key? key}) : super(key: key);

  @override
  _AdjustmentWidgetState createState() => _AdjustmentWidgetState();
}

class _AdjustmentWidgetState extends State<AdjustmentWidget> {
  late AdjustmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdjustmentModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
                          EdgeInsetsDirectional.fromSTEB(5.0, 3.0, 5.0, 10.0),
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
                                'Adjustment',
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Slider(
                              activeColor: FlutterFlowTheme.of(context).primary,
                              inactiveColor:
                                  FlutterFlowTheme.of(context).alternate,
                              min: 0.0,
                              max: 10.0,
                              value: _model.sliderValue ??= 5.0,
                              onChanged: (newValue) {
                                newValue =
                                    double.parse(newValue.toStringAsFixed(2));
                                setState(() => _model.sliderValue = newValue);
                              },
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: FlutterFlowChoiceChips(
                                      options: [
                                        ChipData('Brightness'),
                                        ChipData('Contrast'),
                                        ChipData('Saturation'),
                                        ChipData('Exposure'),
                                        ChipData('Shadow'),
                                        ChipData('Vignette'),
                                        ChipData('Highlighted'),
                                        ChipData('Faded'),
                                        ChipData('Vibrancy'),
                                        ChipData('Temperature')
                                      ],
                                      onChanged: (val) => setState(() =>
                                          _model.choiceChipsValue = val?.first),
                                      selectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        iconSize: 18.0,
                                        elevation: 4.0,
                                      ),
                                      unselectedChipStyle: ChipStyle(
                                        backgroundColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primary,
                                        iconSize: 18.0,
                                        elevation: 0.0,
                                      ),
                                      chipSpacing: 12.0,
                                      rowSpacing: 12.0,
                                      multiselect: false,
                                      alignment: WrapAlignment.start,
                                      controller:
                                          _model.choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                        [],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].addToEnd(SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
