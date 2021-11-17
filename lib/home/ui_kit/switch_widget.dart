import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return state.map(
          loadingState: (value) => const SizedBox(),
          changeState: (value) => Switch(
            value: value.isDarkTheme,
            onChanged: (changeTheme) {
              context
                  .read<ThemeBloc>()
                  .add(ThemeEvent.changeEvent(isDarkTheme: changeTheme));
            },
          ),
        );
      },
    );
  }
}
