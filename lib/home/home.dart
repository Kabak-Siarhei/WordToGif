import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WordToGif'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                child: Row(
                  children: [
                    Text('Dark theme'),
                    Switch(
                      value: isDarkTheme,
                      onChanged: (changeTheme) {
                        context
                            .read<ThemeBloc>()
                            .add(ThemeChangeEvent(changeTheme));
                        setState(() {
                          isDarkTheme = changeTheme;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
            icon: Icon(Icons.dehaze),
            offset: Offset(0, 50),
          ),
        ],
      ),
    );
  }
}
