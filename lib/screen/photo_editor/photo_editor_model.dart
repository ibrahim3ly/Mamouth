import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/tool_bar/photoeditorbar/photoeditorbar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PhotoEditorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for photoeditorbar component.
  late PhotoeditorbarModel photoeditorbarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    photoeditorbarModel = createModel(context, () => PhotoeditorbarModel());
  }

  void dispose() {
    unfocusNode.dispose();
    photoeditorbarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
