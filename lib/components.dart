import 'package:flutter/material.dart';
import 'package:responsive_adaptive/components/checkboxes.dart';
import 'package:responsive_adaptive/components/comp_drawer.dart';
import 'package:responsive_adaptive/components/comp_progress_indicator.dart';
import 'package:responsive_adaptive/components/buttons/common_buttons.dart';
import 'package:responsive_adaptive/components/buttons/floating_action_buttons.dart';
import 'package:responsive_adaptive/components/buttons/icon_buttons.dart';
import 'package:responsive_adaptive/components/buttons/segment_buttons.dart';
import 'package:responsive_adaptive/components/chips.dart';
import 'package:responsive_adaptive/components/radio_buttons.dart';
import 'package:responsive_adaptive/components/text_inputs.dart';
import 'package:responsive_adaptive/components/tooltips.dart';
import 'package:responsive_adaptive/const.dart';
import 'package:responsive_adaptive/etc/separator.dart';

class ComponentsPage extends StatefulWidget {
  const ComponentsPage({super.key});

  @override
  State<ComponentsPage> createState() => _ComponentsPageState();
}

class _ComponentsPageState extends State<ComponentsPage> {

  List<Widget> firstGroupComponents = [
    const CompCommonButtons(),
    const Separator(),
    const CompFloatingActionButtons(),
    const Separator(),
    const CompIconButtons(),
    const Separator(),
    const CompSegmentButtons(),
    const Separator(),
    const CompTextInputs(),
    const CompCheckBoxes(),
    const Separator(),
    const CompRadioButtons(),
    const Separator(),
  ];

  List<Widget> secondGroupComponents = [
    const CompChips(),
    const Separator(),
    const CompProgressIndicator(),
    const Separator(),
    const CompTooltips(),
    const Separator(),
    const CompDrawer(),
    const Separator(),
  ];

  Widget oneColumnComponents(){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Component!"),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...firstGroupComponents,
              ...secondGroupComponents
            ],
          ),
        ),
      ),
    );
  }

  Widget twoColumnComponents(){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Component!"),
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...firstGroupComponents
                  ],
                ),
              )
          ),
          const SizedBox(width: 16,),
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ...secondGroupComponents
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth < tabletWidth) {
          return oneColumnComponents();
        } else {
          return twoColumnComponents();
        }
      }
    );
  }
}


