import 'package:flutter/material.dart';
import 'package:survey_kit/survey_kit.dart';

class SurveyPage extends StatelessWidget {
  const SurveyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SurveyKit(
          task: task,
          onResult: (SurveyResult) {},
          themeData: Theme.of(context).copyWith(
              colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.blue,
              ).copyWith(onPrimary: Colors.blue),
              primaryColor: Colors.blue,
              backgroundColor: Colors.white,
              appBarTheme:
                  const AppBarTheme(color: Colors.white, elevation: 0),
          ),
        ),
      ),
    );
  }
}

var task = NavigableTask(steps: [
  InstructionStep(
      title: "Welcome to the survey!",
      text: "Get ready for some super fun questions",
      buttonText: 'Let\'s Go!'),
  QuestionStep(
      answerFormat: IntegerAnswerFormat(hint: "Please enter your age")),
  QuestionStep(
      title: "Hello",
      text: "Are you single?",
      answerFormat:
          BooleanAnswerFormat(positiveAnswer: 'Yes', negativeAnswer: 'No')),
  QuestionStep(
      title: 'Known allergies',
      text: 'Do you have any allergies that we should be aware of?',
      isOptional: false,
      answerFormat: MultipleChoiceAnswerFormat(
        textChoices: [
          TextChoice(text: 'Penicillin', value: 'Penicillin'),
          TextChoice(text: 'Latex', value: 'Latex'),
          TextChoice(text: 'Pet', value: 'Pet'),
          TextChoice(text: 'Pollen', value: 'Pollen'),
        ],
      ),
  ),
  QuestionStep(
    title: 'When did you wake up?',
    answerFormat: TimeAnswerFormat(
      defaultValue: TimeOfDay(
        hour: 12,
        minute: 0,
      ),
    ),
  ),
  QuestionStep(
    title: 'When was your last holiday?',
    answerFormat: DateAnswerFormat(
      minDate: DateTime.utc(1970),
      defaultDate: DateTime.now(),
      maxDate: DateTime.now(),
    ),
  ),
]);
