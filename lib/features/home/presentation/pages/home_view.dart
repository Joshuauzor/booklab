import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:booklab/features/home/domain/usecases/usecases.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_state.dart';
import 'package:booklab/injections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocProvider<HomeViewCubit>(
        create: (context) => HomeViewCubit(
          booksUseCase: sl<BooksUseCase>(),
        )..getBooks(context),
        child: BlocBuilder<HomeViewCubit, HomeViewState>(
          builder: (context, state) {
            return SafeArea(
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
                        SearchBar(searchController: _searchController),
                      ],
                    ),
                  ),
                  BlocConsumer<HomeViewCubit, HomeViewState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        orElse: () {},
                      );
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => Center(
                          child: TextRegular(
                            'Error loading book',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        ),
                        loading: () {
                          return CircularProgressIndicator();
                        },
                        loaded: (books) {
                          if (books.isEmpty) {
                            return Center(
                              child: TextRegular(
                                'No Books Available.',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            );
                          } else {
                            final topBooksWidget = <Widget>[];
                            for (var i = 0; i < 10; i++) {
                              final item = context
                                  .read<HomeViewCubit>()
                                  .books
                                  .reversed
                                  .toList()[i];
                              if (i < 3) {
                                topBooksWidget.add(
                                  Row(
                                    children: [
                                      TopBooks(
                                        amount: '#654,42',
                                        image: item.imgUrl,
                                      ),
                                      const Gap(10),
                                    ],
                                  ),
                                );
                              }
                            }
                            return Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (context
                                            .read<HomeViewCubit>()
                                            .books
                                            .length >
                                        1)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Gap(32),
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                left: 25,
                                              ),
                                              child: Row(
                                                children: topBooksWidget,
                                              ),
                                            ),
                                          ),
                                          const Gap(41),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 25,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
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
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    children: [
                                                      ...context
                                                          .read<HomeViewCubit>()
                                                          .books
                                                          .map(
                                                            (e) => Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 89,
                                                                  child:
                                                                      BookCover(
                                                                    image: e
                                                                        .imgUrl,
                                                                    height: 121,
                                                                    radius: 10,
                                                                  ),
                                                                ),
                                                                const Gap(25),
                                                              ],
                                                            ),
                                                          )

                                                      // SizedBox(
                                                      //   width: 89,
                                                      //   child: BookCover(
                                                      //     image: AppAssets.bitter,
                                                      //     height: 121,
                                                      //     radius: 10,
                                                      //   ),
                                                      // ),
                                                      // Gap(25),
                                                      // SizedBox(
                                                      //   width: 89,
                                                      //   child: BookCover(
                                                      //     image: AppAssets.bitter,
                                                      //     height: 121,
                                                      //     radius: 10,
                                                      //   ),
                                                      // ),
                                                      // Gap(25),
                                                      // SizedBox(
                                                      //   width: 89,
                                                      //   child: BookCover(
                                                      //     image: AppAssets.bitter,
                                                      //     height: 121,
                                                      //     radius: 10,
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ),
                                                const Gap(30),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                  ],
                                ),
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.read<HomeViewCubit>().getBooks(context);
        },
        backgroundColor: AppColors.white,
        child: SvgPicture.asset(AppAssets.plus),
      ),
    );
  }
}
