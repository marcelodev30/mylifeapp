import 'package:get_it/get_it.dart';
import 'package:mylifeapp/core/config/constants/string_config.dart';
import 'package:mylifeapp/core/config/gorouter_config.dart';
import 'package:mylifeapp/core/l10n/app_localizations.dart';

final GetIt getIt = GetIt.instance;

void setupInjector() {
  getIt.registerFactory<AppLocalizations>(() {
    final context = AppRouter.navigatorKey.currentContext;
    if (context == null) {
      throw Exception(AppString.erroBuildContext);
    }
    return AppLocalizations.of(context)!;
  });
}
