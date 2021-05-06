import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_details/hotel_details_screen.dart';
import 'package:flight/screens/hotel_home/hotel_home_screen.dart';
import 'package:flight/screens/hotel_home/widgets/test_screen_to_test_bottom_navigation_bar.dart';
void main(){
  runApp(
      MaterialApp(debugShowCheckedModeBanner: false,
        home: HotelHomeScreen(),
        theme: ThemeData(
            primaryColor: lightBlueColor,
            accentColor: lightBlueColor,
            fontFamily: "Segoe UI"),
        routes: {
          SearchFlightsScreen.routeName: (context) => SearchFlightsScreen(),
          SelectFlightScreen.routeName: (context) => SelectFlightScreen(),
          BookingConfirmedScreen.routeName: (context) => BookingConfirmedScreen(),

//          related to hotel design

          HotelDetailsScreen.routeName: (context) => HotelDetailsScreen(),
          HotelHomeScreen.routeName: (context) => HotelHomeScreen(),
          TestExplore.routeName: (context) => TestExplore(),
          TestTrips.routeName: (context) => TestTrips(),
          TestProfile.routeName: (context) => TestProfile(),





        },)
  );}










