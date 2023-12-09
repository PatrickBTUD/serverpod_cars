import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class RunFlutterClient extends FlutterDeckSlideWidget {
  const RunFlutterClient()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/run-flutter-client',
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
            'How to run the flutter client',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'Just run it like any other Flutter project',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            '→ cars_flutter → lib → main.dart',
            style: Theme.of(context).textTheme.displayMedium,
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
      'assets/images/run_flutter_client.png',
      fit: BoxFit.contain,
    );
  }
}
