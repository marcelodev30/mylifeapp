import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:mylifeapp/core/config/constants/string_config.dart';
import 'package:mylifeapp/core/config/gorouter_config.dart';
import 'package:mylifeapp/core/interfaces/auth_repository_interface.dart';
import 'package:mylifeapp/core/locale/app_localizations.dart';
import 'package:mylifeapp/ui/controllers/auth_controller.dart';
import 'package:mylifeapp/data/repository/auth_repository.dart';

final GetIt getIt = GetIt.instance;

void setupInjector() {
  getIt.registerLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);

  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryFirebase(getIt<FirebaseAuth>()),
  );

  getIt.registerFactory<AuthController>(
    () => AuthController(getIt<AuthRepository>()),
  );

  getIt.registerFactory<AppLocalizations>(() {
    final context = AppRouter.navigatorKey.currentContext;
    if (context == null) {
      debugPrint(AppStrings.erroBuildContext);
      throw Exception(AppStrings.erroBuildContext);
    }
    return AppLocalizations.of(context)!;
  });
}
