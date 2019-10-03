import 'package:flutter/foundation.dart' as foundation;

import 'product.dart';
import 'products_repository.dart';

class AppStateModel extends foundation.ChangeNotifier {
  List<Product> _availableProducts = ProductsRepository.allProducts;

  Category _selectedCategory = Category.all;

  List<Product> getProducts() {
    if (_availableProducts == null) {
      return [];
    }

    if (_selectedCategory == Category.all) {
      return List.from(_availableProducts);
    } else {
      return _availableProducts.where((p) {
        return p.category == _selectedCategory;
      }).toList();
    }
  }
}
