import 'package:flutter/material.dart';


// Password Validator
FormFieldValidator<String> passwordValidator({
  String emptyMessage = 'Password is required',
  String shortMessage = 'Password must be at least 6 characters',
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return emptyMessage;
    }
    if (value.length < 6) {
      return shortMessage;
    }
    return null;
  };
}

// Email Validator
FormFieldValidator<String> EmailValidator({
  String emptyMessage = 'Email is required',
  String shortMessage = 'Enter valid email',
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return emptyMessage;
    }
    if (!value.contains('@') || !value.contains('.')) {
      return shortMessage;
    }
    return null;
  };
}

// TD Validator
FormFieldValidator<String> TDlValidator({
  required String emptyMessage,
}) {
  return (value) {
    if (value == null || value.isEmpty) {
      return emptyMessage;
    }
    return null;
  };
}