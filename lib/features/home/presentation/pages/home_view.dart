import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/widget.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(AppAssets.nav),
                      Row(
                        children: [
                          SvgPicture.asset(AppAssets.notification),
                          const Gap(16.41),
                          Image.asset(AppAssets.avatar),
                        ],
                      )
                    ],
                  ),
                  const Gap(21),
                  InputField(
                    prefix: Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: SvgPicture.asset(AppAssets.search),
                    ),
                    controller: _searchController,
                    placeholder: 'Search...',
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Gap(74),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: Row(
                          children: const [
                            TopBooks(
                              amount: '#654,42',
                              image: AppAssets.silence,
                            ),
                            Gap(10),
                            TopBooks(
                              amount: '#504,42',
                              image: AppAssets.bitter,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Gap(41),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextRegular(
                            'Explore',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                          const Gap(8),
                          TextRegular(
                            'Browse from our list of wonderful books',
                            fontWeight: FontWeight.w500,
                          ),
                          const Gap(28),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                SizedBox(
                                  width: 89,
                                  child: BookCover(
                                    image: AppAssets.silence,
                                    height: 121,
                                    radius: 10,
                                  ),
                                ),
                                Gap(25),
                                SizedBox(
                                  width: 89,
                                  child: BookCover(
                                    image: AppAssets.bitter,
                                    height: 121,
                                    radius: 10,
                                  ),
                                ),
                                Gap(25),
                                SizedBox(
                                  width: 89,
                                  child: BookCover(
                                    image: AppAssets.bitter,
                                    height: 121,
                                    radius: 10,
                                  ),
                                ),
                                Gap(25),
                                SizedBox(
                                  width: 89,
                                  child: BookCover(
                                    image: AppAssets.bitter,
                                    height: 121,
                                    radius: 10,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(30),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
