import 'package:dartz/dartz.dart';
import 'package:supermarket/Core/error/failures.dart';
import 'package:supermarket/Features/Auth/Data/models/user_model.dart';

abstract class AuthRepository {
  Future<Either<Failures, UserModel>> registerUser(
      String email, String password, String username,
      [String? imageUrl]);
  Future<Either<Failures, UserModel>> loginUser(String email, String password);
  Future<Either<Failures, void>> logoutUser();
  Future<Either<Failures, UserModel?>> checkAutoLogin();
  Future<Either<Failures, void>> saveUserImage(String userId, String imageUrl);
}
