import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SearchWidgetsUseCase {
  final WidgetsRepository _repository;

  SearchWidgetsUseCase(this._repository);

  Future<List<FlutterWidgetEntity>> call(String query) {
    if (query.isEmpty) {
      return _repository.getAllWidgets();
    }
    return _repository.searchWidgets(query);
  }
}
