import 'package:music_app/pages/music_page/music_page_components/pages.dart';
import 'package:music_app/styles/styles.dart';
class AddCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(120, 10, 120, 10),
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 20,
      ),
      decoration:BoxBorderDecoration.secondaryDecoration,
      child: Center(
        child: Text(
          '+ Add to cart',
          style: ButtonFont.secondaryFont,
        ),
      ),
    );
  }
}
