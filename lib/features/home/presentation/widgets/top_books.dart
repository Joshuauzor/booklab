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
                const EditButton()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
