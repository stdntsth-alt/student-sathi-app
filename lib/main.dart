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

// ऐप को चालू करने का मुख्य फंक्शन (जो गायब था)
void main() {
  runApp(const MaterialApp(home: Scaffold(body: Center(child: Text('Student Sathi')))));
}

// 1. currentNote Function
dynamic currentNote(List<NotesRecord> notes, String noteId) {
  final n = notes.where((n) => n.reference.id == noteId).firstOrNull;
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

// 2. currentQuestion Function
dynamic currentQuestion(List<QuestionsRecord> questions) {
  final all = questions;
  if (all.isEmpty) return {};
  // ध्यान दें: अगर 'form' की वजह से एरर आए, तो इसे FFAppState().current_index से बदलें
  if (FFAppState().current_index >= all.length) return {};
  final q = all[FFAppState().current_index];
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

// 3. timerLabel Function
String timerLabel() {
  final m = (FFAppState().seconds_remaining / 60).floor();
  final s = FFAppState().seconds_remaining % 60;
  return m.toString().padLeft(2, '0') + ":" + s.toString().padLeft(2, '0');
}

// 4. quizProgress Function
double quizProgress(List<QuestionsRecord> questions) {
  final total = questions.length;
  if (total == 0) return 0.0;
  return (FFAppState().current_index + 1).toDouble() / total.toDouble();
}

// 5. filteredNotes Function
List<NotesRecord> filteredNotes(List<NotesRecord> notes) {
  return notes;
}

// 6. dailyQuiz Function
dynamic dailyQuiz(List<QuizzesRecord> quizzes) {
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
