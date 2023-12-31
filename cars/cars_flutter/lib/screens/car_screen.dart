import 'package:cars_flutter/providers/car_provider.dart';
import 'package:cars_flutter/widgets/car_list_item.dart';
import 'package:flutter/material.dart';
import 'package:refena_flutter/refena_flutter.dart';

class CarScreen extends StatelessWidget {
  const CarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final carViewModel = context.watch(carViewModelProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Serverpod Cars'),
        actions: [
          IconButton(
            onPressed: () {
              context
                  .redux(carViewModelProvider)
                  .dispatchAsync(GetAllAction(orderByRegistration: true));
            },
            icon: const Icon(
              Icons.refresh,
            ),
          ),
          IconButton(
            onPressed: () {
              context.redux(carViewModelProvider).dispatchAsync(AddCarAction());
            },
            icon: const Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: carViewModel.when(
          data: (carsData) {
            if (carsData.isNotEmpty) {
              return ListView(
                children: carsData
                    .map(
                      (car) => CarListItem(
                        car: car,
                        onDismissed: (_) {
                          context
                              .redux(carViewModelProvider)
                              .dispatchAsync(DeleteCarAction(car: car));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Deleted: ${car.toString()}',
                              ),
                            ),
                          );
                        },
                      ),
                    )
                    .toList(),
              );
            }
            return const Text('No cars available yet');
          },
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          error: (error, _) => Text(
            error.toString(),
          ),
        ),
      ),
    );
  }
}
