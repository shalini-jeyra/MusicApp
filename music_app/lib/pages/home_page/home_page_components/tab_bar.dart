import 'package:flutter/material.dart';
class TabBarComponent extends StatelessWidget {
  const TabBarComponent({   
    @required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      unselectedLabelColor: Colors.white60,
      labelColor: Colors.white,
      indicatorColor: Color(0xffF8943D),
      tabs: [
        Tab(
          text: 'Commercial',
        ),
        Tab(
          text: 'Free licence',
        )
      ],
      controller: _tabController,
    );
  }
}

