import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 53,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            10,
          ),
        ),
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: TextRegular(
          'Edit',
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: AppColors.white,
        ),
      ),
    );
  }
}
