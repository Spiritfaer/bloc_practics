import 'package:bloc_practics_1/services/user_provider.dart';

import '../models/user.dart';

class UserRepository {
  final UserProvider _userProvider = UserProvider();

  Future<List<User>> getAllUsers() => _userProvider.loadUserList();
}
