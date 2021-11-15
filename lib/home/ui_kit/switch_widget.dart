import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';


class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Switch(
          value: (state as ThemeChangeState).isDarkTheme,
          onChanged: (changeTheme) {
            context.read<ThemeBloc>().add(ThemeChangeEvent(changeTheme));
          },
        );
      },
    );
  }
}