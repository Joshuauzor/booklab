import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnlineStore extends StatefulWidget {
  const OnlineStore({Key? key}) : super(key: key);

  @override
  State<OnlineStore> createState() => _OnlineStoreState();
}

class _OnlineStoreState extends State<OnlineStore> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Online Store'),
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
              const Gap(14),
              TextRegular(
                'Reading',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              const Gap(15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          width: 89,
                          child: BookCover(
                            image: AppAssets.silence,
                            height: 121,
                            radius: 10,
                          ),
                        ),
                        const Gap(18),
                        TextRegular(
                          "Starlight's Shadow",
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: AppFonts.roboto,
                          color: AppColors.lighterAsh,
                        ),
                      ],
                    ),
                    const Gap(25),
                    Column(
                      children: [
                        const SizedBox(
                          width: 89,
                          child: BookCover(
                            image: AppAssets.silence,
                            height: 121,
                            radius: 10,
                          ),
                        ),
                        const Gap(18),
                        TextRegular(
                          "Starlight's Shadow",
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: AppFonts.roboto,
                          color: AppColors.lighterAsh,
                        ),
                      ],
                    ),
                    const Gap(25),
                    Column(
                      children: [
                        const SizedBox(
                          width: 89,
                          child: BookCover(
                            image: AppAssets.silence,
                            height: 121,
                            radius: 10,
                          ),
                        ),
                        const Gap(18),
                        TextRegular(
                          "Starlight's Shadow",
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: AppFonts.roboto,
                          color: AppColors.lighterAsh,
                        ),
                      ],
                    ),
                    const Gap(25),
                    Column(
                      children: [
                        const SizedBox(
                          width: 89,
                          child: BookCover(
                            image: AppAssets.bitter,
                            height: 121,
                            radius: 10,
                          ),
                        ),
                        const Gap(18),
                        TextRegular(
                          "Starlight's Shadow",
                          fontWeight: FontWeight.w600,
                          fontSize: 10,
                          fontFamily: AppFonts.roboto,
                          color: AppColors.lighterAsh,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Gap(15),
              TextRegular(
                'Collection',
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
              const Gap(15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Expanded(
                    child: BookCover(
                      image: AppAssets.bitter,
                      height: 215,
                      radius: 10,
                    ),
                  ),
                  Gap(36),
                  Expanded(
                    child: BookCover(
                      image: AppAssets.silence,
                      height: 215,
                      radius: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
