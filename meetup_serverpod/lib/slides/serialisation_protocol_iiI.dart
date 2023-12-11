import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class SerialisationProtocolIII extends FlutterDeckSlideWidget {
  const SerialisationProtocolIII()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/seralisation-protocol-iii',
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
            'Seralisation of data - protocol',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'custom serialisation also possible',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' 1. method toJson() which returns a JSON serialization of the object',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' 2. constructor or factory called fromJson()',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' 3. declare your custom serializable objects in the config/generator.yaml file',
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
        children: [
          FlutterDeckCodeHighlight(
            code: '''import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';

part 'freezed_custom_class.freezed.dart';
part 'freezed_custom_class.g.dart';

@freezed
class FreezedCustomClass with _\$FreezedCustomClass {
  const factory FreezedCustomClass({
    required String firstName,
    required String lastName,
    required int age,
  }) = _FreezedCustomClass;

  factory FreezedCustomClass.fromJson(
    Map<String, Object?> json,
    SerializationManager serializationManager,
  ) =>
          _\$FreezedCustomClassFromJson(json);
}
            ''',
            fileName: 'my_custom_class.dart',
            language: 'dart',
          ),
          SizedBox(height: 16,),
          FlutterDeckCodeHighlight(code: '''extraClasses:
  - package:your_package_name/my_custom_class.dart:FreezedCustomClass
          ''', language: 'yaml', fileName: 'config/generator.yaml',)
        ],
      ),
    );
  }
}
