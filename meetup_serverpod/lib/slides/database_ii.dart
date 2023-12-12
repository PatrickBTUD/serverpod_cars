import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:meetup_serverpod/shared_ui.dart';

class DatabaseII extends FlutterDeckSlideWidget {
  const DatabaseII()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/database-ii',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const SplitLayout(
        leftContent: _LeftContent(),
        rightContent: _RightContent(),
        flexRatio: (3, 1),
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
            'Database II',
            style: Theme.of(context).textTheme.displayLarge?.copyWith(decoration: TextDecoration.underline),
          ),
          const SizedBox(height: 32),
          AutoSizeText(
            'there are a lot more features',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • field scopes, indexes, parent/child relationship, store objects or references',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 24),
          AutoSizeText(
            'working with the database',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • find, where, multiple rows',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          AutoSizeText(
            ' • expressions, ordering, transactions, raw queries',
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
//           FlutterDeckCodeHighlight(
//             code: '''Future<String> addCar(Session session, Car car) async {
//     Car.insert(session, car);
//
//     return '201: Created';
//   }
//
//   Future<Car?> getCarById(Session session, int id) async {
//     var foundCar = await Car.findById(session, id);
//
//     return foundCar;
//   }''',
//             fileName: 'server → car_endpoint.dart',
//             language: 'dart',
//           ),
//           SizedBox(
//             height: 16,
//           ),
//           FlutterDeckCodeHighlight(
//             code: '''
// final bmwCar = Car(
//   brand: 'BMW',
//   model: '5.30i',
//   mileage: 10000,
//   registrationDate: DateTime(2018, 06),
//   value: 40000,
// );
// await client.car.addCar(bmwCar);
// final carFromServer = await client.car.getCarById(1);''',
//             language: 'dart',
//             fileName: 'flutter → main.dart',
//           )
        ],
      ),
    );
  }
}
