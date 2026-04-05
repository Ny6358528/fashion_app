
import 'package:fashion_app/core/colors/app_colors.dart';
import 'package:fashion_app/core/constants/app_images.dart';
import 'package:fashion_app/core/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
class FilterWidget extends StatelessWidget {
  const FilterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGreyColor),
      ),
      child: Row(
        children: [
          const Gap(8),
          const TextWidgets(text: 'Sort by'),
          const Gap(8),
          SvgPicture.asset(AppImages.filterImage),

          const Spacer(),

          SvgPicture.asset(AppImages.lucideSettingsImage),
          const Gap(8),
          const TextWidgets(text: 'Filter'),
          const Gap(8),
          SvgPicture.asset(AppImages.gridOutlineImage),
          const Gap(8),
          SvgPicture.asset(AppImages.solarUsersImage),
          const Gap(8),
        ],
      ),
    );
  }
}