import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is ThemeChangeState) {
          return Switch(
            value: state.isDarkTheme,
            onChanged: (changeTheme) {
              context.read<ThemeBloc>().add(ThemeChangeEvent(changeTheme));
            },
          );
        } else if (state is ThemeLoadingState) {
          return const SizedBox();
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
