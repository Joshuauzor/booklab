import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputField extends StatefulWidget {
  const InputField({
    required this.controller,
    required this.placeholder,
    this.label,
    this.enterPressed,
    this.fieldFocusNode,
    this.nextFocusNode,
    this.additionalNote,
    this.onChanged,
    this.maxLength,
    this.maxLines = 1,
    this.validationMessage,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.password = false,
    this.isReadOnly = false,
    this.smallVersion = true,
    this.suffix,
    this.onTap,
    this.prefix,
    this.validationColor = const Color(0xffEBEAED),
    this.prefixSizedBoxWidth = 20,
    Key? key,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType? textInputType;
  final bool password;
  final bool isReadOnly;
  final String placeholder;
  final String? validationMessage;
  final Function? enterPressed;
  final bool smallVersion;
  final FocusNode? fieldFocusNode;
  final Function? onTap;
  final FocusNode? nextFocusNode;
  final TextInputAction textInputAction;
  final String? additionalNote;
  final String? label;
  final double prefixSizedBoxWidth;
  final Function(String)? onChanged;

  final int? maxLines, maxLength;
  final Widget? suffix;
  final Widget? prefix;
  final Color validationColor;

  @override
  // ignore: library_private_types_in_public_api
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool? isPassword;
  double fieldHeight = 56;

  @override
  void initState() {
    super.initState();
    isPassword = widget.password;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: fieldHeight,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.ash,
            border: Border.all(
              color: widget.validationColor,
            ),
          ),
          child: Row(
            children: <Widget>[
              widget.prefix ?? const SizedBox(),
              Expanded(
                child: TextField(
                  controller: widget.controller,
                  keyboardType: widget.textInputType,
                  focusNode: widget.fieldFocusNode,
                  textInputAction: widget.textInputAction,
                  onChanged: widget.onChanged,
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppColors.black,
                    fontWeight: FontWeight.w400,
                    fontFamily: AppFonts.urbanist,
                  ),

                  onEditingComplete: () {
                    if (widget.enterPressed != null) {
                      FocusScope.of(context).requestFocus(FocusNode());
                      // ignore: avoid_dynamic_calls
                      widget.enterPressed!();
                    }
                  },
                  // onFieldSub  mitted: (value) {
                  //   if (widget.nextFocusNode != null) {
                  //     widget.nextFocusNode.requestFocus();
                  //   }
                  // },
                  obscureText: isPassword!,
                  readOnly: widget.isReadOnly,
                  // decoration:
                  // InputDecoration.collapsed(hintText: widget.placeholder),
                  decoration: InputDecoration(
                    // contentPadding: EdgeInsets.only(top: 10),
                    hintText: widget.placeholder,
                    border: InputBorder.none,

                    hintStyle: const TextStyle(
                      fontSize: 14,
                      color: AppColors.lightAsh,
                      fontWeight: FontWeight.w600,
                      fontFamily: AppFonts.urbanist,
                    ),
                    // suffix:
                  ),
                ),
              ),
              widget.suffix ??
                  GestureDetector(
                    onTap: () => setState(() {
                      isPassword = !isPassword!;
                    }),
                    child: widget.password
                        ? Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                            child: isPassword!
                                ? SvgPicture.asset(AppAssets.eye)
                                : SvgPicture.asset(AppAssets.eyeSlash),
                          )
                        : Container(
                            width: 30,
                            height: 30,
                            alignment: Alignment.center,
                          ),
                  ),
            ],
          ),
        ),
      ],
    );
  }
}
