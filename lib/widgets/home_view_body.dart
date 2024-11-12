import 'package:flutter/material.dart';
import 'package:gorcery/widgets/user_profile_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserProfileSection(
          name: "Amelia Barlow",
        )
      ],
    );
  }
}
