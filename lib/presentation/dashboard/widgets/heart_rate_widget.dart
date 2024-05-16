import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class HeartRateWidget extends StatelessWidget {
  const HeartRateWidget({super.key});

  List<int> generateHeartRates(int count) {
    List<int> heartRates = [];
    final random = Random();

    for (int i = 0; i < count; i++) {
      int heartRate =
          60 + random.nextInt(40); // Healthy heart rate range (60-100 BPM)
      heartRates.add(heartRate);
    }

    return heartRates;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: MediaQuery.sizeOf(context).width,
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
      child: Stack(
        children: [
          Center(
            child: SvgPicture.asset(
              SvgPath.heartRate,
              width: MediaQuery.sizeOf(context).width,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Column(
              children: [
                popinsText(
                  text: "Heart Rate",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xFF1D1617)),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: Column(
              children: [
                popinsText(
                  text: "78 BPM",
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, color: Color(0xFF92A3FD)),
                ),
              ],
            ),
          )
        ],
      ),
      // Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: SfSparkLineChart(
      //     data: generateHeartRates(50),
      //     width: 1,
      //     axisLineColor: Colors.transparent,
      //     color: const Color(0xFF92A3FD),
      //   ),
      // ),
    );
  }
}
