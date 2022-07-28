import 'package:booklab/app/styles/fonts.dart';
import 'package:booklab/app/view/widget/app_bar.dart';
import 'package:booklab/app/view/widget/busy_button.dart';
import 'package:booklab/core/core.dart';
import 'package:booklab/features/home/home.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BookDetails extends StatefulWidget {
  const BookDetails({Key? key}) : super(key: key);

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
                    const SizedBox(
                      width: 220.66,
                      child: BookCover(
                        image: AppAssets.silence,
                        height: 300,
                      ),
                    ),
                    const Gap(54),
                    TextRegular(
                      'MICKEY 7',
                      fontSize: 27,
                      fontFamily: AppFonts.roboto,
                    ),
                    const Gap(12),
                    TextRegular(
                      'Edward Ashton',
                      fontWeight: FontWeight.w500,
                      fontFamily: AppFonts.roboto,
                      color: AppColors.greyLight,
                    ),
                    const Gap(3),
                    TextRegular(
                      '#100',
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
              const LongerText(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tellus odio eros adipiscing tristique. Eu, egestas massa morbi eget purus amet. Volutpat, tincidunt tincidunt mattis faucibus arcu sed. Cursus nisl sit tincidunt mattis dictum turpis. Sit nullam risus, tincidunt gravida adipiscing cras. ',
                fontSize: 12,
                fontWeight: FontWeight.w300,
              ),
              const Gap(22),
              BusyButton(title: 'Click to buy', onpress: () {})
            ],
          ),
        ),
      ),
    );
  }
}
