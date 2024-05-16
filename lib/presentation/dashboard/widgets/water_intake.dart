import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:timeline_tile/timeline_tile.dart';

class WaterIntakeWidget extends StatelessWidget {
  const WaterIntakeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              color: const Color(0xFF1D242A).withOpacity(0.05),
              blurRadius: 40,
              spreadRadius: 0,
              offset: const Offset(0, 10)),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 300,
            width: 20,
            decoration: const BoxDecoration(
              color: Color(0xFFF7F8F8),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 160,
                    width: 20,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFC58BF2),
                          Color(0xFFB4C0FE),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              popinsText(
                text: "Water Intake",
                style: const TextStyle(
                  color: Color(0xFF1D242A),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 4),
              popinsText(
                text: "4 Liters",
                style: const TextStyle(
                  color: Color(0xFF92A3FD),
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 10),
              popinsText(
                text: "Real Time Updates",
                style: const TextStyle(
                  color: Color(0xFF7B6F72),
                  fontSize: 11,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 230,
                width: 150,
                child: ListView.builder(
                  itemCount: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return TimelineTile(
                      alignment: TimelineAlign.start,
                      isFirst: index == 0,
                      isLast: index == 3,
                      indicatorStyle: const IndicatorStyle(
                        indicatorXY: 0.2,
                        drawGap: true,
                        width: 16,
                        height: 16,
                        color: Color(0xFFC58BF2),
                        padding: EdgeInsets.only(right: 8),
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
                            text: "6am - 8am",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFADA4A5),
                            ),
                          ),
                          const SizedBox(height: 6),
                          popinsText(
                            text: "600 ml",
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color(0xFFC58BF2),
                            ),
                          ),
                          const SizedBox(height: 12),
                        ],
                      ),
                      // startChild: Container(
                      //   color: Colors.amberAccent,
                      // ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
