import 'package:flutter/material.dart';

class AppButtonWidget extends StatefulWidget {
  final void Function()? onPressed;
  final String label;

  const AppButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  State<AppButtonWidget> createState() => _AppButtonWidgetState();
}

class _AppButtonWidgetState extends State<AppButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
      ),
      onPressed: widget.onPressed,
      child: Text(
        widget.label,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
