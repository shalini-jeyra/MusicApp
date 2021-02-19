import 'package:music_app/styles/styles.dart';
import 'package:music_app/pages/pages.dart';
import 'package:music_app/pages/home_page/home_page_components/pages.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BackgroundColor.primary,
      body: Builder(
         builder: (context) => Align(
            alignment: Alignment.bottomRight,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            IconWidget(),
            TextWidget(),
            TextFormFieldWidget(),
            TabBarComponent(tabController: _tabController),
            Expanded(
              child: TabBarViewComponent(tabController: _tabController),
            ),
          ],
        ),
      ),
      )
    );
  }
}









