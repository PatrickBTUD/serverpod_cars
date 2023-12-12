import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:url_launcher/url_launcher.dart';

class OutroSlide extends FlutterDeckSlideWidget {
  const OutroSlide()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/outro',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.template(
      contentBuilder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16) * 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: 1200,
                height: 675,
                child: Image.asset(
                  'assets/images/flutter_forward_outro.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 42),
              AutoSizeText(
                'Thank you!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge,
              ),
              const SizedBox(height: 8),
              AutoSizeText(
                'Happy Fluttering and see you at the next Flutter Meetup ${_getEmoji(context)}',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayMedium,
              ),
            ],
          ),
        );
      },
      footerBuilder: (context) {
        return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                AutoSizeText(
                  'Powered by FlutterDeck',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(
                        Uri.parse('https://pub.dev/packages/flutter_deck'),
                      );
                    },
                    child: AutoSizeText(
                      'Check it out on pub.dev',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  String _getEmoji(BuildContext context) {
    if (context.flutterDeck.themeNotifier.value == ThemeMode.dark) {
      return '👻';
    } else {
      return '🤓';
    }
  }
}
