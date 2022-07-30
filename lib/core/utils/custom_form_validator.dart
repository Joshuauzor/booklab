import 'package:booklab/core/core.dart';
import 'package:flutter/material.dart';

class CustomFormValidation {
  static Color getColor(
    String? text,
    FocusNode focus,
    String? validationError,
  ) {
    if (focus.hasFocus && text == null) {
      return AppColors.kDanger;
    } else if (focus.hasFocus &&
        text!.isEmpty &&
        validationError != null &&
        validationError.isNotEmpty) {
      return AppColors.kDanger;
    } else if (focus.hasFocus &&
        text!.isNotEmpty &&
        validationError != null &&
        validationError.isEmpty) {
      return AppColors.primaryColor;
    } else if (text != null &&
        text.isNotEmpty &&
        validationError != null &&
        validationError.isEmpty) {
      return AppColors.primaryColor;
    } else if (validationError != null && validationError.isNotEmpty) {
      return AppColors.kDanger;
    } else {
      return const Color(0xffEBEAED);
    }
  }

  static Color getColorBvn(String? text, FocusNode focus) {
    if (focus.hasFocus && text == null) {
      return const Color.fromRGBO(255, 255, 255, 0.1);
    }
    if (focus.hasFocus && text != null && text.isEmpty) {
      return Colors.redAccent;
    } else if (text != null && text.length != 11) {
      return Colors.redAccent;
    } else if (focus.hasFocus && text != null && text.isNotEmpty) {
      return const Color(0xffEBEAED);
    } else {
      return const Color(0xffEBEAED);
    }
  }

  static String errorEmailMessage(
    String? text,
    String message, [
    String? type,
  ]) {
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (EmailValidator.validEmail(text) == false) {
      return 'Email must be a valid email address';
    } else {
      return '';
    }
  }

  static String errorMessage(String? text, String message, [String? type]) {
    // var text = text ? '' : message;
    // return text;
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else {
      return '';
    }
  }

  static String errorMessagePassword(
    String? text,
    String message, [
    String? type,
  ]) {
    // var text = text ? '' : message;
    // return text;
    // final hasUpperCase = RegExp('(?:[A-Z])');
    // final hasLowerCase = RegExp('(?:[a-z])');
    // final hasSymbols = RegExp(r"[!@#$%^&*(),\|+=;.?':{}|<>]");
    // final hasANumber = RegExp('(?=.*?[0-9])');
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length <= 5) {
      return 'Password must have 5 or more characters';
    }
    //  else if (!hasANumber.hasMatch(text)) {
    //   return 'Password must have at least a number';
    // } else if (!hasLowerCase.hasMatch(text)) {
    //   return 'Password must have at a lower character';
    // } else if (!hasSymbols.hasMatch(text)) {
    //   return 'Password must have at a special character';
    // } else if (!hasUpperCase.hasMatch(text)) {
    //   return 'Password must have at a upper character';
    // }
    else {
      return '';
    }
  }

  static String errorMessageConfirmPassword(
    String? text,
    String message,
    String password, [
    String? type,
  ]) {
    final hasUpperCase = RegExp('(?:[A-Z])');
    final hasLowerCase = RegExp('(?:[a-z])');
    final hasSymbols = RegExp(r"[!@#$%^&*(),\|+=;.?':{}|<>]");
    final hasANumber = RegExp('(?=.*?[0-9])');
    // var text = text ? '' : message;
    // return text;
    if (text == null) {
      return '';
    } else if (text.isEmpty) {
      return message;
    } else if (text.length <= 7) {
      return 'Password must have 8 or more characters';
    } else if (text != password) {
      return 'Confirmation password must match password';
    } else if (!hasANumber.hasMatch(text)) {
      return 'Password must have at least a number';
    } else if (!hasLowerCase.hasMatch(text)) {
      return 'Password must have at a lower character';
    } else if (!hasSymbols.hasMatch(text)) {
      return 'Password must have at a special character';
    } else if (!hasUpperCase.hasMatch(text)) {
      return 'Password must have at a upper character';
    } else {
      return '';
    }
  }
}
