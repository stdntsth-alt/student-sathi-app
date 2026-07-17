import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'upload_step_model.dart';
export 'upload_step_model.dart';

class UploadStepWidget extends StatefulWidget {
  const UploadStepWidget({
    super.key,
    bool? active,
    bool? completed,
    double? step,
    String? label,
  })  : this.active = active ?? false,
        this.completed = completed ?? false,
        this.step = step ?? 1.0,
        this.label = label ?? 'File';

  final bool active;
  final bool completed;
  final double step;
  final String label;

  @override
  State<UploadStepWidget> createState() => _UploadStepWidgetState();
}

class _UploadStepWidgetState extends State<UploadStepWidget> {
  late UploadStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadStepModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (valueOrDefault<bool>(
                  widget!.active,
                  false,
                )) {
                  return FlutterFlowTheme.of(context).primary;
                } else if (valueOrDefault<bool>(
                  widget!.completed,
                  false,
                )) {
                  return FlutterFlowTheme.of(context).success;
                } else {
                  return FlutterFlowTheme.of(context).surfaceVariant;
                }
              }(),
              FlutterFlowTheme.of(context).surfaceVariant,
            ),
            borderRadius: BorderRadius.circular(9999),
            shape: BoxShape.rectangle,
          ),
          alignment: AlignmentDirectional(0, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 14,
                height: 14,
                child: Stack(
                  alignment: AlignmentDirectional(0, 0),
                  children: [
                    Icon(
                      Icons.check_rounded,
                      color: FlutterFlowTheme.of(context).onPrimary,
                      size: 14,
                    ),
                  ],
                ),
              ),
              Text(
                valueOrDefault<String>(
                  '${widget!.step.toString()}',
                  '1',
                ),
                style: FlutterFlowTheme.of(context).labelSmall.override(
                      font: GoogleFonts.spaceGrotesk(
                        fontWeight:
                            FlutterFlowTheme.of(context).labelSmall.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      ),
                      color: valueOrDefault<Color>(
                        valueOrDefault<bool>(
                          widget!.active,
                          false,
                        )
                            ? FlutterFlowTheme.of(context).onPrimary
                            : FlutterFlowTheme.of(context).secondaryText,
                        FlutterFlowTheme.of(context).secondaryText,
                      ),
                      letterSpacing: 0.0,
                      fontWeight:
                          FlutterFlowTheme.of(context).labelSmall.fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).labelSmall.fontStyle,
                      lineHeight: 1.2,
                    ),
              ),
            ],
          ),
        ),
        Text(
          valueOrDefault<String>(
            widget!.label,
            'File',
          ),
          style: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.spaceGrotesk(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: valueOrDefault<Color>(
                  valueOrDefault<bool>(
                    widget!.active,
                    false,
                  )
                      ? FlutterFlowTheme.of(context).primaryText
                      : FlutterFlowTheme.of(context).secondaryText,
                  FlutterFlowTheme.of(context).secondaryText,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                lineHeight: 1.3,
              ),
        ),
      ].divide(SizedBox(width: 8)),
    );
  }
}
