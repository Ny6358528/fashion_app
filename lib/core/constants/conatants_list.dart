import 'package:fashion_app/core/constants/app_images.dart';
import 'package:fashion_app/core/constants/app_string.dart';
import 'package:fashion_app/core/model/category_model.dart';

class ConstantsList {
  static List<CategoryModel> categoriesList = [
    CategoryModel(image: AppImages.menImage, name: AppString.menName),
    CategoryModel(image: AppImages.womenImage, name: AppString.womenName),
    CategoryModel(image: AppImages.kidsImage, name: AppString.kidsName),
    CategoryModel(image: AppImages.dealsImage, name: AppString.dealsName),
    CategoryModel(image: AppImages.homeImage, name: AppString.homeName),
  ];
}
