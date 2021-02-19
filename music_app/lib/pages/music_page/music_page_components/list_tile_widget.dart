import 'package:music_app/pages/music_page/music_page_components/pages.dart';
import 'package:music_app/styles/styles.dart';
class ListTileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Insomnia',
        style: ListTitle.primaryTitle,                
      ),
      subtitle: Wrap(children: [
        Text('Valetudo Beats'),
        Text('\$30')
      ],),
      trailing: Wrap(children: [
        Icon(Icons.favorite_border_outlined),
        Icon(Icons.merge_type)
      ],),
    );
  }
}