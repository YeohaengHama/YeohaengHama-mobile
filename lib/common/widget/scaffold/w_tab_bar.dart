import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  final List<String> tabs; // tabs 매개변수 추가

  const MyTabBar({Key? key, required this.tabs}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          onTap: (index) {
            // Do something when a tab is tapped
          },
          labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          labelColor: Colors.grey, // Change as needed
          controller: _tabController,
          indicatorColor: Colors.purple, // Change as needed
          unselectedLabelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey), // Change as needed
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: const EdgeInsets.symmetric(vertical: 5),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
            tabs: widget.tabs.map((text) => Text(text)).toList()
        ),
        // Add your tab content here
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
