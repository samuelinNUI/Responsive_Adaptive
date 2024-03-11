import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompCommonButtons extends StatelessWidget {
  const CompCommonButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Common Buttons",
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: const Text("Elevated")
                  ),
                  FilledButton(onPressed: (){}, child: const Text("Filled")),
                  FilledButton.tonal(onPressed: (){}, child: const Text("Tonal")),
                  OutlinedButton(onPressed: (){}, child: const Text("Outlined")),
                  TextButton(onPressed: (){}, child: const Text("Text")),
                  FilledButton.tonal(
                      onPressed: (){},
                      style: TextButton.styleFrom(padding:const EdgeInsets.fromLTRB(24, 0, 16, 0)),
                      child: const Row(children: [
                        Text("Custom Icon Pos"),
                        SizedBox(width: 4),
                        Icon(Icons.add)
                      ],),
                  ),
                ],
              ),
              const SizedBox(width: 8,),
              Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 8,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                    label: const Text('Icon'),
                  ),
                  FilledButton.icon(
                    onPressed: (){},
                    icon: const Icon(Icons.add),
                    label: const Text('Icon'),
                  ),
                  FilledButton.tonalIcon(
                      onPressed: (){},
                      icon: const Icon(Icons.add),
                      label: const Text("Tonal")
                  ),
                  OutlinedButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.add),
                      label: const Text("Outlined")
                  ),
                  TextButton.icon(
                      onPressed: (){},
                      icon: const Icon(Icons.add),
                      label: const Text("Text")
                  ),
                ],
              ),
            ],
          )
        ]
    );
  }
}
