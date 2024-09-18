import 'package:datajud_api_test/Models/Tribunal/tribunal_store.dart';
import 'package:datajud_api_test/Models/processo/processo_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Ui/Pages/HomePage/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProcessoStore())
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DataJud Api Test',
        home: HomePage(),
      ),
    );
  }
}