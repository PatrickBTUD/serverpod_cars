import 'package:cars_client/cars_client.dart';
import 'package:flutter/material.dart';

class CarListItem extends StatelessWidget {
  final Car car;
  final void Function(DismissDirection) onDismissed;

  const CarListItem({super.key, required this.car, required this.onDismissed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //ref.read(carProvider).updateKilometers(car: car, addKilometers: 1000);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Dismissible(
          key: Key(car.id.toString()),
          onDismissed: onDismissed,
          background: Container(
            color: Colors.red,
            child: Text(
              'Deleting...: ${car.toString()}',
              style: const TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(car.brand),
              Text(car.model),
              Text('${((car.mileage) / 1000).toStringAsFixed(1)} tsd. km'),
              Text(
                  '${car.registrationDate.month}/${car.registrationDate.year}'),
            ],
          ),
        ),
      ),
    );
  }
}
