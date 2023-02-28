import 'package:dictionary/domain/speech/i_speech_repository.dart';
import 'package:dictionary/infrastructure/database/database_helper.dart';
import 'package:dictionary/infrastructure/helpers/asset_helper.dart';
import 'package:dictionary/presentation/core/app_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';

import 'application/main/main_page_cubit.dart';
import 'firebase_options.dart';
import 'infrastructure/config/const.dart';
import 'infrastructure/helpers/utils.dart';
import 'injection.dart';

// GlobalKey globalKey = GlobalKey();

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  Hive.init((await getApplicationSupportDirectory()).path);

  configureInjection(Environment.prod);

  await EasyLocalization.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

  prepareDeviceInformation();

  await getIt<AssetHelper>().init();
  getIt<ISpeechRepository>().init();
  await getIt<DatabaseHelper>().init();



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
    return const AppWidget();
  }
}
