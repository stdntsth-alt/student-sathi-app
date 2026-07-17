import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'option_input_model.dart';
export 'option_input_model.dart';

class OptionInputWidget extends StatefulWidget {
  const OptionInputWidget({
    super.key,
    String? tapAction,
    String? label,
    bool? isCorrect,
    String? hint,
    String? changeAction,
  })  : this.tapAction = tapAction ?? '',
        this.label = label ?? 'Option A',
        this.isCorrect = isCorrect ?? false,
        this.hint = hint ?? 'e.g. The derivative is zero',
        this.changeAction = changeAction ?? '';

  final String tapAction;
  final String label;
  final bool isCorrect;
  final String hint;
  final String changeAction;

  @override
  State<OptionInputWidget> createState() => _OptionInputWidgetState();
}

class _OptionInputWidgetState extends State<OptionInputWidget> {
  late OptionInputModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionInputModel());
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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12),
        shape: BoxShape.rectangle,
        border: Border.all(
          color: valueOrDefault<Color>(
            valueOrDefault<bool>(
              widget!.isCorrect,
              false,
            )
                ? FlutterFlowTheme.of(context).success
                : FlutterFlowTheme.of(context).alternate,
            FlutterFlowTheme.of(context).alternate,
          ),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget!.label,
                      'Option A',
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          font: GoogleFonts.spaceGrotesk(
                            fontWeight: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .labelMedium
                              .fontStyle,
                          lineHeight: 1.3,
                        ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 18,
                        height: 18,
                        child: Stack(
                          alignment: AlignmentDirectional(0, 0),
                          children: [
                            Icon(
                              Icons.check_circle_rounded,
                              color: valueOrDefault<Color>(
                                valueOrDefault<bool>(
                                  widget!.isCorrect,
                                  false,
                                )
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              size: 18,
                            ),
                            Icon(
                              Icons.radio_button_unchecked_rounded,
                              color: valueOrDefault<Color>(
                                valueOrDefault<bool>(
                                  widget!.isCorrect,
                                  false,
                                )
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        valueOrDefault<String>(
                          valueOrDefault<bool>(
                            widget!.isCorrect,
                            false,
                          )
                              ? 'Correct Answer'
                              : 'Mark as Correct',
                          'Mark as Correct',
                        ),
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.spaceGrotesk(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: valueOrDefault<Color>(
                                valueOrDefault<bool>(
                                  widget!.isCorrect,
                                  false,
                                )
                                    ? FlutterFlowTheme.of(context).success
                                    : FlutterFlowTheme.of(context)
                                        .secondaryText,
                                FlutterFlowTheme.of(context).secondaryText,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .fontStyle,
                              lineHeight: 1.2,
                            ),
                      ),
                    ].divide(SizedBox(width: 4)),
                  ),
                ],
              ),
              wrapWithModel(
                model: _model.textFieldModel,
                updateCallback: () => safeSetState(() {}),
                child: TextFieldWidget(
                  label: '',
                  labelPresent: false,
                  helper: '',
                  helperPresent: false,
                  leadingIconPresent: false,
                  trailingIconPresent: false,
                  hint: valueOrDefault<String>(
                    widget!.hint,
                    'e.g. The derivative is zero',
                  ),
                  value: '',
                  onChange: widget!.changeAction,
                  onSubmit: '',
                  variant: 'ghost',
                  error: false,
                ),
              ),
            ].divide(SizedBox(height: 8)),
          ),
        ),
      ),
    );
  }
}
