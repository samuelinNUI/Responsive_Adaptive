import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

enum SingingCharacter { lafayette, jefferson }
enum Food {rice, noodle}

class CompRadioButtons extends StatefulWidget {
  const CompRadioButtons({super.key});

  @override
  State<CompRadioButtons> createState() => _CompRadioButtonsState();
}

class _CompRadioButtonsState extends State<CompRadioButtons> {
  SingingCharacter? _character = SingingCharacter.lafayette;
  Food? _food = Food.rice;

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
      label: 'Radio buttons',
      children: [
        Column(
          children: [
            const Text("Radiobutton Default"),
            RadioListTile<SingingCharacter>(
              title: const Text('Lafayette'),
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            RadioListTile<SingingCharacter>(
              title: const Text('Thomas Jefferson'),
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
            const Text("Custom"),
            RadioListTile<Food>(
              secondary: const Icon(Icons.account_circle_outlined),
              controlAffinity: ListTileControlAffinity.trailing,
              title: const Text("Rice controlAffinity trailing"),
              value: Food.rice,
              groupValue: _food,
              onChanged: (Food? value){
                setState(() {
                  _food = value;
                });
              },
            ),
            RadioListTile<Food>(
              secondary: const Icon(Icons.account_circle_outlined),
              title: const Text("Noodle"),
              value: Food.noodle,
              groupValue: _food,
              onChanged: (Food? value){
                setState(() {
                  _food = value;
                });
              },
            )
          ],
        ),
      ],
    );
  }
}
