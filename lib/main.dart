import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:word_to_gif/home/home.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeChangeState>(
        builder: (context, state) {
        bool isDarkTheme = false;
        if (state is ThemeChangeState) {
          isDarkTheme = state.isDarkTheme;
        }
        return MaterialApp(
          title: 'WordToGif',
          theme: isDarkTheme ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        );
      }),
    );
  }
}