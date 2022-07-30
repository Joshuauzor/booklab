import 'package:booklab/core/core.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCover extends StatelessWidget {
  const BookCover({
    Key? key,
    required this.image,
    this.height = 218,
    this.radius = 15,
  }) : super(key: key);

  final String image;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      imageBuilder: (
        context,
        imageProvider,
      ) {
        return Container(
          width: height,
          // height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(
                radius,
              ),
            ),
          ),
        );
      },
      placeholder: (context, url) => Image.asset(
        AppAssets.silence,
      ),
      errorWidget: (
        context,
        url,
        error,
      ) =>
          Image.asset(
        AppAssets.silence,
      ),
    );
  }
}
