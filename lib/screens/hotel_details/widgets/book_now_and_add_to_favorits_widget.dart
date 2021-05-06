import 'package:flight/file_export.dart';

bookNowAndFavouritesWidget({BuildContext context}){
  return Container(width: width(context)*.9,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: Colors.black,
//                        shadowDarkColor: Colors.grey ,
                  color: hotelBackgroundColor),
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  height: isLandscape(context)
                      ? 2 * height(context) * .08
                      : height(context) * .08,
                  width: width(context)*.15,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.favorite_border , color: darkBlueColor,)
                        ],
                      )),
                ),
              )),
        ],
      ),
      Row(
        children: [
          Neumorphic(
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
                      ? 2 * height(context) * .08
                      : height(context) * .08,
                  width: width(context)*.7,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Book Now" , style: TextStyles.descriptionTextStyle.copyWith(color: whiteColor),)
                        ],
                      )),
                ),
              )),
        ],
      )

    ],
  ),);
}