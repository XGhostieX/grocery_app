import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

final firebaseFirestoreProvider = Provider((ref) => FirebaseFirestore.instance);
final firebaseAuthProvider = Provider((ref) => FirebaseAuth.instance);
final googleSignInProvider = Provider((ref) => GoogleSignIn.instance);
final sharedPreferencesProvider = Provider((ref) async => await SharedPreferences.getInstance());
final uuidProvider = Provider((ref) => const Uuid());
