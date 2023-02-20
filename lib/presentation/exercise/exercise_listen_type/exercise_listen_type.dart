import 'package:dictionary/application/exercise/listen_type/exercise_listen_type_bloc.dart';
import 'package:dictionary/domain/core/extensions.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/exercise/form/exercise_form_bloc.dart';
import '../../../../domain/lesson/language_direction.dart';
import '../../../../domain/word/word_model.dart';
import '../../../domain/exercise/exercise_types.dart';
import '../../widgets/buttons/yellow_elevated_button.dart';
import '../../widgets/exercise_correct_word_widget.dart';
import '../../widgets/exercise_header_row.dart';
import '../../widgets/widgets.dart';
import '../exercise_finish_widget.dart';

class ExerciseListenType extends StatelessWidget {
  final List<WordModel> words;

  const ExerciseListenType({
    Key? key,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseListenTypeBloc>(
      create: (context) => ExerciseListenTypeBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: LanguageDirection.plToUa(),
        words: words,
      ),
      child: _ExerciseListenTypeBody(),
    );
  }
}

class _ExerciseListenTypeBody extends StatelessWidget {
  final FocusNode _node = FocusNode();

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ExerciseListenTypeBloc>();

    return BlocSelector<ExerciseListenTypeBloc, ExerciseListenTypeState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished
            ? ExerciseFinishWidget(
                totalWords: bloc.words.length,
                wordsToBeRepeated: bloc.wordsToBeRepeated.length,
                type: ExerciseType.listenType,
              )
            : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          BlocBuilder<ExerciseListenTypeBloc, ExerciseListenTypeState>(
            builder: (context, state) {
              var wordModel = state.words[state.position];
              var languageDirection = state.languageDirection;
              var tController = TextEditingController()..text = state.constructedWord;
              BoxDecoration boxDecoration = defaultCupertinoBoxDecoration;

              var isError = false;
              if (state.showNextButton) {
                boxDecoration = boxDecoration.copyWith(color: state.wordIsCorrect ? Exercises.exerciseSuccessColor : Exercises.exerciseErrorColor);
                isError = !state.wordIsCorrect;
              } else {
                _node.requestFocus();
              }

              return Column(
                children: [
                  smallPadding.ph,
                  const Text("listen_type_exercise_description").tr(),

                  /*Header*/
                  ExerciseHeaderRow(
                    wordModel: wordModel,
                    languageDirection: languageDirection,
                    showSound: state.showNextButton,
                    bloorBack: state.showNextButton ? false : true,
                    usePadding: true,
                    playOnBuild: true,
                  ),

                  /*Constructed word*/
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                    child: CupertinoTextField(
                      focusNode: _node,
                      decoration: boxDecoration,
                      enableSuggestions: false,
                      controller: tController,
                      padding: const EdgeInsets.all(mediumPadding),
                      style: Exercises.exerciseConstructedWordTextStyle,
                      maxLines: 4,
                      minLines: 1,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (value) {
                        context.read<ExerciseListenTypeBloc>().add(WordSubmitted(value));
                        _node.unfocus();
                      },
                      autocorrect: false,
                    ),
                  ),
                  if (isError)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                      child: ExerciseCorrectWordWidget(
                        languageDirection: languageDirection,
                        wordModel: wordModel,
                      ),
                    )
                ],
              );
            },
          ),
          BlocSelector<ExerciseListenTypeBloc, ExerciseListenTypeState, bool>(
            selector: (state) {
              return state.showNextButton;
            },
            builder: (context, showNextButton) {
              return AnimatedOpacity(
                duration: animationDuration,
                opacity: showNextButton ? 1 : 0,
                child: YellowElevatedButton(
                    titleRes: "next",
                    onPressed: () {
                      if (showNextButton) {
                        context.read<ExerciseListenTypeBloc>().add(const NextWord());
                      }
                    }),
              );
            },
          ),
        ],
      ),
    );
  }
}
