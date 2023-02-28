import 'package:dictionary/infrastructure/config/const.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@module
abstract class MiscInjectableModule {
  @Singleton()
  Future<Box> box() async {
    await Hive.openBox(HiveConst.boxName);
    return Hive.box(HiveConst.boxName);
  }
}
