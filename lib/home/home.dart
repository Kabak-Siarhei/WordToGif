import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        title: Text(AppLocalizations.of(context)?.title ?? "Null"),
        actions: [
          Switch(
            value: isDarkTheme,
            onChanged: (changeTheme) {
              context.read<ThemeBloc>().add(ThemeChangeEvent(changeTheme));
              setState(() {
                isDarkTheme = changeTheme;
              });
            },
          ),
        ],
      ),
    );
  }
}
