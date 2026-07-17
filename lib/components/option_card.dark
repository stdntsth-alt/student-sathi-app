import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'option_card_model.dart';
export 'option_card_model.dart';

class OptionCardWidget extends StatefulWidget {
  const OptionCardWidget({
    super.key,
    bool? isSelected,
    String? tapAction,
    String? label,
    String? content,
  })  : this.isSelected = isSelected ?? false,
        this.tapAction = tapAction ?? '',
        this.label = label ?? 'A',
        this.content = content ?? '';

  final bool isSelected;
  final String tapAction;
  final String label;
  final String content;

  @override
  State<OptionCardWidget> createState() => _OptionCardWidgetState();
}

class _OptionCardWidgetState extends State<OptionCardWidget> {
  late OptionCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionCardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          valueOrDefault<bool>(
            widget!.isSelected,
            false,
          )
              ? FlutterFlowTheme.of(context).primary10
              : FlutterFlowTheme.of(context).secondaryBackground,
          FlutterFlowTheme.of(context).secondaryBackground,
        ),
        borderRadius: BorderRadius.circular(16),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.isSelected,
              false,
            )
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).alternate,
          ),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  color: valueOrDefault<Color>(
                    valueOrDefault<bool>(
                      widget!.isSelected,
                      false,
                    )
                        ? FlutterFlowTheme.of(context).primary
                        : FlutterFlowTheme.of(context).alternate,
                    FlutterFlowTheme.of(context).alternate,
                  ),
                  borderRadius: BorderRadius.circular(9999),
                  shape: BoxShape.rectangle,
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Text(
                  valueOrDefault<String>(
                    widget!.label,
                    'A',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FontWeight.bold,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: valueOrDefault<Color>(
                          valueOrDefault<bool>(
                            widget!.isSelected,
                            false,
                          )
                              ? FlutterFlowTheme.of(context).onPrimary
                              : FlutterFlowTheme.of(context).primaryText,
                          FlutterFlowTheme.of(context).primaryText,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.5,
                      ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  widget!.content,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        font: GoogleFonts.inter(
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                        color: FlutterFlowTheme.of(context).primaryText,
                        letterSpacing: 0.0,
                        fontWeight:
                            FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                        fontStyle:
                            FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        lineHeight: 1.5,
                      ),
                ),
              ),
            ].divide(SizedBox(width: 16)),
          ),
        ),
      ),
    );
  }
}

