import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';
import 'package:meetup_serverpod/slides/slides.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CallbackShortcuts(
      bindings: <ShortcutActivator, VoidCallback>{
        const SingleActivator(LogicalKeyboardKey.keyT): () => _changeTheme(),
      },
      child: FlutterDeckApp(
        lightTheme: FlutterDeckThemeData.fromTheme(
          ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFFf2f5f7),
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),
        ),
        darkTheme: FlutterDeckThemeData.fromTheme(
          ThemeData.from(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF16222A),
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
        ),
        configuration: const FlutterDeckConfiguration(
            header: FlutterDeckHeaderConfiguration(
              showHeader: false,
              title: 'Serverpod',
            ),
            marker: FlutterDeckMarkerConfiguration(color: Colors.red),
            background: FlutterDeckBackgroundConfiguration(
              light: lightGradientBackground,
              dark: darkGradientBackground,
            ),
            controls: FlutterDeckControlsConfiguration(
              nextKey: LogicalKeyboardKey.arrowRight,
              previousKey: LogicalKeyboardKey.arrowLeft,
              openDrawerKey: LogicalKeyboardKey.keyM,
              toggleMarkerKey: LogicalKeyboardKey.keyN,
            ),
            footer: FlutterDeckFooterConfiguration(
              showSlideNumbers: true,
              showFooter: true,
            ),
            transition: FlutterDeckTransition.slide()),
        speakerInfo: const FlutterDeckSpeakerInfo(
          name: 'Patrick Buchholz',
          description: 'Flutter Developer at Appsfactory',
          socialHandle: '',
          imagePath: 'assets/images/me.jpeg',
        ),
        themeMode: ThemeMode.dark,
        slides: const [
          IntroSlide(),
          WhatIsServerpod(),
          HowToStart(),
          ServerpodCommands(),
          StartServer(),
          RunFlutterClient(),
          ServerStructure(),
          OutroSlide(),
        ],
      ),
    );
  }

  void _changeTheme() {
    final flutterDeck = globalFlutterDeckState!;
    final themeValue = flutterDeck.themeNotifier.value;

    if (themeValue == ThemeMode.light) {
      flutterDeck.themeNotifier.value = ThemeMode.dark;
    } else {
      flutterDeck.themeNotifier.value = ThemeMode.light;
    }
  }
}
