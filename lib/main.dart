import 'package:finccal/models/transaction.dart';
import 'package:finccal/page/transaction_page.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const darkBlueColor = Color(0xff486579);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(TransactionAdapter());
  await Hive.openBox<Transaction>('transactions');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'calculator day',
      theme: ThemeData(
        primaryColor: darkBlueColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TransactionPage(),
    );
  }
}
