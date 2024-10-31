part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.registerUser(
          String email, String password, String username, XFile? image) =
      RegisterUser;
  const factory AuthEvent.loginUser(String email, String password) = LoginUser;
  const factory AuthEvent.logoutUser() = LogoutUser;
  const factory AuthEvent.checkAutoLogin() = CheckAutoLogin;
  const factory AuthEvent.updateProfileImage(String userId, XFile image) =
      UpdateProfileImage;
}
