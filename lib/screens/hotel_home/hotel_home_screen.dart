import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/custom_buttom_navigation_bar.dart';
import 'package:flight/screens/hotel_home/widgets/hot_pachages_and_view_all_row.dart';
import 'package:flight/screens/hotel_home/widgets/hot_packages_list_view.dart';
import 'package:flight/screens/hotel_home/widgets/hotels_list_view.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';
import 'package:flight/screens/hotel_home/widgets/search_part.dart';
import 'package:flight/screens/hotel_home/widgets/bold_text_in_the_right_side.dart';
import 'package:flight/screens/hotel_home/widgets/top_part.dart';

class HotelHomeScreen extends StatelessWidget {
  static const String routeName = "HotelHomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  responsiveSizedBox(context: context, percentageOfHeight: .05),
                  topPartForHotelHomeScreen(
                      context: context,
                      userName: "Pregathesh",
                      userImagePass: "assets/images/peson.jpg" ,onTapUserImage: (){print("user image  pressed ");}),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  searchPartForHotelHomeScreen(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  boldTextINTHeRightSide(context: context , text:  "Popular Hotels "),
                  responsiveSizedBox(context: context, percentageOfHeight: .0),
                  hotelsListViewForHotelHomeScreen(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .0),
                  hotPackagesAndViewAllRow(context: context ,onTapViewAll: (){print("view all pressed ");}),
                  responsiveSizedBox(context: context, percentageOfHeight: .01),
                  hotPackagesListViewForHotelHomeScreen(context: context),


                ],
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(isActiveIconHome: true, onTapHome: false  ,),
    );
  }
}
