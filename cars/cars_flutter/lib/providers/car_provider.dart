import 'package:cars_client/cars_client.dart';
import 'package:cars_flutter/providers/serverpod_provider.dart';
import 'package:refena_flutter/refena_flutter.dart';

final carViewModelProvider =
    ReduxProvider<CarViewModel, AsyncValue<List<Car>>>((ref) {
  return CarViewModel(serverpodClient: ref.read(serverpodClientProvider));
});

class CarViewModel extends ReduxNotifier<AsyncValue<List<Car>>> {
  final Client serverpodClient;

  CarViewModel({super.debugLabel, required this.serverpodClient});

  @override
  AsyncValue<List<Car>> init() => const AsyncValue.loading();
}

class GetAllAction
    extends AsyncReduxAction<CarViewModel, AsyncValue<List<Car>>> {
  final bool orderByRegistration;

  GetAllAction({this.orderByRegistration = false});

  @override
  Future<AsyncValue<List<Car>>> reduce() async {
    final cars = await notifier.serverpodClient.car.getAll(orderByRegistration);
    return AsyncValue.data(cars ?? []);
  }
}

class DeleteCarAction
    extends AsyncReduxAction<CarViewModel, AsyncValue<List<Car>>> {
  final Car car;

  DeleteCarAction({required this.car});

  @override
  Future<AsyncValue<List<Car>>> reduce() async {
    final deleted = await notifier.serverpodClient.car.deleteCar(car);
    if (deleted) {
      final currentCars = state.data ?? [];

      currentCars.remove(car);

      return AsyncValue.data(currentCars);
    }
    return AsyncValue.error(
      'Could not delete',
      StackTrace.fromString('Could not delete'),
    );
  }
}
