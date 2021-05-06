import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_details/hotel_details_screen.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';

singleHotPackageImageCardForHotelHomeScreen(
    {BuildContext context,
    Function onTapUserImage,
    String userImagePass,
    String userName , String image }) {
  return Container(
    width: width(context)*.9,
    child:Column(

      children: [
        responsiveSizedBox(context: context,percentageOfHeight: .03),
        Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                depth: 6,
                lightSource: LightSource.bottomLeft,
                shadowLightColor: Colors.white,
                shadowDarkColor: Colors.black,
//                        shadowDarkColor: Colors.grey ,
                color: hotelBackgroundColor),
            child: GestureDetector(
              onTap: (){Navigator.of(context).pushNamed(HotelDetailsScreen.routeName);},
              child: Container( width : width(context)*.9,
                height: isLandscape(context)
  ? 2 * height(context) * .18
      : height(context) * .18,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: isLandscape(context)
                          ? 2 * height(context) * .18
                          : height(context) * .18
                      ,width: width(context)*.25,
                      decoration: BoxDecoration(image: DecorationImage(
                          image: AssetImage(
                          image),
                fit: BoxFit.fill,),
            ),
                      child: Container(
                          child: Row(
                        children: [
                         SizedBox()
                        ],
                      )),
                    ),
                    Container(
                      height: isLandscape(context)
                          ? 2 * height(context) * .12
                          : height(context) * .12
                      ,width: width(context)*.5,

                      child: Container(padding: EdgeInsets.only(left: width(context)*.02),
                          width: width(context)*.5,child:
                             Column(
                            children: [
                              responsiveSizedBox(context: context ,percentageOfHeight: .01),
                              Row(
                                children: [
                                  Text(
                                    "Radison Blue",
                                    style: TextStyles.descriptionTextStyle.copyWith(
                                        color: blackColor,
                                        fontSize: isLandscape(context)
                                            ? 2 * height(context) * .018
                                            : height(context) * .018,
                                        fontWeight: FontWeight.normal

                                    ),

                                  )
                                ],
                              ),
                              responsiveSizedBox(context: context ,percentageOfHeight: .01),
                              Row(
                                children: [
                                  Text(
                                    "Kingdom Tower , Prazil",
                                    style: TextStyles.descriptionTextStyle.copyWith(
                                        color:greyColor,
                                        fontSize: isLandscape(context)
                                            ? 2 * height(context) * .015
                                            : height(context) * .015,
                                        fontWeight: FontWeight.normal

                                    ),

                                  )
                                ],
                              ),
                              responsiveSizedBox(context: context ,percentageOfHeight: .01),
                              Container(padding: EdgeInsets.only(right: width(context)*.02),
                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "180 \$/night",
                                      style: TextStyles.descriptionTextStyle.copyWith(
                                          fontSize: isLandscape(context)
                                              ? 2 * height(context) * .015
                                              : height(context) * .015,
                                          fontWeight: FontWeight.normal

                                      ),

                                    ),
                                    Container( width: width(context)*.2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [



                                        Image.asset(AppIcons.taxi  , width: width(context)*.04,),
                                        Image.asset(AppIcons.path , width: width(context)*.04,),
                                        Image.asset(AppIcons.clocks  , width: width(context)*.04,),
                                          Icon(Icons.wifi ,color: darkBlueColor, size: width(context)*.04,)



                                      ],),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )

                          ),
                    ),
                    Row(
                      children: [
                        RotatedBox(quarterTurns: 3 , child:      Neumorphic(
                            style: NeumorphicStyle(
                                shape: NeumorphicShape.convex,
                                boxShape:
                                NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                                depth: 10,
                                lightSource: LightSource.topLeft,
                                shadowLightColor: Colors.white,
                                shadowDarkColor: Colors.black,
//                        shadowDarkColor: Colors.grey ,
                                color: darkBlueColor),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: isLandscape(context)
                                    ? 2 * height(context) * .07
                                    : height(context) * .07,
                                width: width(context)*.3,
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("Book Now" , style: TextStyles.descriptionTextStyle.copyWith(color: whiteColor),)
                                      ],
                                    )),
                              ),
                            )) ,),SizedBox(width: width(context)*.015,)
                      ],
                    )
                  ],
                ),
              ),
            ))
      ],
    ),
  );
}
