import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class CustomBook extends StatelessWidget {
  const CustomBook({
    Key? key,
    required this.id,
    required this.title,
    required this.description,
    required this.author,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  final int id;
  final String title;
  final String description;
  final String author;
  final String price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 72,
          child: BookCover(
            image: imageUrl,
            height: 106,
            radius: 1,
          ),
        ),
        const Gap(35),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextRegular(
                      title,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: AppFonts.poppins,
                    ),
                    const Gap(3),
                    TextRegular(
                      author,
                      fontSize: 15,
                      color: AppColors.greyLight,
                      fontFamily: AppFonts.poppins,
                    ),
                    const Gap(6),
                    TextRegular(
                      description,
                      fontWeight: FontWeight.w300,
                      fontSize: 12,
                      color: AppColors.greyLight,
                      fontFamily: AppFonts.poppins,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppAssets.bookmark,
                      color: AppColors.black,
                    ),
                    const EditButton(),
                    TextRegular(
                      'N$price',
                      fontWeight: FontWeight.w500,
                      fontSize: 11,
                      color: AppColors.feintDart,
                      fontFamily: AppFonts.poppins,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
