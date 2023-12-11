import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class Endpoint extends FlutterDeckSlideWidget {
  const Endpoint()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/endpoint',
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
            'Endpoint',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'connection point between server and client',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • all endpoints need to be added to lib/src/endpoints and extend Endpoint class',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • return a Future and first parameter is Session',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • Session gives access to database, logging, holds information of call',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
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
            code: '''import 'package:serverpod/serverpod.dart';

class ExampleEndpoint extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello \$name';
  }
}''',
            fileName: 'example_endpoint.dart',
            language: 'dart',
          ),
          SizedBox(
            height: 16,
          ),
          FlutterDeckCodeHighlight(
            code: '''var result = await client.example.hello('World');''',
            language: 'dart',
            fileName: 'main.dart',
          )
        ],
      ),
    );
  }
}
