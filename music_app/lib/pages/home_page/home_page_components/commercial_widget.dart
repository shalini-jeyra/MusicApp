import 'package:music_app/pages/music_page/music_page_components/pages.dart';
import 'package:music_app/pages/music_page/music_page.dart';
import 'package:music_app/styles/styles.dart';
class Commercial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showBottomSheet(
                    context: context,
                    builder: (context) => MusicPage());
      },
      child: Container(
        height: 160,
        width: 160,
        decoration:BoxBorderDecoration.primaryDecoration
      ),
    );
  }
}