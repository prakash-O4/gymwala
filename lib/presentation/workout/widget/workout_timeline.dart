import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WorkoutTimeline extends StatelessWidget {
  const WorkoutTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return TimelineTile(
            alignment: TimelineAlign.manual,
            isFirst: index == 0,
            isLast: index == 3,
            lineXY: 0.1,
            indicatorStyle: IndicatorStyle(
              indicatorXY: 0.2,
              drawGap: true,
              width: 30,
              height: 30,
              padding: const EdgeInsets.only(right: 8),
              indicator: Container(
                height: 24,
                width: 24,
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.2,
                    color: const Color(0xFFC58BF2),
                  ),
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFC58BF2),
                        Color(0xFFEEA4CE),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            beforeLineStyle: const LineStyle(
              color: Color(0xFFC58BF2),
              thickness: 1,
            ),
            afterLineStyle: const LineStyle(
              color: Color(0xFFC58BF2),
              thickness: 1,
            ),
            endChild: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                popinsText(
                  text: "Spread Your Arms",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF1D1617),
                  ),
                ),
                const SizedBox(height: 6),
                popinsText(
                  text:
                      "To make the gestures feel more relaxed, stretch your arms as you start this movement. No bending of hands.",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF7B6F72),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
            startChild: Container(
              alignment: const Alignment(-1.20, -0.80),
              child: popinsText(
                  text: '01',
                  style: const TextStyle(
                    color: Color(0xFFC58BF2),
                  )),
            ),
          );
        },
      ),
    );
  }
}
