import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/selected_transportation_index_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../../../../../data/memory/traffic/transport_provider.dart';

class TrafficRouteDropDown extends ConsumerStatefulWidget {
  @override
  _TransportationDropdownState createState() => _TransportationDropdownState();
}

class _TransportationDropdownState extends ConsumerState<TrafficRouteDropDown> {
  int? selectedPathIndex;


  void _showCupertinoPicker(BuildContext context, int pathCount) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) {

        return Container(
          height: 250,
          color: Colors.white,
          child: CupertinoPicker(
            backgroundColor: Colors.white,
            itemExtent: 32.0,
            onSelectedItemChanged: (int index) {
              setState(() {
                selectedPathIndex = index;
                ref.read(selectedTrafficRouteIndexNotifierProvider.notifier).state = index;
              });
            },
            children: List<Widget>.generate(pathCount, (int index) {
              return Center(
                child: Text('경로 ${index + 1}'),
              );
            }),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final selectedPathIndexNoti = ref.watch(selectedTrafficRouteIndexNotifierProvider);
    final selectedPathIndex = ref.watch(selectedTrafficRouteIndexNotifierProvider.notifier).state;

    final trafficInfoAsync = ref.watch(trafficInfoProvider);
    return trafficInfoAsync.when(
      data: (trafficInfo) {
        final pathCount = trafficInfo.result.path.length;

        return GestureDetector(
          onTap: () => _showCupertinoPicker(context, pathCount),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => _showCupertinoPicker(context, pathCount),
                  child: Text(
                    selectedPathIndex == null
                        ? '경로 >'
                        : '경로 ${selectedPathIndex! + 1} >',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.thirdGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => Container(),
      error: (error, stack) => Text('Error: $error'),
    );
  }
}
// import 'package:fast_app_base/screen/client/main/tab/schedule/traffic/selected_transportation_index_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import '../../../../../../data/memory/traffic/transport_provider.dart';
//
// class TrafficRouteDropDown extends ConsumerStatefulWidget {
//   @override
//   _TransportationDropdownState createState() => _TransportationDropdownState();
// }
//
// class _TransportationDropdownState extends ConsumerState<TrafficRouteDropDown> {
//   int? selectedPathIndex;
//
//   @override
//   Widget build(BuildContext context) {
//     final trafficInfoAsync = ref.watch(trafficInfoProvider);
//
//     return trafficInfoAsync.when(
//       data: (trafficInfo) {
//         final pathCount = trafficInfo.result.path.length;
//
//         return Container(
//
//           child: DropdownButton<int>(
//               value: selectedPathIndex,
//               hint: Text('경로 선택'),
//               items: List.generate(pathCount, (index) {
//                 return DropdownMenuItem<int>(
//                   value: index,
//                   child: Text('경로 ${index + 1}'),
//                 );
//               }),
//               onChanged: (value) {
//                 setState(() {
//                   selectedPathIndex = value;
//                   ref.read(selectedTrafficRouteIndexNotifierProvider.notifier).state = value!;
//                 });
//               },
//               underline: SizedBox()
//           ),
//         );
//       },
//       loading: () => Container(),
//       error: (error, stack) => Text('Error: $error'),
//     );
//   }
// }
