import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymwala/presentation/common/constants/svg_path.dart';
import 'package:gymwala/presentation/common/style/poppins_text.dart';
import 'package:gymwala/presentation/profile/widgets/settings_row.dart';

class ProfileCardWidget extends StatefulWidget {
  const ProfileCardWidget({super.key});

  @override
  State<ProfileCardWidget> createState() => _ProfileCardWidgetState();
}

class _ProfileCardWidgetState extends State<ProfileCardWidget> {
  bool notificationStatus = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1D1617).withOpacity(0.07),
                offset: const Offset(0, 10),
                blurRadius: 40,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              popinsText(
                text: 'Account',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D1617),
                ),
              ),
              const SizedBox(height: 15),
              const SettingsRowWidget(
                  data: 'Personal Data', path: SvgPath.personal),
              const SizedBox(height: 16),
              const SettingsRowWidget(
                  data: 'Achievement', path: SvgPath.achievement),
              const SizedBox(height: 16),
              const SettingsRowWidget(
                  data: 'Activity History', path: SvgPath.activity),
              const SizedBox(height: 16),
              const SettingsRowWidget(
                  data: 'Workout Progress', path: SvgPath.workout),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1D1617).withOpacity(0.07),
                offset: const Offset(0, 10),
                blurRadius: 40,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              popinsText(
                text: 'Notification',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D1617),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  SvgPicture.asset(SvgPath.notif),
                  const SizedBox(width: 10),
                  popinsText(
                    text: 'Pop-up Notification',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF7B6F72),
                    ),
                  ),
                  const Spacer(),
                  Switch.adaptive(
                    value: notificationStatus,
                    activeColor: const Color(0xFFC58BF2),
                    onChanged: (value) {
                      setState(() {
                        notificationStatus = value;
                      });
                    },
                  )
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1D1617).withOpacity(0.07),
                offset: const Offset(0, 10),
                blurRadius: 40,
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              popinsText(
                text: 'Other',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1D1617),
                ),
              ),
              const SizedBox(height: 15),
              const SettingsRowWidget(data: 'Contact', path: SvgPath.email),
              const SizedBox(height: 16),
              const SettingsRowWidget(
                  data: 'Privacy Policy', path: SvgPath.privacy),
              const SizedBox(height: 16),
              const SettingsRowWidget(data: 'Settings', path: SvgPath.settings),
            ],
          ),
        ),
      ],
    );
  }
}
