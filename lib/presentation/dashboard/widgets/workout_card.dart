import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class WorkOutCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double value;
  final String path;
  const WorkOutCard(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.value,
      required this.path});

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
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: const BoxDecoration(
              color: Color(0xFFF7E2F3),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: SvgPicture.asset(path),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        popinsText(
                          text: title,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 5),
                        popinsText(
                          text: subtitle,
                          style: const TextStyle(
                              fontSize: 13, color: Color(0xFFA4A9AD)),
                        ),
                      ],
                    ),
                    Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFFC58BF2)),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 14,
                          color: Color(0xFFC58BF2),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 20,
                  width: MediaQuery.sizeOf(context).width,
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
                          width: MediaQuery.sizeOf(context).width * value,
                          height: 20,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
