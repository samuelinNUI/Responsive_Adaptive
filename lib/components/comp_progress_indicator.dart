import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompProgressIndicator extends StatelessWidget {
  const CompProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
        label: "Progress Indicators",
        children: [
          CircularProgressIndicator(
          ),
          SizedBox(height: 16,),
          LinearProgressIndicator(
          )
        ]
    );
  }
}
