import 'package:sales_app/services/api_service.dart';
import 'package:sales_app/services/storage_service.dart';

class SaleController {
  final ApiService _api = ApiService();
  final StorageService _storage = StorageService();

  Future<List<dynamic>> fetchSales() async {
    final userID = await _storage.getUserId();
    return await _api.getSales(userID ?? '');
  }
}
