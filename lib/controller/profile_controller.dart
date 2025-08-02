import 'package:sales_app/services/api_service.dart';
import 'package:sales_app/services/storage_service.dart';

class ProfileController {
  final ApiService _api = ApiService();
  final StorageService _storage = StorageService();

  Future<Map<String, dynamic>> getProfile() async {
    final userID = await _storage.getUserId();
    return await _api.getProfile(userID ?? '');
  }
}
