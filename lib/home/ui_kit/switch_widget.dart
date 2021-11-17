import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:word_to_gif/home/blocs/theme/theme_bloc.dart';

class SwitchWidget extends StatelessWidget {
  const SwitchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return state.maybeWhen(
          themeLoadingState: () => const SizedBox(),
          themeChangeState: (value) => Switch(
            value: value,
            onChanged: (changeTheme) {
              context
                  .read<ThemeBloc>()
                  .add(ThemeEvent.changeEvent(isDarkTheme: changeTheme));
            },
          ),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
