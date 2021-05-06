import 'package:flight/file_export.dart';

topPartForHotelHomeScreen(
    {BuildContext context,
    Function onTapUserImage,
    String userImagePass,
    String userName}) {
  return Container(
    width: width(context) * .9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              width: width(context) * .7,
              child: Row(
                children: [
                  Text(
                    "hellow ${userName} ",
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
            ),
            Container(
              width: width(context) * .7,
              child: Row(
                children: [
                  Text(
                    "Find Your Hotel",
                    style: TextStyles.descriptionTextStyle.copyWith(
                      color: blackColor,
                      fontSize: isLandscape(context)
                          ? 2 * height(context) * .03
                          : height(context) * .03,
                        fontWeight: FontWeight.normal

                    ),

                  )
                ],
              ),
            )
          ],
        ),
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
              onTap: onTapUserImage,
              child: Container(
                height: isLandscape(context)
                    ? 2 * height(context) * .08
                    : height(context) * .08,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      userImagePass,
                      fit: BoxFit.cover,
                    ),
                  ],
                )),
              ),
            ))
      ],
    ),
  );
}
