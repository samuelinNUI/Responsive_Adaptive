import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

bool isChecked0 = false;
bool isChecked1 = false;
bool isChecked2 = false;
bool isChecked3 = false;

class CompCheckBoxes extends StatefulWidget {
  const CompCheckBoxes({super.key});

  @override
  State<CompCheckBoxes> createState() => _CompCheckBoxesState();
}

class _CompCheckBoxesState extends State<CompCheckBoxes> {
  
  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Checkboxes",
        children: [
          Column(
            children: [
              const Text("CheckboxListTile"),
              CheckboxListTile(
                value: isChecked0,
                title: const Text('Default 1'),
                onChanged: (value) {
                  setState(() {
                    isChecked0 = value!;
                  });
                },
              ),
              CheckboxListTile(
                value: isChecked1,
                title: const Text('Default 2'),
                onChanged: (value) {
                  setState(() {
                    isChecked1 = value!;
                  });
                },
              ),
              const Text("Custom"),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                value: isChecked2,
                title: const Text('Checkbox at left'),
                onChanged: (value) {
                  setState(() {
                    isChecked2 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: const Text('Icon with Checkbox'),
                secondary: const Icon(
                  Icons.face_outlined,
                ),
                value: isChecked3,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked3 = value!;
                  });
                },
              ),
            ],
          ),
        ]
    );
  }
}
