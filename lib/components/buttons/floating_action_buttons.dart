import "package:flutter/material.dart";
import "package:responsive_adaptive/component_group_decoration.dart";

class CompFloatingActionButtons extends StatelessWidget {
  const CompFloatingActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Floating Action Buttons",
        children: [
          Wrap(
            spacing: 16,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FloatingActionButton.small(
                onPressed: (){},
                tooltip: 'Small',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton.extended(
                onPressed: () {},
                tooltip: 'Extended',
                icon: const Icon(Icons.add),
                label: const Text('Create'),
              ),
              FloatingActionButton(
                onPressed: () {},
                tooltip: 'Standard',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton.large(
                onPressed: () {},
                tooltip: 'Large',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ]
    );
  }
}
