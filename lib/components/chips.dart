import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompChips extends StatelessWidget {
  const CompChips({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Chips",
        children: [
          Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              FilterChip(
                label: const Text("Filter"),
                onSelected:(bool selected){},
                selected: false,
              ),
              FilterChip(
                label: const Text("Filter"),
                onSelected:(bool selected){},
                selected: true,
              ),
              InputChip(
                label: const Text("Input"),
                isEnabled: true,
                selected: false,
                deleteIcon: const Icon(Icons.arrow_drop_down_outlined),
                onDeleted: (){},
                onPressed: (){},
              ),
              InputChip(
                label: const Text("Input"),
                isEnabled: true,
                selected: true,
                deleteIcon: const Icon(Icons.arrow_drop_down_outlined, size: 16),
                onDeleted: (){},
                onPressed: (){},
                checkmarkColor: Theme.of(context).primaryColor,
              ),
              ChoiceChip(
                  label: const Text("Choice"),
                  selected: false,
                  onSelected:(bool selected){}
              ),
              ChoiceChip(
                  label: const Text("Choice"),
                  selected: true,
                  onSelected:(bool selected){}
              ),
              Chip(
                  label: const Text("Chip"),
                  deleteIcon: const Icon(Icons.close_outlined, size: 16),
                  onDeleted: (){},
              ),
              RawChip(
                  label: const Text("Raw Chip"),
                  selected: true,
                  deleteIcon: const Icon(Icons.arrow_drop_down, size: 16),
                  onDeleted: (){},
                  onPressed: (){},
              ),
            ],
          )
        ]);
  }
}
