import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';

priceAndReviewsRow({BuildContext context}) {
  return Container(
    width: width(context) * .9,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        priceWidget(context: context),
        reviewsWidget(context: context),
        recentlyBookedWidget(context: context)
      ],
    ),
  );
}

priceWidget({BuildContext context}) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Price",
          style: TextStyles.descriptionTextStyle.copyWith(
              color: greyColor,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .018
                  : height(context) * .018,
              fontWeight: FontWeight.normal),
        ),
        responsiveSizedBox(context: context ,percentageOfHeight: .01),
        Text(
          "\$ 120",
          style: TextStyles.descriptionTextStyle.copyWith(
              color: blackColor,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .018
                  : height(context) * .018,
              fontWeight: FontWeight.normal),
        )
      ],
    ),
  );
}

reviewsWidget({BuildContext context}) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Reviews",
          style: TextStyles.descriptionTextStyle.copyWith(
              color: greyColor,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .018
                  : height(context) * .018,
              fontWeight: FontWeight.normal),
        ),
        responsiveSizedBox(context: context ,percentageOfHeight: .01),
        Row(
          children: [
            Text(
              "5.0",
              style: TextStyles.descriptionTextStyle.copyWith(
                  fontSize: isLandscape(context)
                      ? 2 * height(context) * .018
                      : height(context) * .018,
                  fontWeight: FontWeight.normal),
            ),
            Icon(
              Icons.star,
              color: darkBlueColor,
              size: isLandscape(context)
                  ? 2 * height(context) * .02
                  : height(context) * .02,
            ),
            Icon(
              Icons.star,
              color: darkBlueColor,
              size: isLandscape(context)
                  ? 2 * height(context) * .02
                  : height(context) * .02,
            ),
            Icon(
              Icons.star,
              color: darkBlueColor,
              size: isLandscape(context)
                  ? 2 * height(context) * .02
                  : height(context) * .02,
            ),
            Icon(
              Icons.star,
              color: darkBlueColor,
              size: isLandscape(context)
                  ? 2 * height(context) * .02
                  : height(context) * .02,
            ),
            Icon(
              Icons.star,
              color: darkBlueColor,
              size: isLandscape(context)
                  ? 2 * height(context) * .02
                  : height(context) * .02,
            ),
          ],
        )
      ],
    ),
  );
}

recentlyBookedWidget({BuildContext context}) {
  return Container(
    child: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Recently Booked",
          style: TextStyles.descriptionTextStyle.copyWith(
              color: greyColor,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .018
                  : height(context) * .018,
              fontWeight: FontWeight.normal),
        ),
        responsiveSizedBox(context: context ,percentageOfHeight: .01),
        Container(
          child: Stack(
            children: [
              Container(
                child: Container(
                    child: Row(
                  children: [
                    SizedBox(
                      width: width(context) * .05,
                    ),
                    singleRecentlyBookedPerson(context: context)
                  ],
                )),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: width(context) * .1,
                    ),
                    singleRecentlyBookedPerson(context: context)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: width(context) * .15,
                    ),
                    singleRecentlyBookedPerson(context: context)
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: width(context) * .2,
                    ),
                    singleRecentlyBookedPerson(context: context , isThisTheNumberOfPersonsCard: true)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}

singleRecentlyBookedPerson(
    {BuildContext context, bool isThisTheNumberOfPersonsCard: false}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.convex,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(4)),
              depth: 5,
              lightSource: LightSource.bottomLeft,
              shadowLightColor: Colors.white,
              shadowDarkColor: Colors.grey,
//                        shadowDarkColor: Colors.grey ,
              color: isThisTheNumberOfPersonsCard == false
                  ? hotelBackgroundColor
                  : darkBlueColor),
          child: Container(
            height: isLandscape(context)
                ? 2 * height(context) * .04
                : height(context) * .04,
            width: width(context) * .085,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isThisTheNumberOfPersonsCard == false
                    ? Image.asset(
                        "assets/images/peson.jpg",
                        fit: BoxFit.cover,
                        width: width(context) * .085,
                      )
                    : Container(
                        child: Center(
                          child: Text(
                            "+50",
                            style: TextStyles.descriptionTextStyle.copyWith(
                                fontSize:isLandscape(context)
                                    ? 2 * height(context) * .015
                                    : height(context) * .015,
                                color: whiteColor,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ),
              ],
            )),
          ),
        )
      ],
    ),
  );
}
