import 'package:flutter/material.dart';
import 'package:gorcery/widgets/search_text_field.dart';
import 'package:gorcery/widgets/user_profile_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserProfileSection(
          name: "Amelia Barlow",
        ),
        SizedBox(
          height: 18,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: SizedBox(
            height: 50,
            child: SearchTextField(),
          ),
        ),
      ],
    );
  }
}
