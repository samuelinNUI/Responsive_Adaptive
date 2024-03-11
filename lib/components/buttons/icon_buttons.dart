import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompIconButtons extends StatelessWidget {
  const CompIconButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Icon Buttons",
        children: [
          Wrap(
            spacing: 16,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
              IconButton.filled(onPressed: (){}, icon: const Icon(Icons.add)),
              IconButton.filledTonal(onPressed: (){}, icon: const Icon(Icons.add)),
              IconButton.outlined(onPressed: (){}, icon: const Icon(Icons.add)),
              IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.settings_outlined),
                  iconSize: 16,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  tooltip: "Change reflects the percentage\n increase or decrease since the\n previous trade.",
              )
            ],
          ),

        ],
    );
  }
}
