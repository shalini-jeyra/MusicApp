import 'package:music_app/pages/music_page/music_page_components/pages.dart';
class AddCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(120, 10, 120, 10),
      padding: EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 20,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          )),
      child: Center(
        child: Text(
          '+ Add to cart',
          style: TextStyle(
              color: Colors.white,
              fontSize: 10.0,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
