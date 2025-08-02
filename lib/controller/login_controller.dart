import 'package:sales_app/services/api_service.dart';
import 'package:sales_app/services/storage_service.dart';

class LoginController {
  final ApiService _api = ApiService();
  final StorageService _storage = StorageService();

  Future<bool> login(String email, String password) async {
  try {
    final users = await _api.fetchUsers();
    final user = users.firstWhere(
      (u) => u['email'] == email && u['password'] == password,
      orElse: () => null,
    );

    if (user != null) {
      await _storage.saveUserId(user['id']);
      return true;
    } else {
      return false;
    }
  } catch (e) {
    print('Login error: $e');
    return false;
  }
}

  }

