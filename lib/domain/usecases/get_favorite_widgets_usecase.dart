import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetFavoriteWidgetsUseCase {
  final WidgetsRepository _repository;

  GetFavoriteWidgetsUseCase(this._repository);

  Future<List<FlutterWidgetEntity>> call() {
    return _repository.getFavoriteWidgets();
  }
}
