import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/common_appbar.dart';
import 'package:gymwala/presentation/common/widgets/gradient_button.dart';
import 'package:gymwala/presentation/workout/congratulations_screen.dart';
import 'package:gymwala/presentation/workout/widget/calorie_tile.dart';
import 'package:gymwala/presentation/workout/widget/workout_timeline.dart';

class StartWorkout extends StatelessWidget {
  const StartWorkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonAppBar(title: ''),
                const SizedBox(height: 10),
                SvgPicture.asset(
                  SvgPath.detailsBg1,
                  width: MediaQuery.sizeOf(context).width,
                ),
                const SizedBox(height: 30),
                popinsText(
                  text: "Jumping Jack",
                  style: const TextStyle(
                    color: Color(0xFF1D1617),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                popinsText(
                  text: "Easy | 390 Calories Burn",
                  style: const TextStyle(
                    color: Color(0xFF7B6F72),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 15),
                popinsText(
                  text: "Descriptions",
                  style: const TextStyle(
                    color: Color(0xFF1D1617),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                popinsText(
                  text:
                      "A jumping jack, also known as a star jump and called a side-straddle hop in the US military, is a physical jumping exercise performed by jumping to a position with the legs spread wide Read More...",
                  style: const TextStyle(
                    color: Color(0xFF7B6F72),
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    popinsText(
                      text: "How To Do It",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    popinsText(
                      text: "See More",
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color(0xFFADA4A5),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const WorkoutTimeline(),
                const SizedBox(height: 20),
                popinsText(
                  text: "Custom Repetitions",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                const CalorieTile(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: GradientButton(
          text: 'Save',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const CongratulationScreen();
            }));
          },
        ),
      ),
    );
  }
}
