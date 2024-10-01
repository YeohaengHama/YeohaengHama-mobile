import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../entity/traffic/vo_transport.dart';

final infoTrafficProvider = StateNotifierProvider<infoTrafficNotifier, AsyncValue<TrafficInfo>>((ref) {
  return infoTrafficNotifier(ref);
});

class infoTrafficNotifier extends StateNotifier<AsyncValue<TrafficInfo>> {
  final Ref _ref;

  infoTrafficNotifier(this._ref) : super(const AsyncValue.loading());


  void setTrafficInfo(TrafficInfo trafficInfo) {
    state = AsyncValue.data(trafficInfo);
  }
}
