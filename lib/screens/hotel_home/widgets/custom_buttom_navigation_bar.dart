import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/hotel_home_screen.dart';
import 'package:flight/screens/hotel_home/widgets/custom_active_icon_for_bottom_navigation_bar.dart';
import 'package:flight/screens/hotel_home/widgets/custom_inactive_icon_for_bottom_navigation_bar.dart';
import 'package:flight/screens/hotel_home/widgets/test_screen_to_test_bottom_navigation_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final bool isActiveIconHome;
  final bool isActiveIconInExplore;
  final bool isActiveIconTips;
  final bool isActiveIconProfile;
//  -------------------------------------------   press events
  final bool onTapHome;
  final bool onTapExplore;
  final bool onTapTips;
  final bool onTapProfile;
  CustomBottomNavigationBar({
    this.isActiveIconHome: false,
    this.isActiveIconInExplore: false,
    this.isActiveIconTips: false,
    this.isActiveIconProfile: false,

//    -------------------------------
    this.onTapHome: true,
    this.onTapExplore: true,
    this.onTapTips: true,
    this.onTapProfile: true,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        child: Row(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 3),
          decoration: BoxDecoration(
              color: hotelBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: greyColor,
                  blurRadius: 10.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8),
                topLeft: Radius.circular(8),
              )),
          height: isLandscape(context) ? 2 * height * .095 : height * .11,
          width: width,
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
//                      ---------------------------------------------------------- home
                  InkWell(
                      onTap: onTapHome == false
                          ? () {
                              print(" home  pressed");
                            }
                          : () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return HotelHomeScreen();
                                  },
                                  transitionsBuilder: (context, animation8,
                                      animation15, child) {
                                    return FadeTransition(
                                      opacity: animation8,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 100),
                                ),
                              );
                            },
                      child: isActiveIconHome == false
                          ? customInActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.home_outlined,
                                color: greyColor,
                              ),
                              text: "Home")
                          : customActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.home_outlined,
                                color: darkBlueColor,
                              ),
                              text: "Home")),
//                  -------------------------------------------------------------------  explore
                  InkWell(
                      onTap: onTapExplore == false
                          ? () {
                              print("Explore pressed ");
                            }
                          : () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return TestExplore();
                                  },
                                  transitionsBuilder: (context, animation8,
                                      animation15, child) {
                                    return FadeTransition(
                                      opacity: animation8,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 100),
                                ),
                              );
                            },
                      child: isActiveIconInExplore == true
                          ? customActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.search,
                                color: darkBlueColor,
                              ),
                              text: "Explore")
                          : customInActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.search,
                                color: greyColor,
                              ),
                              text: "Explore")),
                  //   -------------------------------------------------------------------  trips

                  InkWell(
                      onTap: onTapTips == false
                          ? () {
                              print("trips pressed ");
                            }
                          : () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return TestTrips();
                                  },
                                  transitionsBuilder: (context, animation8,
                                      animation15, child) {
                                    return FadeTransition(
                                      opacity: animation8,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 100),
                                ),
                              );
                            },
                      child: isActiveIconTips == true
                          ? customActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.favorite_border,
                                color: darkBlueColor,
                              ),
                              text: "Trips")
                          : customInActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.favorite_border,
                                color: greyColor,
                              ),
                              text: "Trips")),
//                   -------------------------------------------------------------------  profile
                  InkWell(
                      onTap: onTapProfile == false
                          ? () {
                              print("profile  pressed ");
                            }
                          : () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return TestProfile();
                                  },
                                  transitionsBuilder: (context, animation8,
                                      animation15, child) {
                                    return FadeTransition(
                                      opacity: animation8,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 100),
                                ),
                              );
                            },
                      child: isActiveIconProfile == true
                          ? customActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.person_outline,
                                color: darkBlueColor,
                              ),
                              text: "Profile")
                          : customInActiveIconForBottomNavigationBar(
                              context: context,
                              icon: Icon(
                                Icons.person_outline,
                                color: greyColor,
                              ),
                              text: "Profile")),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  animatedNavigation({BuildContext context}) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) {
          return TestProfile();
        },
        transitionsBuilder: (context, animation8, animation15, child) {
          return FadeTransition(
            opacity: animation8,
            child: child,
          );
        },
        transitionDuration: Duration(milliseconds: 100),
      ),
    );
  }
}
