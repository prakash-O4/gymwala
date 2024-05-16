import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class CommonAppBar extends StatelessWidget {
  final String title;
  final Color? color;
  final bool pop;
  const CommonAppBar({
    super.key,
    required this.title,
    this.color,
    this.pop = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            if (pop) Navigator.of(context).pop();
          },
          child: Container(
            decoration: BoxDecoration(
              color: color ?? const Color(0xFFF7F8F8),
              borderRadius: const BorderRadius.all(
                Radius.circular(8),
              ),
            ),
            padding: const EdgeInsets.all(12),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 20,
            ),
          ),
        ),
        popinsText(
            text: title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: color,
            )),
        Container(
          decoration: BoxDecoration(
            color: color ?? const Color(0xFFF7F8F8),
            borderRadius: const BorderRadius.all(
              Radius.circular(8),
            ),
          ),
          padding: const EdgeInsets.all(12),
          child: const Icon(
            Icons.more_horiz,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
