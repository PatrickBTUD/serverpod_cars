import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class StartServer extends FlutterDeckSlideWidget {
  const StartServer()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/start-server',
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
            'Starting the server',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 24),
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'cd cars/cars_server',
              language: 'bash',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'docker compose up --build --detach',
              language: 'bash',
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 42.0),
            child: FlutterDeckCodeHighlight(
              code: 'dart bin/main.dart',
              language: 'bash',
            ),
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            'For development it starts three server',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • Insight Server',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchUrl(
                  Uri.parse('http://localhost:8082'),
                );
              },
              child: AutoSizeText(
                ' • Web Server',
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ),
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • (Dart) Server',
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
      'assets/images/serverpod_run_server.png',
    );
  }
}
