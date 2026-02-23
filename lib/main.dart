import 'package:finance_manager/features/transactions/screens/transactions_screen.dart';
import 'package:finance_manager/repositories/transactions_Repository.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://xistrwmuumcoeatbgnsj.supabase.co',
    anonKey: 'sb_publishable_IQxNiJ00nn4WzWv7N1pjMg_YsM1JY9u',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: TransactionsScreen());
  }
}