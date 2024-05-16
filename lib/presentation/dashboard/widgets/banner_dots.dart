import 'package:flutter/material.dart';

class BannerDots extends StatelessWidget {
  final Size size;
  final Color? color;
  const BannerDots({super.key, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(
        color: color ?? Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
    );
  }
}
