import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

String label = """
To show a popup menu, use the showMenu function. To create a button that shows a popup menu, consider using PopupMenuButton.""";

class CompTooltips extends StatelessWidget {
  const CompTooltips({super.key});

  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
        label: "Tooltips",
        children: [
          Tooltip(
            richMessage: WidgetSpan(
              alignment: PlaceholderAlignment.baseline,
              baseline: TextBaseline.alphabetic,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 240),
                child: Text(label, style: TextStyle(color: Theme.of(context).colorScheme.background, fontSize: 12),),
              )
            ),
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined)),
          ),
          Tooltip(
            message: label,
            child: IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined)),
          ),
        ]
    );
  }
}
