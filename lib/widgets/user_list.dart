import 'package:bloc_practics_1/cubit/user_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/user_state.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (BuildContext context, UserState state) {
        if (state is UserEmptyState) {
          return Center(child: Text('Empty list\nPress load data.'));
        } else if (state is UserLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is UserLoadedState) {
          return ListView.builder(
            itemCount: state.laodedUser.length,
            itemBuilder: (context, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 2.0),
                      blurRadius: 1.0,
                      spreadRadius: -2.0,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: Text('ID ${state.laodedUser[index].id}'),
                  title: Column(
                    children: [
                      Text(
                        'Name: ${state.laodedUser[index].name}',
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                      Column(
                        children: [
                          Text('Email: ${state.laodedUser[index].email}'),
                          Text('Phone: ${state.laodedUser[index].phone}'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }
        if (state is UserErrorState) {
          return Center(child: Text('Something went wrong,\ntry again later.'));
        } else {
          return Center(
              child: Text('World has gone mad\nsave yourself fools...'));
        }
      },
    );
  }
}
