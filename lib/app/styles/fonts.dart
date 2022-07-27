import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';

/// Base text with black color and letter spacing set
///  [AppTextBase]
class AppTextBase extends StatelessWidget {
  const AppTextBase(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: const TextStyle(
        fontSize: 14,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

///  [TextBold] .
class TextBold extends AppTextBase {
  TextBold(
    String text, {
    Key? key,
    TextStyle? style,
    double fontSize = 50,
    FontWeight fontWeight = FontWeight.w600,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontFamily: AppFonts.urbanist,
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color ?? AppColors.black,
          ).merge(style),
          textAlign: textAlign,
        );
}

class AppTextSemiBold extends AppTextBase {
  AppTextSemiBold(
    String text, {
    Key? key,
    TextStyle? style,
    TextAlign? textAlign,
    TextOverflow? overflow,
    int maxLines = 2,
  }) : super(
          text,
          key: key,
          style: const TextStyle(
            fontFamily: AppFonts.urbanist,
          ).merge(style),
          textAlign: textAlign ?? TextAlign.left,
          overflow: overflow ?? TextOverflow.visible,
          maxLines: maxLines,
        );
}

class HeaderText extends AppTextBase {
  HeaderText(
    String text, {
    Key? key,
    TextStyle? style,
    double fontSize = 28,
    TextAlign? textAlign,
    TextOverflow? overflow,
    Color? color,
    FontWeight fontWeight = FontWeight.w500,
    int maxLines = 2,
    String fontFamily = AppFonts.roboto,
  }) : super(
          text,
          key: key,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: color ?? AppColors.black,
          ).merge(style),
          textAlign: textAlign ?? TextAlign.left,
          overflow: overflow ?? TextOverflow.visible,
          maxLines: maxLines,
        );
}

///  [TextRegular] .
class TextRegular extends AppTextBase {
  TextRegular(
    String text, {
    Key? key,
    TextStyle? style,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w400,
    Color? color,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    String fontFamily = AppFonts.urbanist,
    int maxLines = 2,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: fontFamily,
            color: color ?? AppColors.black,
          ).merge(style),
          textAlign: textAlign,
        );
}

class TextBody extends TextRegular {
  TextBody(
    String text, {
    Key? key,
    TextStyle? style,
    Color? color,
    double? fontSize,
    TextAlign textAlign = TextAlign.left,
    TextOverflow overflow = TextOverflow.visible,
    int maxLines = 2,
    double? height,
  }) : super(
          text,
          key: key,
          overflow: overflow,
          maxLines: maxLines,
          style: TextStyle(
            fontSize: fontSize ?? 14,
            color: color ?? AppColors.black,
            fontWeight: FontWeight.w400,
            height: height,
          ).merge(style),
          textAlign: textAlign,
        );
}

class LongText extends StatelessWidget {
  const LongText(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.color = AppColors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.maxLines = 1,
    Key? key,
  }) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? AppColors.black,
        fontWeight: fontWeight,
        fontFamily: AppFonts.urbanist,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class LongerText extends StatelessWidget {
  const LongerText(
    this.text, {
    this.style,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.visible,
    this.color = AppColors.black,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    Key? key,
  }) : super(key: key);
  final String? text;
  final TextStyle? style;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final Color? color;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    assert(text != null, 'test can not be null');
    return Text(
      text ?? '',
      style: TextStyle(
        fontSize: fontSize,
        color: color ?? AppColors.black,
        fontWeight: fontWeight,
        fontFamily: AppFonts.urbanist,
      ).merge(style),
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
