import 'package:flutter/material.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu({
    super.key,
    required this.items,
    required this.onChanged,
    this.value,
    this.hint,
  });

  final Widget? hint;
  final List<String> items;
  final String? value;
  final ValueSetter<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: hint,
        items: items
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
