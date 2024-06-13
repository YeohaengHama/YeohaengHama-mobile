import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/traffic/vo_transport.dart';
import '../../network/traffic_api.dart';

final trafficInfoProvider = StateNotifierProvider<TrafficInfoNotifier, AsyncValue<TrafficInfo>>((ref) {
  return TrafficInfoNotifier(ref);
});

class TrafficInfoNotifier extends StateNotifier<AsyncValue<TrafficInfo>> {
  final Ref _ref;

  TrafficInfoNotifier(this._ref) : super(const AsyncValue.loading());


  void setTrafficInfo(TrafficInfo trafficInfo) {
    state = AsyncValue.data(trafficInfo);
  }
}
