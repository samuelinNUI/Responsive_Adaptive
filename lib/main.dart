import 'package:flutter/material.dart';
import 'package:responsive_adaptive/main_navigator.dart';
import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'const.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ColorScheme schemeLight = SeedColorScheme.fromSeeds(
      brightness: Brightness.light,
      primaryKey: primarySeedColor,
      secondaryKey: secondarySeedColor,
      tertiaryKey: tertiarySeedColor,
      errorKey: errorSeedColor,
      // tones: myLightTones,
    );

    return MaterialApp(
      title: 'Flutter Demo',
      // From FlexSeedScheme
      theme: ThemeData(
        colorScheme: schemeLight,
        // colorSchemeSeed: primarySeedColor,
        useMaterial3: true,

        navigationDrawerTheme: NavigationDrawerThemeData(
          elevation: 2,
          surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
          shadowColor: Colors.transparent,
        ),
        navigationRailTheme: NavigationRailThemeData(
          // elevation: 2,
          backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.08),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0.0),
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0.0),
          )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0.0),
          )
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0.0)
          )
        ),
      ),

      home: const MainNavigator(),
    );
  }
}
