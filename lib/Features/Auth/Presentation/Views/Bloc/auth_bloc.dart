// auth_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:supermarket/Core/utils/services/storage_service.dart';
import 'package:supermarket/Features/Auth/Data/models/user_model.dart';
import 'package:supermarket/Features/Auth/Domain/repository/auth_repo.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final StorageService storageService;

  AuthBloc(
    this.authRepository,
    this.storageService,
  ) : super(const AuthInitial()) {
    on<RegisterUser>((event, emit) async {
      emit(const AuthLoading());

      String? imageUrl;
      if (event.image != null) {
        final imageUploadResult =
            await storageService.uploadImage(event.username, event.image!);

        imageUrl = imageUploadResult;
      }

      final result = await authRepository.registerUser(
          event.email, event.password, event.username, imageUrl);

      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (user) => emit(AuthSuccess(user)),
      );
    });

    on<LoginUser>((event, emit) async {
      emit(const AuthLoading());
      final result =
          await authRepository.loginUser(event.email, event.password);

      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (user) => emit(AuthSuccess(user)),
      );
    });

    on<LogoutUser>((event, emit) async {
      final result = await authRepository.logoutUser();

      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (_) => emit(const AuthInitial()),
      );
    });

    on<CheckAutoLogin>((event, emit) async {
      emit(const AuthLoading());

      final result = await authRepository.checkAutoLogin();
      result.fold(
        (failure) => emit(AuthFailure(failure.message)),
        (user) {
          if (user != null) {
            emit(AuthSuccess(user));
          } else {
            emit(const AuthInitial());
          }
        },
      );
    });
  }
}
