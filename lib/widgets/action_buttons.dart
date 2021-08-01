import 'package:bloc_practics_1/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserCubit userCubit = context.read<UserCubit>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              userCubit.fetchUsers();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Load'),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(
            onPressed: () {
              userCubit.clearhUsers();
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Clear'),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red)),
          ),
        ],
      ),
    );
  }
}
