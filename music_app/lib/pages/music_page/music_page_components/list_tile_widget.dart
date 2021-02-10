import 'package:music_app/pages/music_page/music_page_components/pages.dart';
class ListTileWidget extends StatelessWidget {
  const ListTileWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Insomnia',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),                
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