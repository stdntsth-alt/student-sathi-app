import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'header_action_model.dart';
export 'header_action_model.dart';

class HeaderActionWidget extends StatefulWidget {
  const HeaderActionWidget({
    super.key,
    this.icon,
    String? tooltip,
  }) : this.tooltip = tooltip ?? 'Search text';

  final Widget? icon;
  final String tooltip;

  @override
  State<HeaderActionWidget> createState() => _HeaderActionWidgetState();
}

class _HeaderActionWidgetState extends State<HeaderActionWidget> {
  late HeaderActionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderActionModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowIconButton(
      borderRadius: 8,
      buttonSize: 40,
      fillColor: Colors.transparent,
      icon: Icon(
        Icons.search_rounded,
        color: FlutterFlowTheme.of(context).onSurface,
        size: 22,
      ),
      onPressed: () {
        print('IconButton pressed ...');
      },
    );
  }
}
