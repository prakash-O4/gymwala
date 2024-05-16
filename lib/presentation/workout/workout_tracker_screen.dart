import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/common/widgets/common_appbar.dart';
import 'package:gymwala/presentation/dashboard/widgets/target_widget.dart';
import 'package:gymwala/presentation/workout/widget/training_tile.dart';
import 'package:gymwala/presentation/workout/widget/upcoming_tile.dart';

class WorkoutTrackerScreen extends StatelessWidget {
  const WorkoutTrackerScreen({super.key});

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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CommonAppBar(
                      title: 'Workout Tracker',
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset(
                      SvgPath.workoutChartLight,
                      width: MediaQuery.sizeOf(context).width,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Container(
                            height: 5,
                            width: 65,
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              color: Color(0xFFDBDBDB),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const TargetWidget(
                          title: "Daily Workout Schedule",
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            popinsText(
                              text: "Upcoming Workout",
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
                        const SizedBox(height: 16),
                        const UpcomingTile(
                          title: "Fullbody workout",
                          subtitle: "Today, 03:00pm",
                          initValue: true,
                          path: SvgPath.upcoming1,
                        ),
                        const SizedBox(height: 16),
                        const UpcomingTile(
                          title: "Fullbody workout",
                          subtitle: "Today, 03:00pm",
                          initValue: false,
                          path: SvgPath.upcoming2,
                        ),
                        const SizedBox(height: 20),
                        popinsText(
                          text: "What-Do-You-Want-to-Train",
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const TrainingTile(
                          title: "Fullbody Workout",
                          subtitle: "11 Exercises | 32mins",
                          path: SvgPath.train1,
                        ),
                        const SizedBox(height: 15),
                        const TrainingTile(
                          title: "Lowerbody Workout",
                          subtitle: "12 Exercises | 40mins",
                          path: SvgPath.train2,
                        ),
                        const SizedBox(height: 15),
                        const TrainingTile(
                          title: "Ab Workout",
                          subtitle: "14 Exercises | 20mins",
                          path: SvgPath.train3,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
