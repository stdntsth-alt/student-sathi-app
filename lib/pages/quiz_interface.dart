import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/option_card/option_card_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

import 'quiz_interface_model.dart';
export 'quiz_interface_model.dart';

class QuizInterfaceWidget extends StatefulWidget {
  const QuizInterfaceWidget({super.key});

  static String routeName = 'QuizInterface';
  static String routePath = '/quizInterface';

  @override
  State<QuizInterfaceWidget> createState() => _QuizInterfaceWidgetState();
}

class _QuizInterfaceWidgetState extends State<QuizInterfaceWidget> {
  late QuizInterfaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizInterfaceModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
              StreamBuilder<List<QuestionsRecord>>(
                stream: queryQuestionsRecord(),
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
                  List<QuestionsRecord> sectionQuestionsRecordList =
                      snapshot.data!;

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
                                padding: EdgeInsets.all(24),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderRadius: 8,
                                            buttonSize: 40,
                                            fillColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.close_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24,
                                            ),
                                            onPressed: () async {
                                              context.pop();
                                            },
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.timer_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                size: 18,
                                              ),
                                              Text(
                                                functions.timerLabel(),
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
                                                              .warning,
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
                                              ),
                                            ].divide(SizedBox(width: 4)),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await UserProgressRecord
                                                  .collection
                                                  .doc()
                                                  .set(
                                                      createUserProgressRecordData(
                                                    userId: FFAppState()
                                                        .currentUserId,
                                                    quizId: 'daily_quiz_id',
                                                    score: 15,
                                                    completedAt: DateTime.now()
                                                        .toString(),
                                                  ));
                                              context.pop();

                                              context.goNamed(
                                                  StudentHomeWidget.routeName);
                                            },
                                            child: wrapWithModel(
                                              model: _model.buttonModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: ButtonWidget(
                                                iconPresent: false,
                                                iconEndPresent: false,
                                                content: 'Submit',
                                                variant: 'outline',
                                                size: 'small',
                                                fullWidth: false,
                                                loading: false,
                                                disabled: false,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Question \${form.current_index + 1} of \${questions.all.length}',
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
                                              Text(
                                                '\${(quiz_progress * 100).toInt()}%',
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
                                                              .primary,
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
                                            ],
                                          ),
                                          LinearPercentIndicator(
                                            percent: functions.quizProgress(
                                                sectionQuestionsRecordList
                                                    .toList()),
                                            lineHeight: 8,
                                            animation: true,
                                            animateFromLastPercent: true,
                                            progressColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .alternate,
                                            barRadius: Radius.circular(4),
                                            padding: EdgeInsets.zero,
                                          ),
                                        ].divide(SizedBox(height: 4)),
                                      ),
                                    ].divide(SizedBox(height: 16)),
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
                          child: SingleChildScrollView(
                            primary: false,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(24),
                                  child: Container(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .surfaceVariant30,
                                            borderRadius:
                                                BorderRadius.circular(24),
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(24),
                                            child: Container(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'QUANTITATIVE APTITUDE',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .spaceGrotesk(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.2,
                                                        ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                              functions.currentQuestion(
                                                                  sectionQuestionsRecordList
                                                                      .toList()),
                                                              r'''$.text''',
                                                            ) !=
                                                            null
                                                        ? getJsonField(
                                                            functions.currentQuestion(
                                                                sectionQuestionsRecordList
                                                                    .toList()),
                                                            r'''$.text''',
                                                          ).toString()
                                                        : '',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineSmall
                                                                    .fontStyle,
                                                          ),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(height: 16)),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            wrapWithModel(
                                              model: _model.optionCardModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionCardWidget(
                                                isSelected: false,
                                                tapAction:
                                                    'form.set_answer(\'A\')',
                                                label: 'A',
                                                content: getJsonField(
                                                          functions.currentQuestion(
                                                              sectionQuestionsRecordList
                                                                  .toList()),
                                                          r'''$.a''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        functions.currentQuestion(
                                                            sectionQuestionsRecordList
                                                                .toList()),
                                                        r'''$.a''',
                                                      ).toString()
                                                    : '',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.optionCardModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionCardWidget(
                                                isSelected: false,
                                                tapAction:
                                                    'form.set_answer(\'B\')',
                                                label: 'B',
                                                content: getJsonField(
                                                          functions.currentQuestion(
                                                              sectionQuestionsRecordList
                                                                  .toList()),
                                                          r'''$.b''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        functions.currentQuestion(
                                                            sectionQuestionsRecordList
                                                                .toList()),
                                                        r'''$.b''',
                                                      ).toString()
                                                    : '',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.optionCardModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionCardWidget(
                                                isSelected: false,
                                                tapAction:
                                                    'form.set_answer(\'C\')',
                                                label: 'C',
                                                content: getJsonField(
                                                          functions.currentQuestion(
                                                              sectionQuestionsRecordList
                                                                  .toList()),
                                                          r'''$.c''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        functions.currentQuestion(
                                                            sectionQuestionsRecordList
                                                                .toList()),
                                                        r'''$.c''',
                                                      ).toString()
                                                    : '',
                                              ),
                                            ),
                                            wrapWithModel(
                                              model: _model.optionCardModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionCardWidget(
                                                isSelected: false,
                                                tapAction:
                                                    'form.set_answer(\'D\')',
                                                label: 'D',
                                                content: getJsonField(
                                                          functions.currentQuestion(
                                                              sectionQuestionsRecordList
                                                                  .toList()),
                                                          r'''$.d''',
                                                        ) !=
                                                        null
                                                    ? getJsonField(
                                                        functions.currentQuestion(
                                                            sectionQuestionsRecordList
                                                                .toList()),
                                                        r'''$.d''',
                                                      ).toString()
                                                    : '',
                                              ),
                                            ),
                                          ].divide(SizedBox(height: 16)),
                                        ),
                                      ].divide(SizedBox(height: 24)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                                padding: EdgeInsets.all(24),
                                child: Container(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (_model.currentIndex! > 0) {
                                              _model.currentIndex =
                                                  _model.currentIndex! + -1;
                                              safeSetState(() {});
                                            }
                                          },
                                          child: wrapWithModel(
                                            model: _model.buttonModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              icon: Icon(
                                                Icons.arrow_back_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              iconPresent: true,
                                              iconEndPresent: false,
                                              content: 'Previous',
                                              variant: 'ghost',
                                              size: 'medium',
                                              fullWidth: false,
                                              loading: false,
                                              disabled:
                                                  _model.currentIndex == 0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.currentIndex =
                                                _model.currentIndex! + 1;
                                            safeSetState(() {});
                                          },
                                          child: wrapWithModel(
                                            model: _model.buttonModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ButtonWidget(
                                              iconPresent: false,
                                              iconEnd: Icon(
                                                Icons.arrow_forward_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                size: 24,
                                              ),
                                              iconEndPresent: true,
                                              content: 'Next Question',
                                              variant: 'primary',
                                              size: 'medium',
                                              fullWidth: false,
                                              loading: false,
                                              disabled: false,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 16)),
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
