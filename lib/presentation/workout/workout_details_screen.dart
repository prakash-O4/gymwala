import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/common_appbar.dart';
import 'package:gymwala/presentation/common/widgets/gradient_button.dart';
import 'package:gymwala/presentation/workout/start_workout_screen.dart';
import 'package:gymwala/presentation/workout/widget/need_tile.dart';
import 'package:gymwala/presentation/workout/widget/scheduling_tile.dart';
import 'package:gymwala/presentation/workout/widget/set_tile.dart';

class WorkoutDetailsScreen extends StatelessWidget {
  const WorkoutDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF9AC4FE),
                    Color(0xFF93A6FD),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CommonAppBar(
                title: '',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SvgPicture.asset(
                SvgPath.detailsBg,
                width: MediaQuery.sizeOf(context).width,
              ),
            ),
            Positioned(
              top: MediaQuery.sizeOf(context).height * 0.28,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          height: 5,
                          width: 65,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Color(0xFFDBDBDB),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              popinsText(
                                text: "Fullbody Workout",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1D1617),
                                ),
                              ),
                              popinsText(
                                text:
                                    "11 Exercises | 32mins | 320 Calories Burn",
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF7B6F72),
                                ),
                              )
                            ],
                          ),
                          const Spacer(),
                          SvgPicture.asset(SvgPath.heart),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SchedulingTile(
                        color: [
                          const Color(0xFF92A3FD).withOpacity(0.2),
                          const Color(0xFF9DCEFF).withOpacity(0.2)
                        ],
                        path: SvgPath.calendar,
                        title: "Schedule Workout",
                        time: "5/27, 09:00 AM",
                      ),
                      const SizedBox(height: 15),
                      SchedulingTile(
                        color: [
                          const Color(0xFFC58BF2).withOpacity(0.2),
                          const Color(0xFFEEA4CE).withOpacity(0.2)
                        ],
                        path: SvgPath.difficulty,
                        title: "Difficulity",
                        time: "Beginner",
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          popinsText(
                            text: "You'll Need",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          popinsText(
                            text: "5 items",
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFFADA4A5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            NeedingTile(
                              path: SvgPath.dumbell,
                              title: 'Barbell',
                            ),
                            SizedBox(width: 10),
                            NeedingTile(
                              path: SvgPath.skipping,
                              title: 'Skipping Rope',
                            ),
                            SizedBox(width: 10),
                            NeedingTile(
                              path: SvgPath.bottle,
                              title: 'Bottle 1 liter',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          popinsText(
                            text: "Exercise",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          popinsText(
                            text: "3 Sets",
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFFADA4A5),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      popinsText(
                        text: "Set 1",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1D1617)),
                      ),
                      const SizedBox(height: 15),
                      ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const SetTile(
                            path: SvgPath.set1,
                            title: "Warm up",
                            subtitle: "05:00",
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      popinsText(
                        text: "Set 2",
                        style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF1D1617)),
                      ),
                      const SizedBox(height: 15),
                      ListView.builder(
                        itemCount: 6,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return const SetTile(
                            path: SvgPath.set1,
                            title: "Push up",
                            subtitle: "00:50",
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              right: 20,
              child: GradientButton(
                text: 'Start Workout',
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const StartWorkout();
                    },
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
