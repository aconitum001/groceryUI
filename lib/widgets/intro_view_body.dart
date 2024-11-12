import 'package:flutter/material.dart';
import 'package:gorcery/widgets/custom_button.dart';
import 'package:gorcery/widgets/intro_text.dart';
import 'package:gorcery/widgets/logo_widget.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    double width = MediaQuery.sizeOf(context).width;

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(
            flex: 1,
          ),
          const LogoWidget(),
          SizedBox(
            height: height * 0.028,
          ),
          IntroText(width: width, height: height),
          SizedBox(
            height: height * 0.045,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.25),
            child: const SizedBox(
              height: 53,
              child: CustomButton(
                text: "Shop now",
              ),
            ),
          ),
          const Spacer(
            flex: 4,
          ),
        ],
      ),
    );
  }
}
