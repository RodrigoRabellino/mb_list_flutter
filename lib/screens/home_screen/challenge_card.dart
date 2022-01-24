import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import '../../constants.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    Key? key,
    required this.screen,
    required this.title,
    required this.count,
    required this.expected,
  }) : super(key: key);

  final Size screen;
  final String title;
  final int count;
  final int expected;

  @override
  Widget build(BuildContext context) {
    final int _percentage = ((count * 100) / expected).round();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      height: screen.height * 0.2,
      width: screen.width * 0.9,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: kAccentColor.withOpacity(0.7),
            offset: const Offset(4, 5),
            blurRadius: 7,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Challenge $title " + _percentage.toString() + "%",
            style: const TextStyle(
                color: kTextColor, fontWeight: FontWeight.w600, fontSize: 25),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            width: screen.width * 0.8,
            child: StepProgressIndicator(
              totalSteps: expected,
              currentStep: count,
              selectedColor: kAccentColor,
              unselectedColor: kExtraColor.withOpacity(0.6),
              size: 15,
              roundedEdges: const Radius.circular(100),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            (title == "Movies" ? "Views: " : "Read: ") + count.toString(),
            style: const TextStyle(
                color: kTextColor, fontWeight: FontWeight.w600, fontSize: 15),
          ),
          Text(
            "Expected: " + expected.toString(),
            style: const TextStyle(
                color: kTextColor, fontWeight: FontWeight.w600, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
