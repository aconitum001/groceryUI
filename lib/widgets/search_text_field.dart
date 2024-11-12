import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gorcery/utils/app_styles.dart';
import 'package:gorcery/utils/assets.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: AppStyles.style14medium(
        context,
        Theme.of(context).colorScheme.onSurface,
        height: 1,
      ),
      decoration: InputDecoration(
        fillColor: Theme.of(context).colorScheme.secondaryContainer,
        filled: true,
        prefixIcon: SvgPicture.asset(
          Assets.assetsImagesSearchIcon,
          fit: BoxFit.scaleDown,
          colorFilter: ColorFilter.mode(
            Theme.of(context).colorScheme.primary,
            BlendMode.srcIn,
          ),
        ),
        hintText: "Search category",
        hintStyle: AppStyles.style14medium(
          context,
          Theme.of(context).colorScheme.onSecondary,
        ),
        border: _buildBorder(
          Colors.transparent,
        ),
        enabledBorder: _buildBorder(
          Colors.transparent,
        ),
        focusedBorder: _buildBorder(
          Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }

  InputBorder _buildBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        60,
      ),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
