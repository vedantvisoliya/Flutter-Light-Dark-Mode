import 'package:flutter/material.dart';
import 'package:light_dark_mode/Themes/theme_provider.dart';
import 'package:light_dark_mode/pages/home_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Light & Dark Mode",
      debugShowCheckedModeBanner: false,
      home: const HomePage(),      
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}