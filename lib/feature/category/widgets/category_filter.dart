import 'package:fashion_app/core/colors/app_colors.dart';
import 'package:fashion_app/core/constants/app_images.dart';
import 'package:fashion_app/core/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
      border: Border.all(color: AppColors.lightGreyColor)
      ),
    child: Row(children: [
      Gap(8),
TextWidgets(text: 'Sort by'),
   Gap(8),
      SvgPicture.asset(AppImages.filterImage),
      Spacer(),
      SvgPicture.asset(AppImages.lucideSettingsImage),
      Gap(8),
      TextWidgets(text: 'Filter'),
      Gap(8),
      SvgPicture.asset(AppImages.gridOutlineImage),
      Gap(8),
      SvgPicture.asset(AppImages.solarUsersImage),
      Gap(8),
    ],),
    );
  }
}
