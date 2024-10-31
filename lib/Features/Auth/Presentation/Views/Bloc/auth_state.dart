part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.success(UserModel user) = AuthSuccess;
  const factory AuthState.failure(String error) = AuthFailure;
  const factory AuthState.uploadedSuccess() = AuthUploadedSuccess;
}
