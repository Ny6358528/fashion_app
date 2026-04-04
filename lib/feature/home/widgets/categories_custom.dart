import 'package:fashion_app/core/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:fashion_app/core/model/category_model.dart';
import 'package:gap/gap.dart';

class CategoriesCustom extends StatelessWidget {
  const CategoriesCustom({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      separatorBuilder: (context, index) => const Gap(15),
      itemBuilder: (context, index) {
        final category = categories[index];

        return Column(
          children: [
            CircleAvatar(
              radius: 35, 
              backgroundColor: Colors.grey[200],
              child: ClipOval(
                child: Image.asset(
                  category.image,
                  fit: BoxFit.cover,
                  width: 70,
                  height: 70,
                ),
              ),
            ),
            const Gap(8),
            TextWidgets(
              text: category.name,
              textStyle: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        );
      },
    );
  }
}
