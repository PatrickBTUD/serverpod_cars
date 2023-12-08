import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroSlide extends FlutterDeckSlideWidget {
  const IntroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/intro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    globalFlutterDeckState = context.flutterDeck;
    return FlutterDeckSlide.blank(
      builder: (context) {
        return const SplitLayout(
          leftContent: _LeftContent(),
          rightContent: _RightContent(),
        );
      },
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
            'Serverpod',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(height: 8),
          AutoSizeText(
            'An introduction',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 64),
          _SpeakerInfo(speakerInfo: context.flutterDeck.speakerInfo!),
        ],
      ),
    );
  }
}

class _RightContent extends StatelessWidget {
  const _RightContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/illustration.webp',
          fit: BoxFit.contain,
        ),
        GestureDetector(
          onTap: () {
            launchUrl(Uri.parse('https://serverpod.dev/'));
          },
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Text(
              'Source: https://serverpod.dev/',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ),
        )
      ],
    );
  }
}

class _SpeakerInfo extends StatelessWidget {
  const _SpeakerInfo({
    required this.speakerInfo,
  });

  final FlutterDeckSpeakerInfo speakerInfo;

  @override
  Widget build(BuildContext context) {
    const imageHeight = 160.0;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          speakerInfo.imagePath,
          height: imageHeight,
          width: imageHeight,
        ),
        const SizedBox(width: 32),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              speakerInfo.name,
              style: Theme.of(context).textTheme.displaySmall,
              maxLines: 1,
            ),
            AutoSizeText(
              speakerInfo.description,
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 1,
            ),
            AutoSizeText(
              speakerInfo.socialHandle,
              style: Theme.of(context).textTheme.headlineMedium,
              maxLines: 1,
            ),
          ],
        ),
      ],
    );
  }
}
