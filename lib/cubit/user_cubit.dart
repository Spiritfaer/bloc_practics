import 'package:flutter_bloc/flutter_bloc.dart';

import '../services/user_repository.dart';
import '../models/user.dart';
import 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserRepository usersRepository;

  UserCubit(this.usersRepository) : super(UserEmptyState());

  Future<void> fetchUsers() async {
    try {
      emit(UserLoadingState());
      final List<User> _loadedUserList = await usersRepository.getAllUsers();
      emit(UserLoadedState(_loadedUserList));
    } catch (_) {
      emit(UserErrorState());
    }
  }

  Future<void> clearhUsers() async {
    emit(UserEmptyState());
  }
}
