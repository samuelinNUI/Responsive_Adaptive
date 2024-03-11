import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:responsive_adaptive/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  // late Color myColor = Theme.of(context).colorScheme.primary;
  // late String colorValue = myColor as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverPadding(
            padding: ScreenSize.isMobile(context)
                ? const EdgeInsets.all(16)
                : ScreenSize.isTablet(context)
                  ? const EdgeInsets.all(16)
                  : const EdgeInsets.all(24),
            sliver: SliverGrid.count(
              crossAxisSpacing: ScreenSize.isMobile(context) ? 16 : ScreenSize.isTablet(context) ? 16 : 24,
              mainAxisSpacing: ScreenSize.isMobile(context) ? 16 : ScreenSize.isTablet(context) ? 16 : 24,
              crossAxisCount: ScreenSize.isMobile(context) ? 1 : ScreenSize.isTablet(context) ? 1 : 2,
              childAspectRatio: 3.0,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[100],
                  child: Wrap(
                    children: [
                      const Text("He'd have you all unravel at the"),
                      FilledButton(
                          onPressed: (){
                            var myColor = Theme.of(context).scaffoldBackgroundColor;
                            var hex = '$myColor';
                            log(
                                hex
                            );
                          },
                          child: const Text("Get Hex Color")
                      ),
                    ],
                  )
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.green[300],
                  child: const Text('Sound of screams but the'),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: ScreenSize.isMobile(context)
                ? const EdgeInsets.all(16)
                : ScreenSize.isTablet(context)
                ? const EdgeInsets.all(16)
                : const EdgeInsets.all(24),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300.0,
                mainAxisSpacing: ScreenSize.isMobile(context) ? 16 : ScreenSize.isTablet(context) ? 16 : 24,
                crossAxisSpacing: ScreenSize.isMobile(context) ? 16 : ScreenSize.isTablet(context) ? 16 : 24,
                childAspectRatio: 1.0,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    color: Colors.teal[100 * (index % 9)],
                    padding: const EdgeInsets.all(8),
                    child: Text('grid item $index'),
                  );
                },
                childCount: 8,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Theme Toggle",
        child: const Icon(Icons.account_circle_outlined),
      ),
    );
  }
}
