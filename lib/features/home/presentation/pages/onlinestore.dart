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

class OnlineStore extends StatefulWidget {
  const OnlineStore({Key? key}) : super(key: key);

  @override
  State<OnlineStore> createState() => _OnlineStoreState();
}

class _OnlineStoreState extends State<OnlineStore> {
  TextEditingController searchController = TextEditingController();
  String _searchText = '';

  @override
  void initState() {
    _searchText = searchController.text.trim();
    searchController.addListener(() {
      setState(() {
        _searchText = searchController.text.trim();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _bookList = _searchText.isEmpty
        ? context.read<HomeViewCubit>().onlineBooks
        : context
            .read<HomeViewCubit>()
            .onlineBooks
            .where(
              (item) => item.title.contains(
                RegExp(
                  StringUtils.escapeSpecial(_searchText),
                  caseSensitive: false,
                ),
              ),
            )
            .toList();

    return Scaffold(
      appBar: const MainAppBar(title: 'Online Store'),
      backgroundColor: AppColors.secondaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(15),
            SearchBar(
              searchController: searchController,
            ),
            const Gap(14),
            TextRegular(
              'Collection',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            const Gap(15),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    BlocConsumer<HomeViewCubit, HomeViewState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                        );
                      },
                      builder: (context, state) {
                        if (_bookList.isNotEmpty) {
                          return StaggeredGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10,
                            children: _bookList
                                .map(
                                  (e) => GestureDetector(
                                    onTap: () => Navigator.pushNamed(
                                      context,
                                      RouteName.descriptionView,
                                      arguments: BookDetailsArgs(
                                        id: e.id,
                                        title: e.title,
                                        author: e.author,
                                        imgUrl: e.imgUrl,
                                        price: e.price,
                                        review: e.review,
                                        description: e.description,
                                        source: e.source,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        BookCover(
                                          image: e.imgUrl,
                                          height: 215,
                                          radius: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: TextRegular(
                                                e.title,
                                                fontWeight: FontWeight.w500,
                                                color: AppColors.feintDart,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                            ),
                                            TextRegular(
                                              e.price,
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.feintDart,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
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
