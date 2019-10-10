import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todos/providers/todos_model.dart';
import 'package:provider_todos/screens/home_screen.dart';

void main() => runApp(ProviderTodosApp());

class ProviderTodosApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TodosModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Todos',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}