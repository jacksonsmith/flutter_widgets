import 'package:flutter/material.dart';
import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/usecases/search_widgets_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchViewModel extends ChangeNotifier {
  final SearchWidgetsUseCase _searchWidgetsUseCase;

  SearchViewModel(this._searchWidgetsUseCase);

  List<FlutterWidgetEntity> _results = [];
  bool _isLoading = false;
  String _query = '';

  List<FlutterWidgetEntity> get results => _results;
  bool get isLoading => _isLoading;
  String get query => _query;
  bool get hasResults => _results.isNotEmpty;
  bool get showResults => _query.isNotEmpty;

  Future<void> search(String query) async {
    _query = query;
    _isLoading = true;
    notifyListeners();

    try {
      _results = await _searchWidgetsUseCase(query);
    } catch (e) {
      _results = [];
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  void clear() {
    _query = '';
    _results = [];
    notifyListeners();
  }
}
