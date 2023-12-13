import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class ErrorHandling extends FlutterDeckSlideWidget {
  const ErrorHandling()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/error-handling',
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
            'Error Handling',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'throw an exception on the server, serialize it, and catch it in your client app',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • exceptions are treated as 500, logged and sent to client',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • Client gets ServerpodException with only SessionID number',
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
            code: '''exception: MyException
fields:
  message: String
  errorType: MyEnum''',
            fileName: 'my_exception.yaml',
            language: 'yaml',
          ),
          SizedBox(
            height: 16,
          ),
          FlutterDeckCodeHighlight(
            code: '''class ExampleEndpoint extends Endpoint {
  Future<void> doThingy(Session session) {
    // ... do stuff ...
    if (failure) {
      throw MyException(
        message: 'Failed to do thingy',
        errorType: MyEnum.thingyError,
      );
    }
  }
}''',
            language: 'dart',
            fileName: 'example_endpoint.dart',
          ),
          SizedBox(
            height: 16,
          ),
          FlutterDeckCodeHighlight(
            code: '''try {
  client.example.doThingy();
}
on (MyException) catch(e) {
  print(e.message);
}
catch(e) {
  print('Something else went wrong.');
}''',
            language: 'dart',
            fileName: 'flutter_client.dart',
          ),
        ],
      ),
    );
  }
}
