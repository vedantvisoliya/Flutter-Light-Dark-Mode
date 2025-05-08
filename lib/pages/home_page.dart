import 'package:flutter/material.dart';
import 'package:light_dark_mode/components/my_box.dart';
import 'package:light_dark_mode/components/my_button.dart';
import 'package:provider/provider.dart';
import 'package:light_dark_mode/Themes/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary, 
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary, 
            onTap: (){
              Provider.of<ThemeProvider>(context, listen: false,).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}