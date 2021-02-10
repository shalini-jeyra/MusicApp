import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';
class TabBarViewWidget extends StatelessWidget {
  const TabBarViewWidget({
    Key key,
    @required TabController tabController,
  }) : _tabController = tabController, super(key: key);
  final TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white,
              ),
              title: Text('Insomnia'),
              subtitle: Wrap(
                children: [
                  Text('Valetudo Beats'),
                  Text(' \$30',style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              trailing: Wrap(
                spacing: 12,
                children: [
                  Icon(Icons.shopping_cart),
                  Icon(Icons.menu)
                ],
              ),
            )
          ],
        ),
        Column(
          children: [
            Text("Album page"),
          ],
        ),
        Column(
          children: [
            Text("Reviews page"),
          ],
        ),
        Column(
          children: [
            Text("Contacts page"),
          ],
        ),
      ],
      controller: _tabController,
    );
  }
}



