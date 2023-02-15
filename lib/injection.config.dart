// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dictionary/application/main/main_page_cubit.dart' as _i6;
import 'package:dictionary/domain/lesson/i_lesson_repository.dart' as _i4;
import 'package:dictionary/domain/speech/i_speech_repository.dart' as _i8;
import 'package:dictionary/infrastructure/helpers/asset_helper.dart' as _i3;
import 'package:dictionary/infrastructure/helpers/text_to_speech/text_to_speech_api.dart'
    as _i7;
import 'package:dictionary/infrastructure/lesson/lesson_repository.dart' as _i5;
import 'package:dictionary/infrastructure/speech/speech_repository.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
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
    gh.lazySingleton<_i3.AssetHelper>(() => _i3.AssetHelper());
    gh.lazySingleton<_i4.ILessonRepository>(() => _i5.LessonRepositoryImpl());
    gh.factory<_i6.MainPageCubit>(() => _i6.MainPageCubit());
    gh.lazySingleton<_i7.TextToSpeechAPI>(
        () => _i7.TextToSpeechAPI(gh<_i3.AssetHelper>()));
    gh.lazySingleton<_i8.ISpeechRepository>(
        () => _i9.SpeechRepositoryImpl(gh<_i7.TextToSpeechAPI>()));
    return this;
  }
}
