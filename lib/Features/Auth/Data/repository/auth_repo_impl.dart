// auth_repository_impl.dart
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:supermarket/Core/error/failures.dart';
import 'package:supermarket/Features/Auth/Data/models/user_model.dart';
import 'package:supermarket/Features/Auth/Domain/repository/auth_repo.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Either<Failures, UserModel>> registerUser(
      String email, String password, String username,
      [String? imageUrl]) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      String userId = userCredential.user!.uid;

      UserModel userModel = UserModel(
        id: userId,
        email: email,
        username: username,
        imageUrl: imageUrl,
      );

      await _firestore.collection('users').doc(userId).set(userModel.toJson());

      return right(userModel);
    } catch (e) {
      log("Failed to register user: $e");
      return left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, UserModel>> loginUser(
      String email, String password) async {
    try {
      // Firebase Auth login
      final UserCredential userCredential =
          await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Ensure user object is not null
      final User? user = userCredential.user;
      if (user == null) {
        log("Login failed: Firebase user is null.");
        return Left(RemoteFailures("User login failed. Please try again."));
      }

      // Fetch user data from Firestore
      final doc = await _firestore.collection('users').doc(user.uid).get();
      if (doc.exists && doc.data() != null) {
        final userModel = UserModel.fromJson(doc.data()!);
        return Right(userModel);
      } else {
        log("User data not found in Firestore for UID: ${user.uid}");
        return Left(RemoteFailures("User data not found in Firestore"));
      }
    } catch (e) {
      log("Failed to log in user: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> logoutUser() async {
    try {
      await _auth.signOut();
      return const Right(null);
    } catch (e) {
      log("Failed to log out user: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<RemoteFailures, UserModel?>> checkAutoLogin() async {
    try {
      final User? user = _auth.currentUser;

      if (user != null) {
        final doc = await _firestore.collection('users').doc(user.uid).get();
        if (doc.exists) {
          final userModel = UserModel.fromJson(doc.data()!);
          return Right(userModel);
        } else {
          log("No user data found for UID: ${user.uid}");
          return const Right(null);
        }
      } else {
        log("No user is currently logged in");
        return const Right(null);
      }
    } catch (e) {
      log("Error checking auto-login: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, void>> saveUserImage(
      String userId, String imageUrl) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .update({'imageUrl': imageUrl});
      return const Right(null);
    } catch (e) {
      log("Failed to save user image for UID: $userId, Error: $e");
      return Left(RemoteFailures(e.toString()));
    }
  }
}
