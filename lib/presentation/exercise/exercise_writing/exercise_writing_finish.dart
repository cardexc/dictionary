import 'package:dictionary/application/exercise/exercise_writing/exercise_writing_bloc.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/presentation/widgets/buttons/yellow_elevated_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExerciseWritingFinish extends StatelessWidget {
  const ExerciseWritingFinish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExerciseWritingBloc, ExerciseWritingState>(
      builder: (context, state) {
        return Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "you_have_done_it",
                style: TextStyle(fontSize: 22),
              ).tr(),
              const SizedBox(height: mediumPadding),
              const Text(
                "you_have_learnt",
                style: TextStyle(fontSize: 16),
              ).plural(state.words.length),
              const SizedBox(height: largePadding),
              YellowElevatedButton(onPressed: () {}, titleRes: "lets_move_on".tr()),
              const SizedBox(height: largePadding * 5),
            ],
          ),
        );
      },
    );
  }
}
