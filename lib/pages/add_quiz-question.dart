import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button/button_widget.dart';
import '/components/option_input/option_input_widget.dart';
import '/components/text_field/text_field_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'add_quiz_question_model.dart';
export 'add_quiz_question_model.dart';

class AddQuizQuestionWidget extends StatefulWidget {
  const AddQuizQuestionWidget({super.key});

  static String routeName = 'AddQuizQuestion';
  static String routePath = '/addQuizQuestion';

  @override
  State<AddQuizQuestionWidget> createState() => _AddQuizQuestionWidgetState();
}

class _AddQuizQuestionWidgetState extends State<AddQuizQuestionWidget> {
  late AddQuizQuestionModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddQuizQuestionModel());
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
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.rectangle,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 16, 24, 16),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderRadius: 8,
                                        buttonSize: 40,
                                        fillColor: Colors.transparent,
                                        icon: Icon(
                                          Icons.arrow_back_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24,
                                        ),
                                        onPressed: () async {
                                          context.goNamed(
                                              AdminDashboardWidget.routeName);
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
                                            'Create Question',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Text(
                                            'Advanced Calculus • Quiz 2',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall
                                                .override(
                                                  font:
                                                      GoogleFonts.spaceGrotesk(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (((((_model.question == null ||
                                                          _model.question ==
                                                              '') ||
                                                      (_model.optA == null ||
                                                          _model.optA == '')) ||
                                                  (_model.optB == null ||
                                                      _model.optB == '')) ||
                                              (_model.optC == null ||
                                                  _model.optC == '')) ||
                                          (_model.optD == null ||
                                              _model.optD == '')) {
                                        _model.error =
                                            '\"Please fill in the question and all options\"';
                                        safeSetState(() {});
                                        return;
                                      }

                                      await QuestionsRecord.collection
                                          .doc()
                                          .set(createQuestionsRecordData(
                                            quizId: 'daily_quiz_1',
                                            questionText: _model.question,
                                            optionA: _model.optA,
                                            optionB: _model.optB,
                                            optionC: _model.optC,
                                            optionD: _model.optD,
                                            correctOption: _model.correct,
                                            explanation: _model.explanation,
                                          ));
                                      context.pop();
                                    },
                                    child: wrapWithModel(
                                      model: _model.buttonModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      child: ButtonWidget(
                                        iconPresent: false,
                                        iconEndPresent: false,
                                        content: 'Save',
                                        variant: 'primary',
                                        size: 'small',
                                        fullWidth: false,
                                        loading: false,
                                        disabled: false,
                                      ),
                                    ),
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
                      child: Container(
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Question Text',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts
                                                      .plusJakartaSans(
                                                    fontWeight: FontWeight.bold,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.bold,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                  lineHeight: 1.4,
                                                ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16),
                                              child: Container(
                                                child: wrapWithModel(
                                                  model: _model.textFieldModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    leadingIconPresent: false,
                                                    trailingIconPresent: false,
                                                    hint:
                                                        'Enter the mathematical problem or theory question here...',
                                                    value: _model.question,
                                                    onChange: '',
                                                    onSubmit: '',
                                                    variant: 'ghost',
                                                    error: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16)),
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
                                                'Answer Options',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                              Text(
                                                '4 Options',
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
                                            ],
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.correct = 'A';
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.optionInputModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionInputWidget(
                                                tapAction: '',
                                                label: 'Option A',
                                                isCorrect:
                                                    _model.correct == 'A',
                                                hint:
                                                    'e.g. The derivative is zero',
                                                changeAction: '',
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.correct = 'B';
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.optionInputModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionInputWidget(
                                                tapAction: '',
                                                label: 'Option B',
                                                isCorrect:
                                                    _model.correct == 'B',
                                                hint:
                                                    'e.g. The function is discontinuous',
                                                changeAction: '',
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.correct = 'C';
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.optionInputModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionInputWidget(
                                                tapAction: '',
                                                label: 'Option C',
                                                isCorrect:
                                                    _model.correct == 'C',
                                                hint:
                                                    'e.g. Limit does not exist',
                                                changeAction: '',
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.correct = 'D';
                                              safeSetState(() {});
                                            },
                                            child: wrapWithModel(
                                              model: _model.optionInputModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: OptionInputWidget(
                                                tapAction: '',
                                                label: 'Option D',
                                                isCorrect:
                                                    _model.correct == 'D',
                                                hint: 'e.g. None of the above',
                                                changeAction: '',
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16)),
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
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.lightbulb_outline_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .warning,
                                                size: 20,
                                              ),
                                              Text(
                                                'Explanation (Optional)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .plusJakartaSans(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                          lineHeight: 1.4,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 8)),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              shape: BoxShape.rectangle,
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16),
                                              child: Container(
                                                child: wrapWithModel(
                                                  model: _model.textFieldModel2,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    leadingIconPresent: false,
                                                    trailingIconPresent: false,
                                                    hint:
                                                        'Explain why the correct answer is right to help students learn...',
                                                    value: _model.explanation,
                                                    onChange: '',
                                                    onSubmit: '',
                                                    variant: 'ghost',
                                                    error: false,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16)),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Difficulty',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .spaceGrotesk(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.3,
                                                      ),
                                                ),
                                                FlutterFlowDropDown<String>(
                                                  controller: _model
                                                          .dropdownValueController ??=
                                                      FormFieldController<
                                                          String>(
                                                    _model.dropdownValue ??=
                                                        _model.difficulty,
                                                  ),
                                                  options: [
                                                    'Easy',
                                                    'Medium',
                                                    'Hard'
                                                  ],
                                                  onChanged: (val) =>
                                                      safeSetState(() => _model
                                                          .dropdownValue = val),
                                                  width: 200,
                                                  height: 40,
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
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
                                                        ),
                                                        letterSpacing: 0.0,
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
                                                  hintText: 'Easy',
                                                  icon: Icon(
                                                    Icons
                                                        .keyboard_arrow_down_rounded,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 24,
                                                  ),
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  elevation: 2,
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .alternate,
                                                  borderWidth: 1,
                                                  borderRadius: 12,
                                                  margin: EdgeInsetsDirectional
                                                      .fromSTEB(16, 0, 16, 0),
                                                  hidesUnderline: true,
                                                  isOverButton: false,
                                                  isSearchable: false,
                                                  isMultiSelect: false,
                                                ),
                                              ].divide(SizedBox(height: 8)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'Points',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .spaceGrotesk(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                        lineHeight: 1.3,
                                                      ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.textFieldModel3,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: TextFieldWidget(
                                                    label: '',
                                                    labelPresent: false,
                                                    helper: '',
                                                    helperPresent: false,
                                                    leadingIconPresent: false,
                                                    trailingIconPresent: false,
                                                    hint: 'Points',
                                                    value: _model.points,
                                                    onChange: '',
                                                    onSubmit: '',
                                                    variant: 'outlined',
                                                    error: false,
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 8)),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 16)),
                                      ),
                                    ].divide(SizedBox(height: 24)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(24, 16, 24, 16),
                            child: Container(
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pop();
                                      },
                                      child: wrapWithModel(
                                        model: _model.buttonModel2,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonWidget(
                                          iconPresent: false,
                                          iconEndPresent: false,
                                          content: 'Discard',
                                          variant: 'ghost',
                                          size: 'medium',
                                          fullWidth: true,
                                          loading: false,
                                          disabled: false,
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
                                        if (((((_model.question == null ||
                                                            _model.question ==
                                                                '') ||
                                                        (_model.optA == null ||
                                                            _model.optA ==
                                                                '')) ||
                                                    (_model.optB == null ||
                                                        _model.optB == '')) ||
                                                (_model.optC == null ||
                                                    _model.optC == '')) ||
                                            (_model.optD == null ||
                                                _model.optD == '')) {
                                          _model.error =
                                              '\"Please fill in the question and all options\"';
                                          safeSetState(() {});
                                          return;
                                        }

                                        await QuestionsRecord.collection
                                            .doc()
                                            .set(createQuestionsRecordData(
                                              quizId: 'daily_quiz_1',
                                              questionText: _model.question,
                                              optionA: _model.optA,
                                              optionB: _model.optB,
                                              optionC: _model.optC,
                                              optionD: _model.optD,
                                              correctOption: _model.correct,
                                              explanation: _model.explanation,
                                            ));
                                        context.pop();
                                      },
                                      child: wrapWithModel(
                                        model: _model.buttonModel3,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ButtonWidget(
                                          iconPresent: false,
                                          iconEndPresent: false,
                                          content: 'Save & Add Next',
                                          variant: 'outline',
                                          size: 'medium',
                                          fullWidth: true,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
