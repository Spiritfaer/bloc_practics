import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/user.dart';
import '../bloc/user_event.dart';
import '../bloc/user_state.dart';
import '../services/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserRepository usersRepository;

  UserBloc(this.usersRepository) : super(UserEmptyState());

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    if (event is UserLoadEvent) {
      yield UserLoadingState();
      try {
        final List<User> _loadedUserList = await usersRepository.getAllUsers();
        yield UserLoadedState(_loadedUserList);
      } catch (_) {
        yield UserErrorState();
      }
    } else if (event is UserClearEvent) {
      yield UserEmptyState();
    }
  }
}
