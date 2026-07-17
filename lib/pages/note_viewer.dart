import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/header_action/header_action_widget.dart';
import '/components/page_indicator/page_indicator_widget.dart';
import '/components/slider/slider_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'note_viewer_model.dart';
export 'note_viewer_model.dart';

class NoteViewerWidget extends StatefulWidget {
  const NoteViewerWidget({
    super.key,
    this.noteId,
  });

  final String? noteId;

  static String routeName = 'NoteViewer';
  static String routePath = '/noteViewer';

  @override
  State<NoteViewerWidget> createState() => _NoteViewerWidgetState();
}

class _NoteViewerWidgetState extends State<NoteViewerWidget> {
  late NoteViewerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoteViewerModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 0,
                height: 0,
              ),
              Container(
                width: 0,
                height: 0,
              ),
              Container(
                width: 0,
                height: 0,
              ),
              StreamBuilder<List<NotesRecord>>(
                stream: queryNotesRecord(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }
                  List<NotesRecord> sectionNotesRecordList = snapshot.data!;

                  return Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 16, 24, 16),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 8,
                                            buttonSize: 40,
                                            fillColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.arrow_back_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              context.pop();
                                            },
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                getJsonField(
                                                          functions.currentNote(
                                                              sectionNotesRecordList
                                                                  .toList(),
                                                              widget!.noteId!),
                                                          r'''$.title''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        functions.currentNote(
                                                            sectionNotesRecordList
                                                                .toList(),
                                                            widget!.noteId!),
                                                        r'''$.title''',
                                                      ).toString()
                                                    : 'Note Viewer',
                                                maxLines: 1,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleMedium
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              Text(
                                                '${getJsonField(
                                                      functions.currentNote(
                                                          sectionNotesRecordList
                                                              .toList(),
                                                          widget!.noteId!),
                                                      r'''$.subject''',
                                                    ) != null ? getJsonField(
                                                    functions.currentNote(
                                                        sectionNotesRecordList
                                                            .toList(),
                                                        widget!.noteId!),
                                                    r'''$.subject''',
                                                  ).toString() : ''} • ${getJsonField(
                                                      functions.currentNote(
                                                          sectionNotesRecordList
                                                              .toList(),
                                                          widget!.noteId!),
                                                      r'''$.unit''',
                                                    ) != null ? getJsonField(
                                                    functions.currentNote(
                                                        sectionNotesRecordList
                                                            .toList(),
                                                        widget!.noteId!),
                                                    r'''$.unit''',
                                                  ).toString() : ''}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .spaceGrotesk(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                              ),
                                            ].divide(SizedBox(height: 4)),
                                          ),
                                        ].divide(SizedBox(width: 16)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.headerActionModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HeaderActionWidget(
                                              icon: Icon(
                                                Icons.search_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              tooltip: 'Search text',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.headerActionModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HeaderActionWidget(
                                              icon: Icon(
                                                Icons.bookmark_border_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              tooltip: 'Bookmark',
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.headerActionModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: HeaderActionWidget(
                                              icon: Icon(
                                                Icons.more_vert_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              tooltip: 'Options',
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 4)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Stack(
                            alignment: AlignmentDirectional(-1, -1),
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0xFF1A1A1A),
                                  shape: BoxShape.rectangle,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(24),
                                  child: Container(
                                    child: Container(
                                      alignment: AlignmentDirectional(0, -1),
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Container(
                                              constraints: BoxConstraints(
                                                minHeight: 600,
                                              ),
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .onPrimary,
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(32),
                                                child: Container(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        'Fundamental Theorem of Calculus',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .headlineSmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .onAccent,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineSmall
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.3,
                                                                ),
                                                      ),
                                                      Divider(
                                                        height: 16,
                                                        thickness: 1,
                                                        indent: 0,
                                                        endIndent: 0,
                                                        color:
                                                            Color(0xFFEEEEEE),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                                  functions.currentNote(
                                                                      sectionNotesRecordList
                                                                          .toList(),
                                                                      widget!
                                                                          .noteId!),
                                                                  r'''$.content_body''',
                                                                ) !=
                                                                null
                                                            ? getJsonField(
                                                                functions.currentNote(
                                                                    sectionNotesRecordList
                                                                        .toList(),
                                                                    widget!
                                                                        .noteId!),
                                                                r'''$.content_body''',
                                                              ).toString()
                                                            : 'No content available for this note.',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF333333),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                              lineHeight: 1.5,
                                                            ),
                                                      ),
                                                      CachedNetworkImage(
                                                        fadeInDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    0),
                                                        fadeOutDuration:
                                                            Duration(
                                                                milliseconds:
                                                                    0),
                                                        imageUrl:
                                                            'https://dimg.dreamflow.cloud/v1/image/mathematical%20integration%20formula%20diagram',
                                                        height: 120,
                                                        fit: BoxFit.contain,
                                                        alignment:
                                                            Alignment(0, 0),
                                                      ),
                                                      Text(
                                                        'Integration by Parts',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .plusJakartaSans(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .onAccent,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                      ),
                                                      Text(
                                                        'In calculus, and more generally in mathematical analysis, integration by parts or partial integration is a process that finds the integral of a product of functions in terms of the integral of their derivative and antiderivative.',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .inter(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                              color: Color(
                                                                  0xFF333333),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                              lineHeight: 1.5,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 16)),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 24)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 24, 0),
                                    child: Container(
                                      child: wrapWithModel(
                                        model: _model.pageIndicatorModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: PageIndicatorWidget(
                                          current: 1.0,
                                          total: getJsonField(
                                                    functions.currentNote(
                                                        sectionNotesRecordList
                                                            .toList(),
                                                        widget!.noteId!),
                                                    r'''$.total_pages''',
                                                  ) !=
                                                  null
                                              ? getJsonField(
                                                  functions.currentNote(
                                                      sectionNotesRecordList
                                                          .toList(),
                                                      widget!.noteId!),
                                                  r'''$.total_pages''',
                                                )
                                              : 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 16, 24, 16),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 8,
                                            buttonSize: 40,
                                            fillColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.zoom_out_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              _model.zoom = form.zoom - 10;
                                              safeSetState(() {});
                                            },
                                          ),
                                          Container(
                                            width: 120,
                                            child: wrapWithModel(
                                              model: _model.sliderModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: SliderWidget(
                                                label: '',
                                                labelPresent: false,
                                                description: '',
                                                descriptionPresent: false,
                                                valueLabel: '',
                                                valueLabelPresent: false,
                                                step: 0.0,
                                                divisions: 0,
                                                valuePercentage: _model.zoom,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                variant: 'Material',
                                                disabled: false,
                                                showTicks: true,
                                              ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderRadius: 8,
                                            buttonSize: 40,
                                            fillColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.zoom_in_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              _model.zoom = form.zoom + 10;
                                              safeSetState(() {});
                                            },
                                          ),
                                        ].divide(SizedBox(width: 16)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          wrapWithModel(
                                            model: _model.buttonModel,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              icon: Icon(
                                                Icons.edit_note_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              iconPresent: true,
                                              iconEndPresent: false,
                                              content: 'Add Note',
                                              variant: 'outline',
                                              size: 'small',
                                              fullWidth: false,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                          Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              shape: BoxShape.rectangle,
                                            ),
                                            alignment:
                                                AlignmentDirectional(0, 0),
                                            child: Icon(
                                              Icons.download_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .onPrimary,
                                              size: 20,
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 8)),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).accent10,
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Container(
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 8, 24, 8),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.workspace_premium_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        size: 16,
                                      ),
                                      Text(
                                        'You are viewing this as a Premium Member',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.spaceGrotesk(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Manage Plan',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall
                                            .override(
                                              font: GoogleFonts.spaceGrotesk(
                                                fontWeight: FontWeight.bold,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .labelSmall
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .tertiary,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.bold,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .fontStyle,
                                              decoration:
                                                  TextDecoration.underline,
                                              lineHeight: 1.2,
                                            ),
                                      ),
                                    ].divide(SizedBox(width: 8)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
