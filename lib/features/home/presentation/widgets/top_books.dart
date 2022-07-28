import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TopBooks extends StatelessWidget {
  const TopBooks({
    required this.amount,
    required this.image,
    Key? key,
  }) : super(key: key);
  final String amount;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 139,
      child: Column(
        children: [
          BookCover(image: image),
          const Gap(10),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextRegular(
                  amount,
                  fontWeight: FontWeight.w500,
                  color: AppColors.feintDart,
                ),
                EditButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
