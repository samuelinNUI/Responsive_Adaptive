import 'package:flutter/material.dart';

class ComponentGroupDecoration extends StatelessWidget {

  final String label;
  final List<Widget> children;

  const ComponentGroupDecoration({
    super.key,
    required this.label,
    required this.children
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          Text(label, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16.0,),
          ...children
        ],
      ),
    );
  }
}
