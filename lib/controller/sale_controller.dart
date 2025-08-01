

import 'package:sales_app/services/api_service.dart';
import 'package:sales_app/services/storage_service.dart';

class SaleController {
  final ApiService _api = ApiService();
  final StorageService _storage = StorageService();

  Future<List<dynamic>> fetchSales() async {
    final userID = await _storage.getUserId();
    return await _api.getSales({
      "BranchID": 1,
      "CompanyID": "1901b825-fe6f-418d-b5f0-7223d0040d08",
      "CreatedUserID": userID,
      "PriceRounding": 2,
      "page_no": 1,
      "items_per_page": 10,
      "type": "Sales",
      "WarehouseID": 1
    });
  }
}