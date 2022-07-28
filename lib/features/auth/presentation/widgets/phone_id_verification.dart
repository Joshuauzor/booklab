import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PhoneIdVerification extends StatelessWidget {
  const PhoneIdVerification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(7),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 2,
            color: AppColors.tenBlack,
          )
        ],
      ),
      child: SvgPicture.asset(
        AppAssets.fingerprint,
      ),
    );
  }
}
