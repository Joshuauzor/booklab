import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const MainAppBar({
    Key? key,
    required this.title,
    this.leading,
    this.titleColor = AppColors.black,
  }) : super(key: key);

  final String title;
  final Color titleColor;
  final Widget? leading;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: GestureDetector(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            } else {
              Navigator.pushReplacementNamed(
                context,
                RouteName.appTabView,
              );
            }
          },
          child: SvgPicture.asset(AppAssets.arrowBack),
        ),
      ),
      title: HeaderText(
        title,
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: titleColor,
      ),
      backgroundColor: AppColors.secondaryColor,
      elevation: 0,
    );
  }
}
