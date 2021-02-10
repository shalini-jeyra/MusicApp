part of styles;

class BoxBorderDecoration{
  static final BoxDecoration primaryDecoration=BoxDecoration( shape: BoxShape.circle,
          color: TextColor.primaryColor,);
  static final BoxDecoration secondaryDecoration=BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(16.0),
          ));
}