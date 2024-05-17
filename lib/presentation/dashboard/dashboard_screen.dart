import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/dashboard/widgets/calories.dart';
import 'package:gymwala/presentation/dashboard/widgets/heart_rate_widget.dart';
import 'package:gymwala/presentation/dashboard/widgets/home_banner.dart';
import 'package:gymwala/presentation/dashboard/widgets/home_intro_widget.dart';
import 'package:gymwala/presentation/dashboard/widgets/sleep_widget.dart';
import 'package:gymwala/presentation/dashboard/widgets/target_widget.dart';
import 'package:gymwala/presentation/dashboard/widgets/water_intake.dart';
import 'package:gymwala/presentation/dashboard/widgets/workout_card.dart';
import 'package:gymwala/presentation/profile/profile_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: currentIndex == 4
            ? const ProfileScreen()
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HomeIntroWidget(),
                      const SizedBox(height: 30),
                      const HomeBannerWidget(),
                      const SizedBox(height: 30),
                      const TargetWidget(),
                      const SizedBox(height: 30),
                      popinsText(
                        text: "Activity Status",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 15),
                      const HeartRateWidget(),
                      const SizedBox(height: 15),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WaterIntakeWidget(),
                          SizedBox(width: 10),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SleepWidget(),
                              SizedBox(height: 10),
                              CaloriesWidget(),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          popinsText(
                            text: "Workout Progress",
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 43,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF9DCEFF),
                                    Color(0xFF92A3FD),
                                  ],
                                ),
                              ),
                              clipBehavior: Clip.hardEdge,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent),
                                  onPressed: null,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      popinsText(
                                        text: "Weekly",
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Colors.white,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        SvgPath.workoutChart,
                        width: MediaQuery.sizeOf(context).width,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          popinsText(
                            text: "Latest Workout",
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
                      const SizedBox(width: 10),
                      const WorkOutCard(
                        title: "Fullbody workout",
                        subtitle: "180 Calories Burn | 20 minutes",
                        value: 0.3,
                        path: SvgPath.workout1,
                      ),
                      const SizedBox(width: 10),
                      const WorkOutCard(
                        title: "Lowbody workout",
                        subtitle: "200 Calories Burn | 30 minutes",
                        value: 0.4,
                        path: SvgPath.workout2,
                      ),
                      const SizedBox(width: 10),
                      const WorkOutCard(
                        title: "Ab workout",
                        subtitle: "120 Calories Burn | 10 minutes",
                        value: 0.2,
                        path: SvgPath.workout3,
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            colors: [
              Color(0xFF9DCEFF),
              Color(0xFF92A3FD),
            ],
          ),
        ),
        child: const Center(
          child: Icon(
            CupertinoIcons.search,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        enableFeedback: false,
        selectedLabelStyle: const TextStyle(
          fontSize: 16,
          color: Color(0xFFC58BF2),
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 2,
          color: Colors.transparent,
        ),
        onTap: (value) {
          if (value != 2) {
            setState(() {
              currentIndex = value;
            });
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.home,
              colorFilter: currentIndex == 0
                  ? const ColorFilter.mode(
                      Color(0xFFC58BF2),
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '•',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.chart,
              colorFilter: currentIndex == 1
                  ? const ColorFilter.mode(
                      Color(0xFFC58BF2),
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '•',
          ),
          const BottomNavigationBarItem(
            icon: SizedBox(),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.camera,
              colorFilter: currentIndex == 3
                  ? const ColorFilter.mode(
                      Color(0xFFC58BF2),
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '•',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              SvgPath.profile,
              colorFilter: currentIndex == 4
                  ? const ColorFilter.mode(
                      Color(0xFFC58BF2),
                      BlendMode.srcIn,
                    )
                  : null,
            ),
            label: '•',
          )
        ],
      ),
    );
  }
}
