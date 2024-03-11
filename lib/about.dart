import 'package:flutter/material.dart';
import 'package:responsive_adaptive/home.dart';
import 'package:responsive_adaptive/utils.dart';

enum SingingCharacter { lafayette, jefferson }
bool checkboxValue1 = true;
bool checkboxValue2 = true;
bool checkboxValue3 = true;
bool checkboxValue4 = true;

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}



class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).colorScheme.surfaceTint.withOpacity(0.05),
      appBar: AppBar(
        title: const Text("About"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: const Text("Home"),
            ),
            Container(
              color: ScreenSize.isDesktop(context) ? Colors.yellow: ScreenSize.isTablet(context) ? Colors.green: Colors.blue,
              width: 300,
              height: 300,
              child: Text(ScreenSize.screenWidth(context).toString()),
            ),
            SizedBox(
              width: 300,
              height: 1000,

              child: Material(
                color: Theme.of(context).colorScheme.surface,
                surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
                elevation: 2,
                shadowColor: Colors.transparent,
              ),
            ),
            LayoutBuilder(
                builder: (context, constraints){
                  if(constraints.maxWidth < 600){
                    return const Divider(indent: 16, endIndent: 16,);
                  } else {
                    return const Divider(indent: 24, endIndent: 24,);
                  }
                }
            ),
          ],
        ),
      ),
    );
  }
}
