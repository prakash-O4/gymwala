import 'package:flutter/material.dart';
import 'package:gymwala/presentation/common/widgets/common_appbar.dart';
import 'package:gymwala/presentation/profile/widgets/user_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              children: [
                CommonAppBar(title: 'Profile',pop: false,),
                SizedBox(height: 30),
                UserCardWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
