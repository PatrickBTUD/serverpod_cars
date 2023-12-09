import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class WhatIsServerpod extends FlutterDeckSlideWidget {
  const WhatIsServerpod()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/what-is-serverpod',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16) * 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AutoSizeText(
                'What is Serverpod?',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
              ),
              const SizedBox(height: 24),
              AutoSizeText(
                ' • open source, scalable app server written in Dart',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 32),
              AutoSizeText(
                'Features',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 24),
              AutoSizeText(
                ' • uses code generation to make your life easier',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              AutoSizeText(
                ' • supports logging, provides caching and an ORM',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 16),
              AutoSizeText(
                ' • file uploads, authentication, task scheduling (cron jobs), easy deployment, and more',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        );
      },
    );
  }
}
