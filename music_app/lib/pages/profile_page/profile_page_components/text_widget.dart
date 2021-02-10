import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';
import 'package:music_app/styles/styles.dart';
class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
              style:ListTitle.secondaryTitle,
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
              style: ListTitle.secondaryTitle,
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
              style:ListTitle.secondaryTitle,
            )
          ],
        ),
      ],
    );
  }
}

