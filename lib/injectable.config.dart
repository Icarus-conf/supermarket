// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i974;
import 'package:firebase_auth/firebase_auth.dart' as _i59;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'Core/utils/services/firestore_module.dart' as _i959;
import 'Core/utils/services/image_service.dart' as _i565;
import 'Core/utils/services/storage_service.dart' as _i514;
import 'Features/Auth/Data/repository/auth_repo_impl.dart' as _i130;
import 'Features/Auth/Domain/repository/auth_repo.dart' as _i714;
import 'Features/Auth/Presentation/Views/Bloc/auth_bloc.dart' as _i232;
import 'Features/Home/Data/repository/home_repo_impl.dart' as _i355;
import 'Features/Home/Domain/repository/home_repo.dart' as _i685;
import 'Features/Home/Presentation/Bloc/home_bloc.dart' as _i68;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseModule = _$FirebaseModule();
    gh.factory<_i59.FirebaseAuth>(() => firebaseModule.auth);
    gh.factory<_i565.ImageService>(() => _i565.ImageService());
    gh.factory<_i514.StorageService>(() => _i514.StorageService());
    gh.lazySingleton<_i974.FirebaseFirestore>(() => firebaseModule.firestore);
    gh.factory<_i685.HomeRepository>(
        () => _i355.HomeRepositoryImpl(gh<_i974.FirebaseFirestore>()));
    gh.factory<_i714.AuthRepository>(() => _i130.AuthRepositoryImpl());
    gh.factory<_i68.HomeBloc>(() => _i68.HomeBloc(
          gh<_i685.HomeRepository>(),
          gh<_i59.FirebaseAuth>(),
        ));
    gh.factory<_i232.AuthBloc>(() => _i232.AuthBloc(
          gh<_i714.AuthRepository>(),
          gh<_i514.StorageService>(),
        ));
    return this;
  }
}

class _$FirebaseModule extends _i959.FirebaseModule {}
