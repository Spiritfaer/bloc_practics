import 'package:bloc_practics_1/models/user.dart';

abstract class UserState {}

class UserEmptyState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  List<User> laodedUser;

  UserLoadedState(this.laodedUser);
}

class UserErrorState extends UserState {}
