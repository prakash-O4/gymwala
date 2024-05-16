import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';

class SocialAuthWidget extends StatelessWidget {
  const SocialAuthWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFDDDADA),
              width: 0.8,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: SvgPicture.asset(
            SvgPath.googleIcon,
            height: 20,
            width: 20,
          ),
        ),
        const SizedBox(width: 30),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFDDDADA),
              width: 0.8,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(14),
            ),
          ),
          child: SvgPicture.asset(
            SvgPath.facebookIcon,
            height: 20,
            width: 20,
          ),
        ),
      ],
    );
  }
}
