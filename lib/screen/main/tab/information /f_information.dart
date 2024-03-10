import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../data/memory/Itinerary_provider.dart';

class InformationFragment extends ConsumerWidget {
  const InformationFragment({Key? key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itineraryList = ref.watch(itineraryProvider);
    return const Placeholder();
  }
}
