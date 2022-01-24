import 'package:flutter/material.dart';
import 'package:flutter_rounded_progress_bar/flutter_icon_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/flutter_rounded_progress_bar.dart';
import 'package:flutter_rounded_progress_bar/rounded_progress_bar_style.dart';
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
          _ProgressBar(
            screen: screen,
            percentage: _percentage,
            type: title,
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

class _ProgressBar extends StatelessWidget {
  const _ProgressBar({
    Key? key,
    required this.screen,
    required int percentage,
    required this.type,
  })  : _percentage = percentage,
        super(key: key);

  final Size screen;
  final int _percentage;
  final String type;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screen.width * 0.8,
      child: RoundedProgressBar(
        height: 25,
        style: RoundedProgressBarStyle(
          backgroundProgress: kBackgroundColor,
          colorProgress: kAccentColor,
          colorProgressDark: kExtraColor,
          borderWidth: 0,
        ),
        borderRadius: BorderRadius.circular(24),
        percent: _percentage.toDouble(),
        childCenter: Icon(
          type == "Movies" ? Icons.movie_creation : Icons.menu_book,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
