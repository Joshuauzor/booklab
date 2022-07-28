import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FABBottomAppBar extends StatefulWidget {
  const FABBottomAppBar({
    Key? key,
    this.items,
    this.centerItemText,
    this.height = 67.0,
    this.iconSize = 20.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
    this.currentIndex,
  }) : super(key: key);

  final List<FABBottomAppBarItem>? items;
  final String? centerItemText;
  final double height;
  final double iconSize;
  final Color? backgroundColor;
  final Color? color;
  final Color? selectedColor;
  final NotchedShape? notchedShape;
  final int? currentIndex;
  final ValueChanged<int>? onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int? _selectedIndex;

  // ignore: always_declare_return_types
  _updateIndex(int? index) {
    widget.onTabSelected!(index!);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    _selectedIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // looping through the items to fill in with icons
    final items = List<Widget>.generate(
      widget.items!.length,
      (int index) {
        // each items in the tab
        return _buildTabItem(
          item: widget.items![index],
          index: index,
          onPressed: _updateIndex,
        );
      },
    );

    // return the bottom app bar in which item above is being passed
    return BottomAppBar(
      shape: widget.notchedShape,
      color: AppColors.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: items,
        ),
      ),
    );
  }

  // each item in the list
  Widget _buildTabItem({
    required FABBottomAppBarItem item,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    final color =
        _selectedIndex == index ? widget.selectedColor : AppColors.white;
    // var color = _selectedIndex == index ? widget.selectedColor : widget.color;
    // var icon = _selectedIndex == index ? item.iconActive : item.icon;
    return Expanded(
      child: SizedBox(
        height: widget.height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () => onPressed!(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  item.icon!,
                  color: color,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// widget for each item to be pass in the bottom nav
class FABBottomAppBarItem {
  FABBottomAppBarItem({
    this.icon,
    this.text,
  });

  String? icon;
  String? text;
}
