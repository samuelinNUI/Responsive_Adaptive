import 'package:flutter/material.dart';
import 'package:responsive_adaptive/about.dart';
import 'package:responsive_adaptive/components.dart';
import 'package:responsive_adaptive/const.dart';
import 'package:responsive_adaptive/home.dart';

const labelHome = "Home";
const iconHome = Icon(Icons.home_outlined);
const iconSelectedHome = Icon(Icons.home);

const labelExplore = "About";
const iconExplore = Badge(
  child: Icon(Icons.explore_outlined),
);
const iconSelectedExplore = Badge(
  child: Icon(Icons.explore),
);

const labelComponent = "Component";
const iconComponent = Badge(
  label: Text("8"),
  child: Icon(Icons.apps_outlined),
);
const iconSelectedComponent = Badge(
  label: Text("8"),
  child: Icon(Icons.apps),
);

class MainNavigator extends StatefulWidget {
  const MainNavigator({super.key});

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {

  int currentPageIndex = 2;

  List<Widget> bottomNavigationDestinations = [
    const NavigationDestination(
      icon: iconHome,
      selectedIcon: iconSelectedHome,
      label: labelHome,
    ),
    const NavigationDestination(
      icon: iconExplore,
      selectedIcon: iconSelectedExplore,
      label: labelExplore,
    ),
    const NavigationDestination(
      icon: iconComponent,
      selectedIcon: iconSelectedComponent,
      label: labelComponent,
    ),
  ];
  List<NavigationRailDestination> navigationRailDestinations = [
    const NavigationRailDestination(
        icon: iconHome, selectedIcon: iconSelectedHome, label: Text(labelHome)),
    const NavigationRailDestination(
        icon: iconExplore,
        selectedIcon: iconSelectedExplore,
        label: Text(labelExplore)),
    const NavigationRailDestination(
        icon: iconComponent,
        selectedIcon: iconSelectedComponent,
        label: Text(labelComponent)),

  ];
  List<Widget> navigationDrawerDestinations = [
    const NavigationDrawerDestination(
        icon: iconHome, selectedIcon: iconSelectedHome, label: Text(labelHome)),
    const NavigationDrawerDestination(
        icon: iconExplore,
        selectedIcon: iconSelectedExplore,
        label: Text(labelExplore)),
    const NavigationDrawerDestination(
        icon: iconComponent,
        selectedIcon: iconSelectedComponent,
        label: Text(labelComponent)),
  ];

  List<Widget> pages = [
    const HomePage(),
    const AboutPage(),
    const ComponentsPage(),
  ];

  void changePageHandler(int index) {
    setState(() {
      currentPageIndex = index;
    });
  }

  Widget buildBottomNavigation() {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: changePageHandler,
        selectedIndex: currentPageIndex,
        destinations: bottomNavigationDestinations,
      ),
      body: pages[currentPageIndex],
    );
  }

  Widget buildNavigationRail() {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationRail(
              trailing: Column(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_horiz)),
                ],
              ),
              destinations: navigationRailDestinations,
              selectedIndex: currentPageIndex,
              onDestinationSelected: changePageHandler,
              extended: false,
              labelType: NavigationRailLabelType.all,
            ),
            // const VerticalDivider(thickness: 1, width: 1),
            Expanded(
              child: pages[currentPageIndex],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildNavigationDrawer() {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            NavigationDrawer(
              onDestinationSelected: changePageHandler,
              selectedIndex: currentPageIndex,
              children: navigationDrawerDestinations,
            ),
            Expanded(
              child: pages[currentPageIndex],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return buildBottomNavigation();
        } else if (constraints.maxWidth < tabletWidth) {
          return buildNavigationRail();
        } else {
          return buildNavigationDrawer();
        }
      },
    );
  }
}
