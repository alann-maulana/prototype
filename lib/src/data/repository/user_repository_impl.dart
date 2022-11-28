import 'package:prototype/src/data/model/user_model.dart';
import 'package:prototype/src/domain/repository/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<UserModel> login(String pin) async {
    // simulate request into server
    await Future.delayed(const Duration(seconds: 2));
    if (pin == '1111') {
      return const UserModel(id: 1, name: 'First Name');
    }

    throw Exception('invalid pin number');
  }
}
