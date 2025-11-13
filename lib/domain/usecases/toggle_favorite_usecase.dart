import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class ToggleFavoriteUseCase {
  final WidgetsRepository _repository;

  ToggleFavoriteUseCase(this._repository);

  Future<void> call(String widgetId) {
    return _repository.toggleFavorite(widgetId);
  }
}
