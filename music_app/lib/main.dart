import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: Color(0xff0D0D0D)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff0D0D0D),
        body: Column(children: [
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.search,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart_outlined),
                onPressed: () {},
              ),
            ],
          ),
          Row(children: [
           Column(children: [
             Padding(
               padding: const EdgeInsets.fromLTRB(20,0,0,0),
               child: Text('Find the best music',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),
             ),
             Padding(
               padding: const EdgeInsets.fromLTRB(0,5,25,0),
               child: Text('for your banger',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 22),),
             )
           ],) 
          ],),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color:Color(0xff252525)),
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Expanded(flex: 1,child:TextFormField(
                         decoration: InputDecoration(
                           border:InputBorder.none,
                           hintText:'Search',hintStyle:TextStyle(fontSize: 14,color: Colors.white60),
                           icon:Icon(Icons.search,color:Colors.white60,size: 23,)
                         ),
                       ))
                     ],),
            ),            
          ),          
            ],
        ),
        );
  }
}

