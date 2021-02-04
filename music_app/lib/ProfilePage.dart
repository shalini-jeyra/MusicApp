import 'package:flutter/material.dart';

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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 150, 10),
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffF7933D),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          )),
                      child: Center(
                        child: Text(
                          'PRO SELLER',
                          style: TextStyle(
                              color: Color(0xffF7933D),
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Text(
                      'Valetudo Beats',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Canada',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '54',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Tracks',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '3',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Albums',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 12),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '12k',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Subscribers',
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                width: 150,
                child: RaisedButton(
                  color: Color(0xffF8943D),
                  child: Text(
                    'Subscribe',
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: RaisedButton(
                  color: Colors.black,
                  child: Text(
                    'Start a chat',
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 2, color: Colors.white),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          TabBar(
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
          ),
          Expanded(
            child: TabBarView(
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
            ),
          ),
        ],
      ),
    );
  }
}
