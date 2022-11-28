import 'package:prototype/src/data/model/user_model.dart';

abstract class UserRepository {
  Future<UserModel> login(String pin);
}
