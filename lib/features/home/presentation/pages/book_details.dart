import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/app/view/widget/busy_button.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({
    Key? key,
    required this.params,
  }) : super(key: key);
  final BookDetailsArgs params;

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(title: 'Description'),
      backgroundColor: AppColors.secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(37),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 220.66,
                      child: BookCover(
                        image: widget.params.imgUrl,
                        height: 300,
                      ),
                    ),
                    const Gap(54),
                    TextRegular(
                      widget.params.title,
                      fontSize: 27,
                      fontFamily: AppFonts.roboto,
                    ),
                    const Gap(12),
                    TextRegular(
                      widget.params.author,
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.roboto,
                      color: AppColors.greyLight,
                    ),
                    const Gap(3),
                    TextRegular(
                      widget.params.isCustom
                          ? 'N${widget.params.price}'
                          : widget.params.price,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: AppFonts.roboto,
                      color: AppColors.black,
                    ),
                  ],
                ),
              ),
              const Gap(27),
              TextRegular(
                'About',
                fontFamily: AppFonts.poppins,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              const Gap(7),
              LongerText(
                widget.params.description,
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const Gap(22),
              BusyButton(title: 'Click to buy', onpress: () {}),
              const Gap(42),
            ],
          ),
        ),
      ),
    );
  }
}

class BookDetailsArgs {
  BookDetailsArgs({
    required this.id,
    required this.title,
    required this.author,
    required this.imgUrl,
    required this.price,
    required this.review,
    required this.description,
    required this.source,
    this.isCustom = false,
  });

  final int id;
  final String title;
  final String author;
  final String imgUrl;
  final String price;
  final String review;
  final String description;
  final String source;
  final bool isCustom;
}
