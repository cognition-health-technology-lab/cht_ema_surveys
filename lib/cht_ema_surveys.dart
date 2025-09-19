library cht_ema_surveys;

import 'package:flutter/material.dart';
import 'package:research_package/model.dart';
import 'package:research_package/ui.dart';

class SurveyPage extends StatelessWidget {
  SurveyPage({super.key});

  final RPOrderedTask task = RPOrderedTask(identifier: 'survey_task', steps: [
    RPInstructionStep(
        identifier: 'instruction_step',
        title: 'Welcome',
        text: 'This is an example of an EMA survey.'),
  ]);

  @override
  Widget build(BuildContext context) {
    // return const Scaffold();
    return RPUITask(task: task);
  }
}
