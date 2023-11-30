import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/avatar/avatar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'm_y_profile_page_widget.dart' show MYProfilePageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MYProfilePageModel extends FlutterFlowModel<MYProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for avatar component.
  late AvatarModel avatarModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    avatarModel = createModel(context, () => AvatarModel());
  }

  void dispose() {
    avatarModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
