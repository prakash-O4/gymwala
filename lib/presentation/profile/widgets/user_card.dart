import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/profile/widgets/body_detail_widget.dart';
import 'package:gymwala/presentation/profile/widgets/profile_card.dart';

class UserCardWidget extends StatelessWidget {
  const UserCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              SvgPath.userProfile,
            ),
            const SizedBox(width: 20),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                popinsText(
                  text: "Sandhya",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(width: 3),
                popinsText(
                  text: "Lose a Fat Program",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Color(0xFF7B6F72),
                  ),
                )
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 43,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF9DCEFF),
                      Color(0xFF92A3FD),
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
                    onPressed: null,
                    child: popinsText(
                        text: "Edit",
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 30),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyDetailWidget(title: '180cm', subtitle: 'Height'),
            BodyDetailWidget(title: '65kg', subtitle: 'Weight'),
            BodyDetailWidget(title: '22yo', subtitle: 'Age'),
          ],
        ),
        const SizedBox(height: 30),
        const ProfileCardWidget(),
      ],
    );
  }
}
