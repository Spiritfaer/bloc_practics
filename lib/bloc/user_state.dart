abstract class UserState {}

class UserEmptyState extends UserState {}

class UserLoadingState extends UserState {}

class UserLoadedState extends UserState {
  List<dynamic> laodedUser;

  UserLoadedState(this.laodedUser);
}

class UserErrorState extends UserState {}
