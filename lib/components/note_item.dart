import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'note_item_model.dart';
export 'note_item_model.dart';

class NoteItemWidget extends StatefulWidget {
  const NoteItemWidget({
    super.key,
    String? noteId,
    String? title,
    String? subject,
    bool? isPremium,
  })  : this.noteId = noteId ?? '',
        this.title = title ?? '',
        this.subject = subject ?? '',
        this.isPremium = isPremium ?? false;

  final String noteId;
  final String title;
  final String subject;
  final bool isPremium;

  @override
  State<NoteItemWidget> createState() => _NoteItemWidgetState();
}

class _NoteItemWidgetState extends State<NoteItemWidget> {
  late NoteItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        // ff_lite_route_params:note_id:"${note_id}"

        context.goNamed(
          NoteViewerWidget.routeName,
          queryParameters: {
            'noteId': serializeParam(
              widget!.noteId,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12),
          shape: BoxShape.rectangle,
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
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
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary10,
                    borderRadius: BorderRadius.circular(12),
                    shape: BoxShape.rectangle,
                  ),
                  alignment: AlignmentDirectional(0, 0),
                  child: Icon(
                    Icons.description_rounded,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget!.title,
                        maxLines: 1,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              font: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .fontStyle,
                              lineHeight: 1.5,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        widget!.subject,
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              font: GoogleFonts.spaceGrotesk(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).secondaryText,
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
                    ].divide(SizedBox(height: 4)),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  child: Stack(
                    alignment: AlignmentDirectional(0, 0),
                    children: [
                      Icon(
                        Icons.lock_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20,
                      ),
                      Icon(
                        Icons.chevron_right_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ].divide(SizedBox(width: 16)),
            ),
          ),
        ),
      ),
    );
  }
}
