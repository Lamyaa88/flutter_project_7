import 'package:flight/file_export.dart';

searchPartForHotelHomeScreen(
    {BuildContext context,
   }) {
  return Container(
    width: width(context) * .9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Neumorphic(
            style: NeumorphicStyle(
                shape: NeumorphicShape.convex,
                boxShape:
                NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                depth: 10,
                lightSource: LightSource.topLeft,
                shadowLightColor: whiteColor,
                shadowDarkColor:  blackColor ,
//                        shadowDarkColor: Colors.grey ,
                color: greyColor.withOpacity(.1)),
            child: GestureDetector(
              onTap:(){},
              child: Container(
                width: width(context)*.9,
                height: isLandscape(context)
                    ? 2 * height(context) * .08
                    : height(context) * .08,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Container(padding: EdgeInsets.only(left: width(context)*.03),
                    child: Row(
                      children: [
                        Row(
                          children: [
                           Icon(Icons.search , color: greyColor,),
                            Text(
                              "   Search for hotels ",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  color: greyColor,
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .02
                                      : height(context) * .02,
                                  fontWeight: FontWeight.normal
                              ),
                            )
                          ],
                        ),
                      ],
                    )),
              ),
            ))

      ],
    ),
  );
}
