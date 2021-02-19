import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';
import 'package:music_app/styles/styles.dart';
class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          height: 50,
          width: 150,
          child: RaisedButton(
            color: Color(0xffF8943D),
            child: Text(
              'Subscribe',
              style: ButtonFont.ternaryFont,
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
              style: ButtonFont.primaryFont,
            ),
            onPressed: () {},
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        )
      ],
    );
  }
}

