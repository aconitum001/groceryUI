import 'package:flutter/material.dart';
import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_icon_button.dart';

class TitleAndCounterWidget extends StatelessWidget {
  const TitleAndCounterWidget({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 12,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              product.title,
              style: AppStyles.style24bold(
                context,
                Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ),
        const Spacer(
          flex: 3,
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: CustomIconButton(
            color: Theme.of(context).colorScheme.secondaryContainer,
            icon: Icon(
              Icons.remove,
              color: Theme.of(context).colorScheme.onSecondary,
            ),
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          "4",
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        const SizedBox(
          width: 36,
          height: 36,
          child: CustomIconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
