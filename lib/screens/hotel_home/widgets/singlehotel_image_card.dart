import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';

singleHotelImageCardForHotelHomeScreen(
    {BuildContext context,
    Function onTapUserImage,
    String userImagePass,
    String userName ,
     String image }) {
  return Container(
    child: Row(

      children: [
        SizedBox(width: width(context)*.02,),
        Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                boxShape:
                    NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                depth: 6,
                lightSource: LightSource.topLeft,
                shadowLightColor: Colors.white,
                shadowDarkColor: Colors.black,
//                        shadowDarkColor: Colors.grey ,
                color: hotelBackgroundColor),
            child: GestureDetector(
              onTap: (){},
              child: Container( height: isLandscape(context)
  ? 2 * height(context) * .3
      : height(context) * .3,
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: isLandscape(context)
                          ? 2 * height(context) * .18
                          : height(context) * .18
                      ,width: width(context)*.4,
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
                      ,width: width(context)*.4,

                      child: Container(padding: EdgeInsets.only(left: width(context)*.02),
                          width: width(context)*.4,
                          child: Column(
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
                              Container(width: width(context)*.4,padding: EdgeInsets.only(right: width(context)*.02),
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
                                    Row(children: [
                                      Text(
                                        "5.0",
                                        style: TextStyles.descriptionTextStyle.copyWith(
                                            fontSize: isLandscape(context)
                                                ? 2 * height(context) * .015
                                                : height(context) * .015,
                                            fontWeight: FontWeight.normal

                                        ),

                                      ),
                                      Icon(Icons.star , color: darkBlueColor,size: isLandscape(context)
                                          ? 2 * height(context) * .015
                                          : height(context) * .015 ,)

                                      
                                    ],)
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ))
      ],
    ),
  );
}
