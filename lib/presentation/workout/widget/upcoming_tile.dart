import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';

class UpcomingTile extends StatefulWidget {
  final String title;
  final String subtitle;
  final bool initValue;
  final String path;
  const UpcomingTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.initValue, required this.path});

  @override
  State<UpcomingTile> createState() => _UpcomingTileState();
}

class _UpcomingTileState extends State<UpcomingTile> {
  bool status = true;
  @override
  void initState() {
    super.initState();
    status = widget.initValue;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1D1617).withOpacity(0.07),
            blurRadius: 40,
            spreadRadius: 0,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          SvgPicture.asset(widget.path),
          const SizedBox(width: 10),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              popinsText(
                text: widget.title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1D1617),
                ),
              ),
              const SizedBox(height: 4),
              popinsText(
                text: widget.subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color(0xFFADA4A5),
                ),
              ),
            ],
          ),
          const Spacer(),
          Switch.adaptive(
            value: status,
            activeColor: const Color(0xFFC58BF2),
            onChanged: (value) {
              setState(() {
                status = value;
              });
            },
          )
        ],
      ),
    );
  }
}
