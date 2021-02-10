import 'package:music_app/pages/profile_page/profile_page_components/pages.dart';

class TextFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 150, 10),
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 3,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Color(0xffF7933D),
                width: 1,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5.0),
              ),
            ),
            child: Center(
              child: Text(
                'PRO SELLER',
                style: TextStyle(
                    color: Color(0xffF7933D),
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            'Valetudo Beats',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Canada',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
          ),
          SizedBox(
            height: 10,
          ),
          TextWidget()
        ],
      ),
    );
  }
}
