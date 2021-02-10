import 'package:music_app/pages/music_page/music_page_components/pages.dart';
class IconWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.download_outlined),
        Icon(
          Icons.skip_previous,
          size: 30,
        ),
        Icon(
          Icons.pause_circle_filled,
          size: 50,
        ),
        Icon(
          Icons.skip_next,
          size: 30,
        ),
        Icon(Icons.list)
      ],
    );
  }
}
