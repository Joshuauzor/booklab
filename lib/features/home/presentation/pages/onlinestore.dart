import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:logger/logger.dart';

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
              BlocConsumer<HomeViewCubit, HomeViewState>(
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  Logger().d(context.read<HomeViewCubit>().books.length);
                  if (context.read<HomeViewCubit>().books.isNotEmpty) {
                    return StaggeredGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 10,
                      children: context
                          .read<HomeViewCubit>()
                          .books
                          .map(
                            (e) => BookCover(
                              image: e.imgUrl,
                              height: 215,
                              radius: 10,
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return Center(
                      child: TextRegular(
                        'No Books Available.',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: AppColors.black,
                      ),
                    );
                  }
                },
              ),

              //  StaggeredGrid.count(
              //             crossAxisCount: 2,
              //             mainAxisSpacing: 20,
              //             crossAxisSpacing: 10,
              //             children: providerWatch.packagesListModel!.packages
              //                 .map(
              //                   (e) => PackagesPlan(
              //                     points: e.points.toString(),
              //                     amount: e.cost.toString(),
              //                     isRecommended: e.recommended,
              //                     packageId: e.id,
              //                     submissionMode: _submissionMode,
              //                     planCode: e.planCode,
              //                   ),
              //                 )
              //                 .toList(),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: const [
              //     Expanded(
              //       child: BookCover(
              //         image: AppAssets.bitter,
              //         height: 215,
              //         radius: 10,
              //       ),
              //     ),
              //     Gap(36),
              //     Expanded(
              //       child: BookCover(
              //         image: AppAssets.silence,
              //         height: 215,
              //         radius: 10,
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
