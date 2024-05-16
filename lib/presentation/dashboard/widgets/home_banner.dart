import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/dashboard/widgets/banner_dots.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(22),
        ),
        gradient: LinearGradient(
          colors: [
            Color(0xFF9DCEFF),
            Color(0xFF92A3FD),
          ],
        ),
      ),
      child: Stack(
        children: [
          const Positioned(
            top: 18,
            left: 105,
            child: BannerDots(
              size: Size(10, 10),
            ),
          ),
          const Positioned(
            top: 18,
            right: 30,
            child: BannerDots(
              size: Size(88, 88),
              color: Colors.white,
            ),
          ),
          Positioned(
            top: -10,
            right: -10,
            child: SvgPicture.asset(SvgPath.pei),
          ),
          const Positioned(
            top: 32,
            right: 145,
            child: BannerDots(
              size: Size(10, 10),
            ),
          ),
          const Positioned(
            bottom: 18,
            right: 105,
            child: BannerDots(
              size: Size(10, 10),
            ),
          ),
          const Positioned(
            bottom: -8,
            right: -8,
            child: BannerDots(
              size: Size(70, 70),
            ),
          ),
          const Positioned(
            bottom: -28,
            left: -22,
            child: BannerDots(
              size: Size(70, 70),
            ),
          ),
          const Positioned(
            bottom: 32,
            left: 145,
            child: BannerDots(
              size: Size(10, 10),
            ),
          ),
          Positioned(
            top: 26,
            left: 20,
            child: popinsText(
              text: "BMI(Body Mass Index)",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Positioned(
            top: 52,
            left: 20,
            child: popinsText(
              text: "You have a normal weight",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
          ),
          Positioned(
            bottom: 26,
            left: 20,
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(99)),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFEEA4CE),
                    Color(0xFFC58BF2),
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
                  onPressed: () {},
                  child: popinsText(
                      text: "View More",
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
