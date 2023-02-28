
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/auth_bloc.dart';
import '../../infrastructure/config/app_colors.dart';
import '../../infrastructure/config/go_router.dart';
import '../../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getIt.getAsync<AuthBloc>(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {

          AuthBloc authBloc = snapshot.data;

          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => authBloc..add(const AuthEvent.firstUseRequested())),
            ],
            child: CupertinoApp.router(
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
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
            ),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
