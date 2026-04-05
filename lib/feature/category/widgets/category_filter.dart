import 'package:fashion_app/core/colors/app_colors.dart';
import 'package:fashion_app/core/constants/app_images.dart';
import 'package:fashion_app/core/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../core/model/category_filter_model.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({
    super.key,
    required this.categoryFilterModel,
  });

  final CategoryFilterModel categoryFilterModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //  Image Card
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.lightGreyColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                //  Image
                Image.asset(
                  categoryFilterModel.image,
                  fit: BoxFit.contain,
                ),

                //  Shadow
                Positioned(
                  bottom: 8,
                  child: SvgPicture.asset(
                    AppImages.shadowImage,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ),

        const Gap(8),

        //  Name
        TextWidgets(
          text: categoryFilterModel.name,
          maxLines: 1,
        ),

        const Gap(4),

        //  Price + Fav
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextWidgets(text: categoryFilterModel.price),
            const Icon(Icons.favorite_border_rounded, size: 18),
          ],
        ),
      ],
    );
  }
}