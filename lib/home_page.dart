import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'bloc/user_bloc.dart';
import 'cubit/user_cubit.dart';
import 'services/user_repository.dart';
import 'widgets/action_buttons.dart';
import 'widgets/user_list.dart';

class HomePage extends StatelessWidget {
  final UserRepository usersRepository = UserRepository();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserCubit>(
      create: (context) => UserCubit(usersRepository),
      child: Scaffold(
        appBar: AppBar(title: Text('BLoc Demo1')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ActionButtons(),
            Expanded(child: UserList()),
          ],
        ),
      ),
    );
  }
}
