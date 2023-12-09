import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class ServerStructure extends FlutterDeckSlideWidget {
  const ServerStructure()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/server-structure',
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
            'Structure of the server',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            ' • main.dart',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • config',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • endpoints',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • protocol',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • web',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • docker',
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
    return Image.asset(
      'assets/images/cars_server_structure.png',
      height: 1200,
      width: 400,
      fit: BoxFit.contain,
    );
  }
}
