import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/single_hot_pachage_image_card.dart';
import 'package:flight/screens/hotel_home/widgets/singlehotel_image_card.dart';
import 'package:flight/screens/select_flight/widgets/single_flight_card.dart';
import 'package:flutter/rendering.dart';

hotPackagesListViewForHotelHomeScreen(
    {BuildContext context,
     }) {

  List hotels = [
    AppImages.hotel1,
    AppImages.hotel2,
    AppImages.hotel3,
    AppImages.hotel4,
    AppImages.hotel5,
    AppImages.hotel6,
    AppImages.hotel7,
    AppImages.hotel8,
    AppImages.hotel9,
    AppImages.hotel10,
  ];
  return  Container(height:
  isLandscape(context) ?2* height(context)*.4: height(context)*.4,width: width(context),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: ListView.builder(
                  scrollDirection : Axis.vertical ,
          itemBuilder:(context , index ){

                return
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [ singleHotPackageImageCardForHotelHomeScreen(context: context , image: hotels[index] , ) ],);

              } , itemCount:hotels.length  ),
            ),
          ),
        ],
      ));
}
