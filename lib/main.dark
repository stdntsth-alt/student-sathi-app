import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic currentNote(
  List<NotesRecord> notes,
  String noteId,
) {
  final n = notes
      .where((n) => n.reference.id == noteId ?? "")
      .firstOrNull
      ?.snapshotData;
  return n == null
      ? {}
      : {
          "title": n.title,
          "subject": n.subject,
          "unit": n.unit,
          "total_pages": n.total_pages,
          "content_body": n.content_body
        };
}
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic currentQuestion(List<QuestionsRecord> questions) {
  final all = questions;
  if (all.isEmpty) return {};
  if (form.current_index >= all.length) return {};
  final q = all[form.current_index];
  return {
    "id": q.id,
    "text": q.question_text,
    "a": q.option_a,
    "b": q.option_b,
    "c": q.option_c,
    "d": q.option_d,
    "correct": q.correct_option,
  };
}
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String timerLabel() {
  final m = (form.seconds_remaining / 60).floor();
  final s = form.seconds_remaining % 60;
  return m.toString().padLeft(2, '0') + ":" + s.toString().padLeft(2, '0');
}
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double quizProgress(List<QuestionsRecord> questions) {
  final total = questions.length;
  if (total == 0) return 0.0;
  return (form.current_index + 1).toDouble() / total.toDouble();
}
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<NotesRecord> filteredNotes(List<NotesRecord> notes) {
  return notes;
}
import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

dynamic dailyQuiz(List<QuizzesRecord> quizzes) {
  // Return the first quiz as the daily quiz for now
  final all = quizzes;
  if (all.isEmpty) return {};
  final q = all.first;
  return {
    "id": q.id,
    "title": q.title,
    "category": q.category,
    "duration": q.duration_minutes,
    "questions": q.question_count,
  };
}

