import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class Logging extends FlutterDeckSlideWidget {
  const Logging()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/logging',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SplitLayout(
        leftContent: _LeftContent(),
        rightContent: _RightContent(),
        flexRatio: (1, 1),
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
            'Logging',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'logs are stored in db, easy searchable',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • Serverpod Insights app can be used to review logs',
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
    return const Padding(
      padding: EdgeInsets.only(right: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FlutterDeckCodeHighlight(
            code: '''session.log('This is working well');''',
            fileName: 'log_example.dart',
            language: 'dart',
          ),
          SizedBox(
            height: 16,
          ),
          FlutterDeckCodeHighlight(
            code: '''
session.log(
  'Oops, something went wrong',
  level: LogLevel.warning,
  exception: e,
  stackTrace: stackTrace,
);''',
            language: 'dart',
            fileName: 'advanced_log_example.dart',
          )
        ],
      ),
    );
  }
}
