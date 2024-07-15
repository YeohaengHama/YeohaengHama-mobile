import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../entity/traffic/vo_route_summary.dart';

final infoCarTrafficProvider = StateNotifierProvider<InfoCarTrafficNotifier, AsyncValue<CarTrafficInfo>>((ref) {
  return InfoCarTrafficNotifier(ref);
});

class InfoCarTrafficNotifier extends StateNotifier<AsyncValue<CarTrafficInfo>> {
  final Ref _ref;

  InfoCarTrafficNotifier(this._ref) : super(const AsyncValue.loading());

  void setTrafficInfoCar(CarTrafficInfo trafficInfo) {
    state = AsyncValue.data(trafficInfo);
  }
}
