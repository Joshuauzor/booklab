import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:booklab/features/home/presentation/cubit/home_view_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class CustomStore extends StatefulWidget {
  const CustomStore({Key? key}) : super(key: key);

  @override
  State<CustomStore> createState() => _CustomStoreState();
}

class _CustomStoreState extends State<CustomStore> {
  final _searchController = TextEditingController();

  String _searchText = '';

  @override
  void initState() {
    _searchText = _searchController.text.trim();
    _searchController.addListener(() {
      setState(() {
        _searchText = _searchController.text.trim();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _bookList = _searchText.isEmpty
        ? context.read<HomeViewCubit>().customBooks
        : context
            .read<HomeViewCubit>()
            .customBooks
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
      appBar: const MainAppBar(title: 'Custom Store'),
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
              searchController: _searchController,
            ),
            const Gap(15),
            TextRegular(
              'Newest',
              fontWeight: FontWeight.w600,
              fontSize: 24,
            ),
            const Gap(15),
            if (context.read<HomeViewCubit>().customBooks.isNotEmpty)
              if (_bookList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemCount: _bookList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final item = _bookList[index];
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(
                              context,
                              RouteName.descriptionView,
                              arguments: BookDetailsArgs(
                                id: item.id,
                                title: item.title,
                                author: item.author,
                                imgUrl: item.imgUrl,
                                price: item.price,
                                review: item.review,
                                description: item.description,
                                source: item.source,
                                isCustom: item.isCustom,
                              ),
                            ),
                            child: CustomBook(
                              id: item.id,
                              title: item.title,
                              description: item.description,
                              author: item.author,
                              price: item.price,
                              imageUrl: item.imgUrl,
                            ),
                          ),
                          const Gap(30),
                        ],
                      );
                    },
                  ),
                )
              else
                Center(
                  child: TextRegular(
                    'No Result found',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                )
            else
              Center(
                child: TextRegular(
                  'No Custom Book Available.',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
