import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CustomStore extends StatefulWidget {
  const CustomStore({Key? key}) : super(key: key);

  @override
  State<CustomStore> createState() => _CustomStoreState();
}

class _CustomStoreState extends State<CustomStore> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Custom Store'),
      backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(15),
              SearchBar(searchController: _searchController),
              const Gap(15),
              TextRegular(
                'Newest',
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
              const Gap(15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 72,
                    child: BookCover(
                      image: AppAssets.bitter,
                      height: 106,
                      radius: 1,
                    ),
                  ),
                  const Gap(35),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextRegular(
                              'Book of Signs',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: AppFonts.poppins,
                            ),
                            const Gap(3),
                            TextRegular(
                              'Sam Morren',
                              fontSize: 15,
                              color: AppColors.greyLight,
                              fontFamily: AppFonts.poppins,
                            ),
                            const Gap(6),
                            TextRegular(
                              'Lorem ipsum dolor sit ame ',
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                              color: AppColors.greyLight,
                              fontFamily: AppFonts.poppins,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
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
                              SvgPicture.asset(
                                AppAssets.bookmark,
                                color: AppColors.black,
                              ),
                              TextRegular(
                                '#1.90',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
