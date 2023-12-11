import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class SerialisationProtocolII extends FlutterDeckSlideWidget {
  const SerialisationProtocolII()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/seralisation-protocol-ii',
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
            'Seralisation of data - protocol',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            ' • what about extending generated classed → use Dart extension feature',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • visibility',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • documentation can be added with ###',
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
      child: FlutterDeckCodeHighlight(
        code: '''
### Secret Information just for the server.
class: MyPrivateClass
### use serverOnly: true to make class only available for server
serverOnly: true
fields:
  ### add your secret key here
  hiddenSecretKey: String
        ''',
        fileName: 'my_private_class.yaml',
        language: 'yaml',
      ),
    );
  }
}
