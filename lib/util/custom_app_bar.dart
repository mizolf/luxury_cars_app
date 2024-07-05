import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Widget? icon;

  const CustomAppBar({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
          ),
          icon!,
        ],
      ),
    );
  }
}
