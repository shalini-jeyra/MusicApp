import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';
class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 4,
      vsync: this,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D0D0D),
      appBar: AppBar(
        backgroundColor: Color(0xff0D0D0D),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              'Beatmaker\'s Profile',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage('assets/Ashlin.jpg'),
                ),
              ),
              TextFormWidget(),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          ButtonWidget(),
          SizedBox(
            height: 25,
          ),
          TabBarWidget(tabController: _tabController),
          Expanded(
            child: TabBarViewWidget(tabController: _tabController),
          ),
        ],
      ),
    );
  }
}


