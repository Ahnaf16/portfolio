import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../const/colors.dart';

class SkillIndicator extends StatelessWidget {
  const SkillIndicator({
    Key? key,
    required this.textTheme,
    required this.lebel,
    required this.value,
    this.leading,
  }) : super(key: key);

  final TextTheme textTheme;
  final String lebel;
  final int value;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              leading ?? Container(),
              const SizedBox(width: 10),
              Text(
                lebel,
                style: textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 10),
          StepProgressIndicator(
            totalSteps: 6,
            currentStep: value,
            size: 10,
            selectedColor: KColor.mainColor,
            roundedEdges: const Radius.circular(10),
          ),
        ],
      ),
    );
  }
}
