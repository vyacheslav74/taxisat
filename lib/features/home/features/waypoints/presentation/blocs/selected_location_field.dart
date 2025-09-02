import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class SelectedLocationFieldCubit extends Cubit<int?> {
  SelectedLocationFieldCubit() : super(null);

  void onLocationFieldSelected(int? index) {
    emit(index);
  }
}
