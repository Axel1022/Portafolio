abstract class AppInsets {
  double get padding;
}
class LargeInsets implements AppInsets {
  @override
  double get padding => 80;

}

class SmallInsets implements AppInsets {
  @override
  double get padding => 16;
}
