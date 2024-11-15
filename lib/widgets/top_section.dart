import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/widgets/product_details_appbar.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ProductContainerClipPath(),
      child: Container(
        color: Theme.of(context).colorScheme.secondaryContainer,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 24, right: 24, left: 24),
              child: ProductDetailsAppbar(),
            ),
            const Spacer(
              flex: 1,
            ),
            Expanded(
              flex: 4,
              child: Image.asset(
                product.image,
                fit: BoxFit.fill,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}

class ProductContainerClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();

    path.lineTo(0, h - 60);
    path.quadraticBezierTo(w * .5, h, w, h - 60);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
