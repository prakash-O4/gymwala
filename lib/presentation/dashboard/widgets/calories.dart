import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class CaloriesWidget extends StatelessWidget {
  const CaloriesWidget({super.key});

  LinearGradient generateGradient() {
    return const LinearGradient(
      colors: [Colors.green, Colors.blue],
    );
  }

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
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          popinsText(
            text: "Calories",
            style: const TextStyle(
              color: Color(0xFF1D242A),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 4),
          popinsText(
            text: "760 kCal",
            style: const TextStyle(
              color: Color(0xFF92A3FD),
              fontWeight: FontWeight.w500,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Transform.rotate(
                angle: -35,
                child: const SizedBox(
                  height: 86,
                  width: 86,
                  child: CircularProgressIndicator(
                    value: 0.6,
                    color: Color(0xFF92A3FD),
                    backgroundColor: Color(0xFFF7F8F8),
                    strokeWidth: 8,
                    strokeCap: StrokeCap.round,
                  ),
                ),
              ),
              Positioned(
                top: 9,
                left: 9,
                child: Center(
                  child: Container(
                    height: 68,
                    width: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF95ADFE).withOpacity(0.3),
                          blurRadius: 22,
                          offset: const Offset(0, 10),
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF92A3FD),
                          Color(0xFF9DCEFF),
                        ],
                      ),
                    ),
                    child: Center(
                      child: popinsText(
                        text: '230 Kcal left',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.white,
                        ),
                        align: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
