import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'header_logo_model.dart';
export 'header_logo_model.dart';

class HeaderLogoWidget extends StatefulWidget {
  const HeaderLogoWidget({super.key});

  @override
  State<HeaderLogoWidget> createState() => _HeaderLogoWidgetState();
}

class _HeaderLogoWidgetState extends State<HeaderLogoWidget> {
  late HeaderLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/pla_logo.png',
                    width: 288.0,
                    height: 178.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
