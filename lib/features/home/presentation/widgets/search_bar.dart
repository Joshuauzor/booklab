import 'package:booklab/app/app.dart';
import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return InputField(
      prefix: Padding(
        padding: const EdgeInsets.only(
          right: 10,
        ),
        child: SvgPicture.asset(AppAssets.search),
      ),
      controller: _searchController,
      placeholder: 'Search...',
    );
  }
}
