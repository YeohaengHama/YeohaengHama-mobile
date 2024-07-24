import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/data/entity/menu/all_itinerary.dart';
import 'package:fast_app_base/data/network/itinerary_api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../../../common/dart/extension/datetime_extension.dart';
import '../../../../../../data/memory/shorts/p_short_write.dart';



class SelectItineraryListItem extends ConsumerStatefulWidget {
  const SelectItineraryListItem({Key? key, required this.allItinerary}) : super(key: key);
  final AllItinerary allItinerary;

  @override
  _SelectItineraryListItemState createState() => _SelectItineraryListItemState();
}

class _SelectItineraryListItemState extends ConsumerState<SelectItineraryListItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  bool _showIcons = false;



  @override
  Widget build(BuildContext context) {
    String startDate = widget.allItinerary.startDate;
    String endDate = widget.allItinerary.endDate;
    String formattedDateRange = formatDateRange(startDate, endDate);
    String stayDay = formatStayDuration(startDate, endDate);
    final ItineraryApi = ref.watch(itineraryApiProvider);
    final shortsWriteProviderNoti= ref.read(shortsWriteProvider.notifier);
    return Tap(
      onTap: () {

        shortsWriteProviderNoti.updateItineraryId(widget.allItinerary.id);
        shortsWriteProviderNoti.updateItineraryTitle(widget.allItinerary.name);

        Nav.pop(context);

      },
      child: Row(
        children: [
          ClipOval(
            child: Image.asset(
              '$basePath/icon/colorHama.png',
              width: 45,
              height:45,
            ),
          ).pOnly(right: 10, bottom: 10, top: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                '${widget.allItinerary.name}'.text.bold.color(
                    AppColors.primaryGrey).make(),
                Row(
                  children: [
                    '$formattedDateRange'.text.color(
                        AppColors.secondGrey).bold.make(),
                    ' $stayDay'.text.color(
                        AppColors.secondGrey).bold.make(),


                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

}