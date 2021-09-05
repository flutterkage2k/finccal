import 'package:hive/hive.dart';

part 'transaction.g.dart';
//transaction 이름은 part이름과 실제 파일이름이 같아야한다.

@HiveType(typeId: 0)
class Transaction extends HiveObject {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late DateTime createDate;

  @HiveField(2)
  late bool isExpense = true;

  @HiveField(3)
  late double amount;
}
