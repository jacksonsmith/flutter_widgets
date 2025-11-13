import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWidgetsByCategoryUseCase {
  final WidgetsRepository _repository;

  GetWidgetsByCategoryUseCase(this._repository);

  Future<List<FlutterWidgetEntity>> call(String categoryId) {
    return _repository.getWidgetsByCategory(categoryId);
  }
}
