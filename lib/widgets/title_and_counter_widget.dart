import 'package:flutter/material.dart';

import 'package:gorcery/models/product_model.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/widgets/custom_icon_button.dart';

class TitleAndCounterWidget extends StatelessWidget {
  const TitleAndCounterWidget({
    super.key,
    required this.product,
    required this.increment,
    required this.decrement,
    required this.counter,
  });

  final Product product;
  final VoidCallback increment, decrement;
  final int counter;

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
            onTap: () {
              decrement();
            },
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Text(
          counter.toString(),
          style: AppStyles.style18bold(
            context,
            Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        SizedBox(
          width: 36,
          height: 36,
          child: CustomIconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onTap: () {
              increment();
            },
          ),
        ),
      ],
    );
  }
}
