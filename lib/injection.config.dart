// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dictionary/application/main/main_page_cubit.dart' as _i11;
import 'package:dictionary/domain/lesson/i_lesson_repository.dart' as _i5;
import 'package:dictionary/domain/speech/i_speech_repository.dart' as _i13;
import 'package:dictionary/domain/words/i_words_repository.dart' as _i9;
import 'package:dictionary/infrastructure/database/database_helper.dart' as _i4;
import 'package:dictionary/infrastructure/helpers/asset_helper.dart' as _i3;
import 'package:dictionary/infrastructure/helpers/text_to_speech/text_to_speech_api.dart'
    as _i12;
import 'package:dictionary/infrastructure/lessons/lesson_repository.dart'
    as _i6;
import 'package:dictionary/infrastructure/speech/speech_repository.dart'
    as _i14;
import 'package:dictionary/infrastructure/words/data_sources/local/i_words_local_data_source.dart'
    as _i7;
import 'package:dictionary/infrastructure/words/data_sources/local/words_local_data_source_impl.dart'
    as _i8;
import 'package:dictionary/infrastructure/words/repositories/words_repository.dart'
    as _i10;
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
    gh.lazySingleton<_i4.DatabaseHelper>(
        () => _i4.DatabaseHelper(gh<_i3.AssetHelper>()));
    gh.lazySingleton<_i5.ILessonRepository>(() => _i6.LessonRepositoryImpl());
    gh.lazySingleton<_i7.IWordsLocalDataSource>(
        () => _i8.WordsLocalDataSourceImpl(gh<_i4.DatabaseHelper>()));
    gh.lazySingleton<_i9.IWordsRepository>(() =>
        _i10.WordsRepository(localDataSource: gh<_i7.IWordsLocalDataSource>()));
    gh.factory<_i11.MainPageCubit>(() => _i11.MainPageCubit());
    gh.lazySingleton<_i12.TextToSpeechAPI>(
        () => _i12.TextToSpeechAPI(gh<_i3.AssetHelper>()));
    gh.lazySingleton<_i13.ISpeechRepository>(
        () => _i14.SpeechRepositoryImpl(gh<_i12.TextToSpeechAPI>()));
    return this;
  }
}
