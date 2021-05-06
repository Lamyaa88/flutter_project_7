import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/custom_buttom_navigation_bar.dart';
class TestExplore extends StatelessWidget {
  static const String routeName = "tesExplore";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text("explore"),),

      ),
      bottomNavigationBar: CustomBottomNavigationBar(isActiveIconInExplore: true, onTapExplore: false,),
    );
  }
}
class TestProfile extends StatelessWidget {
  static const String routeName = "testprofile";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text("profile"),),

      ),
      bottomNavigationBar: CustomBottomNavigationBar(isActiveIconProfile: true, onTapProfile: false,),
    );
  }
}
class TestTrips extends StatelessWidget {
  static const String routeName = "testTrips";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text("trips"),),

      ),
      bottomNavigationBar: CustomBottomNavigationBar(isActiveIconTips: true, onTapTips: false,),
    );
  }
}


