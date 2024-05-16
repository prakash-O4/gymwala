import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/workout/workout_details_screen.dart';

class TrainingTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String path;
  const TrainingTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return const WorkoutDetailsScreen();
          },
        ));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
          gradient: LinearGradient(
            colors: [
              const Color(0xFF9DCEFF).withOpacity(0.2),
              const Color(0xFF92A3FD).withOpacity(0.2),
            ],
          ),
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                popinsText(
                  text: title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1617),
                  ),
                ),
                const SizedBox(height: 4),
                popinsText(
                  text: subtitle,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Color(0xFF7B6F72),
                  ),
                ),
                const SizedBox(height: 12),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      )),
                  onPressed: () {},
                  child: popinsText(
                    text: 'View More',
                    style: const TextStyle(
                      color: Color(0xFF92A3FD),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            SvgPicture.asset(path),
          ],
        ),
      ),
    );
  }
}
