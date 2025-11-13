import 'package:flutter_widgets/domain/entities/widget_category.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetCategoriesUseCase {
  final WidgetsRepository _repository;

  GetCategoriesUseCase(this._repository);

  Future<List<WidgetCategory>> call() {
    return _repository.getCategories();
  }
}
