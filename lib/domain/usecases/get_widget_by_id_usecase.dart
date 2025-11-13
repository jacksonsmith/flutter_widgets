import 'package:flutter_widgets/domain/entities/flutter_widget_entity.dart';
import 'package:flutter_widgets/domain/repositories/widgets_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetWidgetByIdUseCase {
  final WidgetsRepository _repository;

  GetWidgetByIdUseCase(this._repository);

  Future<FlutterWidgetEntity?> call(String id) {
    return _repository.getWidgetById(id);
  }
}
