import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/widget_category.dart';
import 'package:flutter_widgets/domain/usecases/get_categories_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeViewModel extends ChangeNotifier {
  final GetCategoriesUseCase _getCategoriesUseCase;

  HomeViewModel(this._getCategoriesUseCase);

  List<WidgetCategory> _categories = [];
  bool _isLoading = false;
  String? _error;

  List<WidgetCategory> get categories => _categories;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> loadCategories() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _categories = await _getCategoriesUseCase();
      _error = null;
    } catch (e) {
      _error = 'Erro ao carregar categorias';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
