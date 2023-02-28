// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dictionary/application/auth/auth_bloc.dart' as _i18;
import 'package:dictionary/application/main/main_page_cubit.dart' as _i16;
import 'package:dictionary/application/settings/settings_cubit.dart' as _i21;
import 'package:dictionary/domain/auth/i_auth_facade.dart' as _i8;
import 'package:dictionary/domain/lesson/i_lesson_repository.dart' as _i10;
import 'package:dictionary/domain/speech/i_speech_repository.dart' as _i19;
import 'package:dictionary/domain/words/i_words_repository.dart' as _i14;
import 'package:dictionary/infrastructure/auth/firebase_auth_facade.dart'
    as _i9;
import 'package:dictionary/infrastructure/core/firebase_injectable_module.dart'
    as _i23;
import 'package:dictionary/infrastructure/core/misc_injectable_module.dart'
    as _i22;
import 'package:dictionary/infrastructure/database/database_helper.dart' as _i5;
import 'package:dictionary/infrastructure/helpers/asset_helper.dart' as _i3;
import 'package:dictionary/infrastructure/helpers/text_to_speech/text_to_speech_api.dart'
    as _i17;
import 'package:dictionary/infrastructure/lessons/lesson_repository.dart'
    as _i11;
import 'package:dictionary/infrastructure/speech/speech_repository.dart'
    as _i20;
import 'package:dictionary/infrastructure/words/data_sources/local/i_words_local_data_source.dart'
    as _i12;
import 'package:dictionary/infrastructure/words/data_sources/local/words_local_data_source_impl.dart'
    as _i13;
import 'package:dictionary/infrastructure/words/repositories/words_repository.dart'
    as _i15;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final miscInjectableModule = _$MiscInjectableModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.AssetHelper>(() => _i3.AssetHelper());
    gh.singletonAsync<_i4.Box<dynamic>>(() => miscInjectableModule.box());
    gh.lazySingleton<_i5.DatabaseHelper>(
        () => _i5.DatabaseHelper(gh<_i3.AssetHelper>()));
    gh.lazySingleton<_i6.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i7.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
          gh<_i6.FirebaseAuth>(),
          gh<_i7.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i10.ILessonRepository>(() => _i11.LessonRepositoryImpl());
    gh.lazySingleton<_i12.IWordsLocalDataSource>(
        () => _i13.WordsLocalDataSourceImpl(gh<_i5.DatabaseHelper>()));
    gh.lazySingleton<_i14.IWordsRepository>(() => _i15.WordsRepository(
        localDataSource: gh<_i12.IWordsLocalDataSource>()));
    gh.factory<_i16.MainPageCubit>(() => _i16.MainPageCubit());
    gh.lazySingleton<_i17.TextToSpeechAPI>(
        () => _i17.TextToSpeechAPI(gh<_i3.AssetHelper>()));
    gh.singletonAsync<_i18.AuthBloc>(() async => _i18.AuthBloc(
          gh<_i8.IAuthFacade>(),
          await getAsync<_i4.Box<dynamic>>(),
        ));
    gh.lazySingleton<_i19.ISpeechRepository>(
        () => _i20.SpeechRepositoryImpl(gh<_i17.TextToSpeechAPI>()));
    gh.factoryAsync<_i21.SettingsCubit>(() async => _i21.SettingsCubit(
          await getAsync<_i4.Box<dynamic>>(),
          await getAsync<_i18.AuthBloc>(),
        ));
    return this;
  }
}

class _$MiscInjectableModule extends _i22.MiscInjectableModule {}

class _$FirebaseInjectableModule extends _i23.FirebaseInjectableModule {}
