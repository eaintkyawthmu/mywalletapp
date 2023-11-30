import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'saveasguest_model.dart';
export 'saveasguest_model.dart';

class SaveasguestWidget extends StatefulWidget {
  const SaveasguestWidget({Key? key}) : super(key: key);

  @override
  _SaveasguestWidgetState createState() => _SaveasguestWidgetState();
}

class _SaveasguestWidgetState extends State<SaveasguestWidget> {
  late SaveasguestModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SaveasguestModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
      child: FFButtonWidget(
        onPressed: () async {
          GoRouter.of(context).prepareAuthEvent();
          final user = await authManager.signInAnonymously(context);
          if (user == null) {
            return;
          }

          await BudgetListRecord.collection
              .doc()
              .set(createBudgetListRecordData(
                budgetUser: currentUserReference,
              ));

          context.goNamedAuth('MY_Docs', context.mounted);
        },
        text: FFLocalizations.of(context).getText(
          'fmwh1oug' /* Continue as Guest */,
        ),
        options: FFButtonOptions(
          width: 230.0,
          height: 50.0,
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
          color: FlutterFlowTheme.of(context).background,
          textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Lexend',
                color: FlutterFlowTheme.of(context).textColor,
              ),
          elevation: 3.0,
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }
}
