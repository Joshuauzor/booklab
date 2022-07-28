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
            ],
          ),
        ),
      ),
    );
  }
}
