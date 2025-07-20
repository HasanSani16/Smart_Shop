import 'package:flutter/material.dart';
import 'package:smart_shop/models/product.dart';
import 'package:smart_shop/services/api_service.dart';


import '../ utils/shared_prefs.dart';

enum SortOption { priceLowToHigh, priceHighToLow, rating }

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  List<Product> get products => _products;

  List<Product> _favourites = [];
  List<Product> get favourites => _favourites;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  SortOption? _currentSort;
  SortOption? get currentSort => _currentSort;

  Future<void> fetchProducts({String? category}) async {
    _isLoading = true;
    notifyListeners();

    try {
      if (category != null && category.isNotEmpty) {
        _products = await ApiService.fetchProductsByCategory(category);
      } else {
        _products = await ApiService.fetchAllProducts();
      }
      _loadFavouritesFromPrefs();
      _applySorting();
    } catch (e) {
      // Handle error as needed
      _products = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void _loadFavouritesFromPrefs() {
    final favIds = SharedPrefs.getFavourites();
    _favourites = _products.where((p) => favIds.contains(p.id)).toList();
  }

  void toggleFavourite(Product product) {
    if (_favourites.any((p) => p.id == product.id)) {
      _favourites.removeWhere((p) => p.id == product.id);
    } else {
      _favourites.add(product);
    }
    SharedPrefs.saveFavourites(_favourites.map((e) => e.id).toList());
    notifyListeners();
  }

  bool isFavourite(Product product) {
    return _favourites.any((p) => p.id == product.id);
  }

  void sortProducts(SortOption option) {
    _currentSort = option;
    _applySorting();
    notifyListeners();
  }

  void _applySorting() {
    switch (_currentSort) {
      case SortOption.priceLowToHigh:
        _products.sort((a, b) => a.price.compareTo(b.price));
        break;
      case SortOption.priceHighToLow:
        _products.sort((a, b) => b.price.compareTo(a.price));
        break;
      case SortOption.rating:
        _products.sort((a, b) => b.rating.compareTo(a.rating));
        break;
      default:
        break;
    }
  }
}
