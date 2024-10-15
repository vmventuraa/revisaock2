import 'package:get/get.dart';
import 'package:revisaock2/database/app.database.dart';
import 'package:revisaock2/domain/animal.dart';

class AnimalController extends GetxController {
  final Rx<bool> _status = Rx(false);
  AnimalDataBase animalDatabase = AnimalDataBase.instance;

  AnimalController();

  saveAnimal(Animal value, {required String name, required String race, required String age}) async {
    await animalDatabase.insert(value);
    _status.value = true;
  }
}
