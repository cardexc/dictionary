import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'application/main/main_page_cubit.dart';
import 'infrastructure/config/app_colors.dart';
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

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('uk'), Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: const Locale('uk'),
        startLocale: const Locale('uk'),
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
        primaryColor: AppColors.appYellow,
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
