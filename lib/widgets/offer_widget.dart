import 'package:flutter/material.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return Container(
      width: width,
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(
            Assets.assetsImagesOfferBackground,
          ),
          fit: BoxFit.fill,
          alignment: Alignment.centerLeft,
        ),
        borderRadius: BorderRadius.circular(
          16,
        ), // Border radius for rounded corners
      ),
      child: Row(
        children: [
          const Spacer(
            flex: 4,
          ),
          Expanded(
            flex: 5,
            child: ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ramadan Offers",
                          style: AppStyles.style12medium(
                            context,
                            Colors.white,
                          ),
                        ),
                        Text(
                          "Get 25%",
                          style: AppStyles.style32medium(
                            context,
                            Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                            ),
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Row(
                                children: [
                                  Text(
                                    "Grab Offer",
                                    style: AppStyles.style14medium(
                                      context,
                                      const Color(
                                        0xff6BA821,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 14,
                                    color: Color(
                                      0xff6BA821,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();
    path.moveTo(w * 0.12, 0);
    path.quadraticBezierTo(-1, h * 0.5, w * 0.12, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
