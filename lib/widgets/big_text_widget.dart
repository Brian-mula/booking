import 'package:booking/theme/theme_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BigTextWidget extends ConsumerWidget {
  String text;
  Color color;
  double size;
  BigTextWidget(
      {Key? key,
      this.size = 20,
      this.color = ThemeFile.bookingwhite,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
