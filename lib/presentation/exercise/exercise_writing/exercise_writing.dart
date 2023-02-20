import 'package:dictionary/application/exercise/exercise_writing/exercise_writing_bloc.dart';
import 'package:dictionary/infrastructure/config/const.dart';
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

class ExerciseWriting extends StatelessWidget {
  final LanguageDirection languageDirection;
  final List<WordModel> words;

  const ExerciseWriting({
    Key? key,
    required this.languageDirection,
    required this.words,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ExerciseWritingBloc>(
      create: (context) => ExerciseWritingBloc(
        formBloc: context.read<ExerciseFormBloc>(),
        languageDirection: languageDirection,
        words: words,
      ),
      child: _ExerciseWritingBody(),
    );
  }
}

class _ExerciseWritingBody extends StatelessWidget {
  final FocusNode _node = FocusNode();

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<ExerciseWritingBloc>();

    return BlocSelector<ExerciseWritingBloc, ExerciseWritingState, bool>(
      selector: (state) {
        return state.isFinished;
      },
      builder: (context, isFinished) {
        return isFinished
            ? ExerciseFinishWidget(
                totalWords: bloc.words.length,
                wordsToBeRepeated: bloc.wordsToBeRepeated.length,
                type: ExerciseType.writing,
              )
            : _buildExercise(context);
      },
    );
  }

  Widget _buildExercise(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Align(
              alignment: Alignment.topCenter,
              child: BlocBuilder<ExerciseWritingBloc, ExerciseWritingState>(
                builder: (context, state) {
                  var wordModel = state.words[state.position];
                  var languageDirection = state.languageDirection;

                  var tController = TextEditingController()..text = state.constructedWord;

                  BoxDecoration boxDecoration = defaultCupertinoBoxDecoration;

                  var isError = false;
                  if (state.showNextButton) {
                    boxDecoration =
                        boxDecoration.copyWith(color: state.wordIsCorrect ? Exercises.exerciseSuccessColor : Exercises.exerciseErrorColor);

                    isError = !state.wordIsCorrect;
                  } else {
                    _node.requestFocus();
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
                    child: Column(
                      children: [
                        /*Header*/
                        ExerciseHeaderRow(wordModel: wordModel, languageDirection: languageDirection, showSound: state.showNextButton),

                        /*Constructed word*/
                        CupertinoTextField(
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
                            context.read<ExerciseWritingBloc>().add(WordSubmitted(value));
                            _node.unfocus();
                          },
                        ),
                        if (isError)
                          ExerciseCorrectWordWidget(
                            languageDirection: languageDirection,
                            wordModel: wordModel,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          BlocSelector<ExerciseWritingBloc, ExerciseWritingState, bool>(
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
                        context.read<ExerciseWritingBloc>().add(const NextWord());
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
