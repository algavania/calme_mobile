import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DbHelper {
  static final db = FirebaseFirestore.instance;
  static final auth = FirebaseAuth.instance;

  static const users = 'users';
  static const meditations = 'meditations';
  static const articles = 'articles';
  static const copings = 'copings';
  static const sessions = 'sessions';
  static const questions = 'questions';
  static const journals = 'journals';
  static const journalAnswers = 'answers';
}
