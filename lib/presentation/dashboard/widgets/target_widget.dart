import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/workout/workout_tracker_screen.dart';

class TargetWidget extends StatelessWidget {
  final String? title;
  const TargetWidget({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (title == null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const WorkoutTrackerScreen();
              },
            ),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          gradient: LinearGradient(
            colors: [
              const Color(0xFF92A3FD).withOpacity(0.2),
              const Color(0xFF9DCEFF).withOpacity(0.2),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            popinsText(
              text: title ?? 'Today Target',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9DCEFF),
                      Color(0xFF92A3FD),
                    ],
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent),
                    onPressed: null,
                    child: popinsText(
                        text: "Check",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
