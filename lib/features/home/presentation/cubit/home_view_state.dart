import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_view_state.freezed.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState.initial() = _$InitialHomeViewState;
  const factory HomeViewState.loading() = _$LoadingHomeViewState;
  const factory HomeViewState.loaded(List books) = _$LoadedHomeViewState;
}
