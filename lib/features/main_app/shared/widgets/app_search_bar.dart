import 'package:flutter/material.dart';

class AppSearchBar extends StatelessWidget {
  final String hint;
  final Widget trailing;

  const AppSearchBar({
    super.key,
    required this.hint,
    this.trailing = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: Colors.grey),
          const SizedBox(width: 8),
          Expanded(
            child: Text(hint, style: const TextStyle(color: Colors.grey)),
          ),
          trailing,
        ],
      ),
    );
  }
}
