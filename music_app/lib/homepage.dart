import 'package:flutter/material.dart';

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
      backgroundColor: Color(0xff0D0D0D),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text(
                      'Find the best music',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 25, 0),
                    child: Text(
                      'for your banger',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff252525),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.white60,
                        ),
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.white60,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          TabBar(
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
          ),
          Expanded(
            child: TabBarView(
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 0,vertical:40),
                  child: Column(                   
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Commercial(),
                          Commercial(),
                        ],
                      ),
                      SizedBox(height: 30,),
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
            ),
          ),
        ],
      ),
    );
  }
}

class Commercial extends StatelessWidget {
  const Commercial({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          ),
    );
  }
}
