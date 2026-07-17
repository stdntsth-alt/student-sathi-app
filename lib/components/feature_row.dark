import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'feature_row_model.dart';
export 'feature_row_model.dart';

class FeatureRowWidget extends StatefulWidget {
  const FeatureRowWidget({
    super.key,
    this.icon,
    String? title,
    String? description,
  })  : this.title = title ?? 'Unlimited Notes',
        this.description =
            description ?? 'Access all premium PDF notes and study guides.';

  final Widget? icon;
  final String title;
  final String description;

  @override
  State<FeatureRowWidget> createState() => _FeatureRowWidgetState();
}

class _FeatureRowWidgetState extends State<FeatureRowWidget> {
  late FeatureRowModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeatureRowModel());
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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).surfaceVariant,
            borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0, 0),
          child: widget!.icon!,
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                valueOrDefault<String>(
                  widget!.title,
                  'Unlimited Notes',
                ),
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      font: GoogleFonts.plusJakartaSans(
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                      fontStyle:
                          FlutterFlowTheme.of(context).titleSmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget!.description,
                  'Access all premium PDF notes and study guides.',
                ),
                style: FlutterFlowTheme.of(context).bodySmall.override(
                      font: GoogleFonts.inter(
                        fontWeight:
                            FlutterFlowTheme.of(context).bodySmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).bodySmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).bodySmall.fontStyle,
                      lineHeight: 1.4,
                    ),
              ),
            ].divide(SizedBox(height: 4)),
          ),
        ),
      ].divide(SizedBox(width: 16)),
    );
  }
}
