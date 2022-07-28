import 'package:booklab/core/core.dart';
import 'package:booklab/features/features.dart';
import 'package:flutter/material.dart';

class AppTabView extends StatefulWidget {
  const AppTabView({Key? key}) : super(key: key);

  @override
  AppTabViewState createState() => AppTabViewState();
}

class AppTabViewState extends State<AppTabView> {
  int? _selectedIndex;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    setState(() {
      _selectedIndex = 0;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _widgetOptions = <Widget?>[
      const HomeView(),
      Container(),
      const OnlineStore(),
      Container(),
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: _widgetOptions.elementAt(_selectedIndex!),
            ),
          ),
        ],
      ),
      bottomNavigationBar: FABBottomAppBar(
        backgroundColor: AppColors.white,
        selectedColor: AppColors.black,
        height: 50,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          FABBottomAppBarItem(
            icon: AppAssets.home,
          ),
          FABBottomAppBarItem(
            icon: AppAssets.stat,
          ),
          FABBottomAppBarItem(
            icon: AppAssets.bookmark,
          ),
          FABBottomAppBarItem(
            icon: AppAssets.explore,
          ),
        ],
      ),
    );
  }
}

class AppTabViewParams {
  AppTabViewParams({this.child, this.index});
  final int? index;
  final Widget? child;
}
