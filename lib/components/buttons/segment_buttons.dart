import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompSegmentButtons extends StatelessWidget {
  const CompSegmentButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
        label: "Segment Buttons",
        children: [
          Text("Single Choice"),
          SingleChoice(),
          SizedBox(height: 16,),
          Text("Multiple Choice"),
          MultipleChoice(),
        ],
    );
  }
}

enum View { list, grid, tile }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  View layoutView = View.list;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<View>(
      segments: const <ButtonSegment<View>>[
        ButtonSegment<View>(
            value: View.list,
            label: Text('List'),
            icon: Icon(Icons.reorder_outlined)),
        ButtonSegment<View>(
            value: View.grid,
            label: Text('Grid'),
            icon: Icon(Icons.grid_view_outlined)),
        ButtonSegment<View>(
            value: View.tile,
            label: Text('Tile'),
            icon: Icon(Icons.view_list_outlined)),
      ],
      selected: <View>{layoutView},
      onSelectionChanged: (newSelection) {
        setState(() {
          layoutView = newSelection.first;
        });
      },
    );
  }
}


enum Sizes { extraSmall, small, medium, large, extraLarge }

class MultipleChoice extends StatefulWidget {
  const MultipleChoice({super.key});

  @override
  State<MultipleChoice> createState() => _MultipleChoiceState();
}

class _MultipleChoiceState extends State<MultipleChoice> {
  Set<Sizes> selection = <Sizes>{Sizes.large, Sizes.extraLarge};
  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Sizes>(
      segments: const <ButtonSegment<Sizes>>[
        ButtonSegment<Sizes>(value: Sizes.extraSmall, label: Text('XS')),
        ButtonSegment<Sizes>(value: Sizes.small, label: Text('S')),
        ButtonSegment<Sizes>(value: Sizes.medium, label: Text('M')),
        ButtonSegment<Sizes>(
          value: Sizes.large,
          label: Text('L'),
        ),
        ButtonSegment<Sizes>(value: Sizes.extraLarge, label: Text('XL')),
      ],
      selected: selection,
      onSelectionChanged: (newSelection) {
        setState(() {
          selection = newSelection;
        });
      },
      multiSelectionEnabled: true,
      emptySelectionAllowed: true,
    );
  }
}
