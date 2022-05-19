import 'package:booking/theme/theme_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextInputWidget extends ConsumerWidget {
  TextEditingController controller;
  IconData icon;
  TextInputType inputType;
  String label;
  TextInputWidget(
      {Key? key,
      required this.controller,
      required this.icon,
      required this.inputType,
      required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 50,
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: ThemeFile.bookingBlack1,
          ),
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
      ),
    );
  }
}
