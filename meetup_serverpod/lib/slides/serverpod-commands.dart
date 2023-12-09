import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class ServerpodCommands extends FlutterDeckSlideWidget {
  const ServerpodCommands()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/serverpod-commands',
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
            'Commands',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 24),
          AutoSizeText(
            'Creating a project',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'serverpod create cars',
              language: 'bash',
            ),
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • generate classes when changing anything in protocol or endpoints',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'serverpod generate',
              language: 'bash',
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
      'assets/images/serverpod_create_result.png',
      height: 650,
      width: 650,
    );
  }
}
