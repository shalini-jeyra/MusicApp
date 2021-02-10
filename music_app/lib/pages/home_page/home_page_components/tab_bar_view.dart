import 'package:music_app/pages/home_page/home_page_components/pages.dart';
class TabBarViewComponent extends StatelessWidget {
  const TabBarViewComponent({
    @required TabController tabController,
  }) : _tabController = tabController;
  final TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Commercial(),
                  Commercial(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Commercial(),
                  Commercial(),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text("Free license box"),
          ],
        ),
      ],
      controller: _tabController,
    );
  }
}

