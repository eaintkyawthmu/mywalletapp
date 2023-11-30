import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/pause_card/pause_card_widget.dart';
import '/components/quickapplink_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bottomsheet_widget.dart' show BottomsheetWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BottomsheetModel extends FlutterFlowModel<BottomsheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for quickapplink component.
  late QuickapplinkModel quickapplinkModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    quickapplinkModel = createModel(context, () => QuickapplinkModel());
  }

  void dispose() {
    quickapplinkModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
