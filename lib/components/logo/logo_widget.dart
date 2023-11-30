import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'logo_model.dart';
export 'logo_model.dart';

class LogoWidget extends StatefulWidget {
  const LogoWidget({Key? key}) : super(key: key);

  @override
  _LogoWidgetState createState() => _LogoWidgetState();
}

class _LogoWidgetState extends State<LogoWidget> {
  late LogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (Theme.of(context).brightness == Brightness.dark)
          Align(
            alignment: AlignmentDirectional(-1.00, -1.00),
            child: Image.asset(
              Theme.of(context).brightness == Brightness.dark
                  ? 'assets/images/wallet_b.png'
                  : 'assets/images/wallet_b.png',
              width: 88.0,
              height: 72.0,
              fit: BoxFit.cover,
            ),
          ),
        if (!(Theme.of(context).brightness == Brightness.dark))
          Image.asset(
            Theme.of(context).brightness == Brightness.dark
                ? 'assets/images/wallet_b.png'
                : 'assets/images/wallet_b.png',
            width: 88.0,
            height: 72.0,
            fit: BoxFit.cover,
          ),
        Text(
          FFLocalizations.of(context).getText(
            '0hvjx8pv' /* Wallet */,
          ),
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).displaySmall,
        ),
      ],
    );
  }
}
