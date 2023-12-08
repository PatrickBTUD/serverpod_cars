import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class Slide2 extends FlutterDeckSlideWidget {
  const Slide2()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/slide2',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SplitLayout(
        leftContent: _LeftContent(),
        rightContent: _RightContent(),
      ),
    );
  }
}

class _LeftContent extends StatelessWidget {
  const _LeftContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16) * 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'How to get started',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 24),
          AutoSizeText(
            'What you need:',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            ' • Flutter & Dart (obviously 🤓)',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          AutoSizeText(
            ' • Docker',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • Serverpod CLI',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'dart pub global activate serverpod_cli',
              language: 'bash',
            ),
          ),
          AutoSizeText(
            ' • Optional Serverpod Insights App',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse('https://docs.serverpod.dev/insights'),
                );
              },
              child: AutoSizeText(
                ' • https://docs.serverpod.dev/insights',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _RightContent extends StatelessWidget {
  const _RightContent();

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/serverpod-screenshot.webp',
      height: 650,
      width: 650,
    );
  }
}
