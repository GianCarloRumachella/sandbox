import 'package:flutter/material.dart';

class HomeController {
  final TextEditingController textEditingController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  validateForm() {
    FocusManager.instance.primaryFocus?.unfocus();
    if (formKey.currentState?.validate() == true) {
      print("validando");
    } else {
      print("não validou");
    }
  }
}
