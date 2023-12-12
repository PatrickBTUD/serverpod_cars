import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AdvancedTopics extends FlutterDeckSlideWidget {
  const AdvancedTopics()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/advanced-topics',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Advanced Topics',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 42),
          Text(
            ' • Performance metrics, Authentication, Modules',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          Text(
            'Files, Streams,Deployment, Web Server',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 42 * 5),
          Text(
            'We will talk about this in a future meetup 🤓',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
