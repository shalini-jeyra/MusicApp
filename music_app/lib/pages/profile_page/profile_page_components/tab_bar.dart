import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';
class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    @required TabController tabController,
  }) : _tabController = tabController;
  final TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.white60,
      labelColor: Colors.white,
      indicatorColor: Color(0xffF8943D),
      indicator: UnderlineTabIndicator(),
      tabs: [
        Tab(
          text: 'Tracks',
        ),
        Tab(
          text: 'Albums',
        ),
        Tab(
          text: 'Reviews',
        ),
        Tab(
          text: 'Contacts',
        ),
      ],
      controller: _tabController,
    );
  }
}