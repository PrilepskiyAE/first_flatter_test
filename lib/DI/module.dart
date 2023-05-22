

import 'package:get_it/get_it.dart';

import '../data/AppRepositoryImpl.dart';
import '../domain/AppRepository.dart';

final getIt = GetIt.instance;




void setup() {
  getIt.registerSingleton<AppModel>(AppModelImpl());
}