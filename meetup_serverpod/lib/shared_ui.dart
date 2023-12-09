import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

FlutterDeck? globalFlutterDeckState;

const darkGradientBackground = FlutterDeckBackground.gradient(
  LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.blueGrey,
      Colors.black,
    ],
  ),
);

const lightGradientBackground = FlutterDeckBackground.gradient(
  LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Colors.white,
      Colors.grey,
    ],
  ),
);

const darkSplitSideBackground = FlutterDeckSplitSlideThemeData(
  leftBackgroundColor: Colors.grey,
  leftColor: Colors.white,
  rightBackgroundColor: Colors.blueGrey,
);

const lightSplitSideBackground = FlutterDeckSplitSlideThemeData(
  leftBackgroundColor: Colors.white,
  leftColor: Colors.black,
  rightBackgroundColor: Colors.blueGrey,
);

extension SplitSlideBackground on BuildContext {
  FlutterDeckThemeData get splitThemeBackground {
    return FlutterDeckTheme.of(this).copyWith(
      splitSlideTheme:
          flutterDeck.themeNotifier.value == ThemeMode.dark ? darkSplitSideBackground : lightSplitSideBackground,
    );
  }
}

extension Background on BuildContext {
  FlutterDeckBackground get background {
    return flutterDeck.themeNotifier.value == ThemeMode.dark ? darkGradientBackground : lightGradientBackground;
  }
}

class SplitLayout extends StatelessWidget {
  final Widget leftContent;
  final Widget rightContent;
  final (int, int) flexRatio;

  const SplitLayout({
    super.key,
    required this.leftContent,
    required this.rightContent,
    this.flexRatio = (2, 1),
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: flexRatio.$1,
          child: leftContent,
        ),
        const SizedBox(
          width: 42,
        ),
        Flexible(
          flex: flexRatio.$2,
          child: Padding(padding: const EdgeInsets.only(right: 42), child: rightContent),
        ),
      ],
    );
  }
}
