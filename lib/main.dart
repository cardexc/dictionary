import 'package:dictionary/domain/settings/settings_model.dart';
import 'package:dictionary/domain/speech/i_speech_repository.dart';
import 'package:dictionary/infrastructure/database/database_helper.dart';
import 'package:dictionary/infrastructure/helpers/asset_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'application/main/main_page_cubit.dart';
import 'infrastructure/config/app_colors.dart';
import 'infrastructure/config/const.dart';
import 'infrastructure/config/go_router.dart';
import 'infrastructure/helpers/utils.dart';
import 'injection.dart';

GlobalKey globalKey = GlobalKey();

void main() async {

  configureInjection(Environment.prod);

  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  prepareDeviceInformation();


  await getIt<AssetHelper>().init();
  getIt<ISpeechRepository>().init();
  await getIt<DatabaseHelper>().init();


  var supportDir = await getApplicationSupportDirectory();
  Hive.init(supportDir.path);
  Hive.openBox(HiveConst.boxName);

  runApp(
    EasyLocalization(
        supportedLocales: const [ukLocale, Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: ukLocale,
        startLocale: ukLocale,
        child: BlocProvider<MainPageCubit>(
          create: (context) => getIt<MainPageCubit>(),
          child: const MyApp(),
        )),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      /*localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],*/
      routerConfig: router,
      theme: const CupertinoThemeData(
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        brightness: Brightness.light,
        primaryColor: CupertinoColors.label,
        barBackgroundColor: AppColors.appYellow,
        primaryContrastingColor: AppColors.contrastingColor,
        textTheme: CupertinoTextThemeData(
          textStyle: TextStyle(color: CupertinoColors.label),
          actionTextStyle: TextStyle(color: CupertinoColors.activeGreen),
          tabLabelTextStyle: TextStyle(color: CupertinoColors.activeGreen),
          pickerTextStyle: TextStyle(color: CupertinoColors.activeGreen),
          dateTimePickerTextStyle: TextStyle(color: CupertinoColors.activeGreen),
          navActionTextStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          navTitleTextStyle: TextStyle(color: AppColors.appBlack, fontWeight: FontWeight.w600, fontSize: 16),
          navLargeTitleTextStyle: TextStyle(color: AppColors.appYellow, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
