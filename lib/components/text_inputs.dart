import 'package:flutter/material.dart';
import 'package:responsive_adaptive/component_group_decoration.dart';

class CompTextInputs extends StatefulWidget {
  const CompTextInputs({super.key});

  @override
  State<CompTextInputs> createState() => _CompTextInputsState();
}

class _CompTextInputsState extends State<CompTextInputs> {
  @override
  Widget build(BuildContext context) {
    return ComponentGroupDecoration(
      label: "Text Inputs",
      children: [
        const TextField(
          decoration: InputDecoration(
            labelText: "Filled label",
            hintText: "Placeholder label",
            helperText: "Helper text goes here",
            filled: true
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: "Filled label",
            hintText: "Placeholder label",
            helperText: "Helper text goes here",
            filled: true,
            errorText: "Error Text",
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: "Filled label",
            hintText: "Placeholder label",
            helperText: "Helper text goes here",
            filled: true,
            prefixIcon: const Icon(Icons.location_on_outlined),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.cancel_outlined)
            )
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: "Outline label",
            hintText: "Placeholder label",
            helperText: "Helper text goes here",
            filled: false,
            border: OutlineInputBorder()
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TextField(
          decoration: InputDecoration(
              labelText: "Outline label",
              hintText: "Placeholder label",
              helperText: "Helper text goes here",
              filled: false,
              errorText: "Error Text",
              border: OutlineInputBorder()
          ),
        ),
        const SizedBox(height: 16,),
        TextField(
          decoration: InputDecoration(
              labelText: "Filled label",
              hintText: "Placeholder label",
              helperText: "Helper text goes here",
              filled: true,
              prefixIcon: const Icon(Icons.location_on_outlined),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cancel_outlined)
              ),
              border: const OutlineInputBorder()
          ),
        ),
      ],
    );
  }
}
