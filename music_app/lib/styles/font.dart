part of styles;

class AppFont {
  static TextStyle getAppFont({
    FontWeight fontWeight,
    double fontSize,
    Color color,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }
}

class HeaderFonts {
  static final primaryHeader = AppFont.getAppFont(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: TextColor.primaryColor,
  );
}

class HintFonts {
  static final primaryHint = AppFont.getAppFont(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: TextColor.secondaryColor);
}

class ListTitle {
  static final primaryTitle =
      AppFont.getAppFont(fontSize: 18, fontWeight: FontWeight.bold);
        static final secondaryTitle =
      AppFont.getAppFont(fontSize: 12, color: TextColor.secondaryColor);
}

class ButtonFont{
  static final primaryFont=AppFont.getAppFont(fontSize: 14,color: TextColor.primaryColor);
  static final secondaryFont=AppFont.getAppFont(fontSize:10.0,
              fontWeight: FontWeight.bold,color: TextColor.primaryColor); 
  static final ternaryFont=AppFont.getAppFont(fontSize: 14,color: TextColor.ternaryColor);
}


class MusicFont{
  static final primaryFont=AppFont.getAppFont(fontWeight: FontWeight.bold, fontSize: 20);
  static final secondaryFont=AppFont.getAppFont(
                    color:IndicatorColor.primaryColor,
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold);
}