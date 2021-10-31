import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/theme/theme_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        bool value = false;
        if (state is ThemeState) {
          value = state.value;
        }
        return MaterialApp(
          title: 'WordToGif',
          theme: value ? ThemeData.dark() : ThemeData.light(),
          home: HomePage(),
        );
      }),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;

  void onSwitchValue(bool value) {
    setState(() {
      this.value = value;
      context.read<ThemeBloc>().add(ThemeEvent(value));
    });
  }

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
                      value: value,
                      onChanged: (value) => onSwitchValue(value),
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
