import 'package:fashion_app/core/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AinmationLine extends StatelessWidget {
  const AinmationLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder<Offset>(
        tween: Tween<Offset>(
          begin: const Offset(-1, 0),
          end: const Offset(0, 0),
        ),
        duration: const Duration(seconds: 2),
        builder: (context, offset, child) {
          return Opacity(
            opacity: 1 - offset.dx.abs(),
            child: Transform.translate(
              offset: Offset(offset.dx * 200, 0),
              child: child,
            ),
          );
        },
        child: SvgPicture.asset(AppImages.lineImage),
      ),
    );
  }
}
