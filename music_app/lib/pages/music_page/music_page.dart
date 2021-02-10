import 'dart:ui';
import 'package:music_app/pages/music_page/music_page_components/pages.dart';
import 'package:music_app/styles/styles.dart';
class MusicPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: ClipRect(
          child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          width: 450.0,
          height: 1000.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                height: 250,
                width: 250,
                decoration: BoxBorderDecoration.primaryDecoration
              ),
              ListTileWidget(),
             SliderWidget(),
              IconWidget(),
              AddCartWidget()
            ],
          ),
          decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
        ),
      )),
    );
  }
}




