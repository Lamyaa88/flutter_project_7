import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';

titleTextWidgetFotHotelDetails({
  BuildContext context,
}) {
  return Container(
      padding: EdgeInsets.only(left: width(context) * .02),
      width: width(context) * .9,
      child: Column(
        children: [
          responsiveSizedBox(context: context, percentageOfHeight: .01),
          Row(
            children: [
              Text(
               "Bltinum Grand" ,

                style: TextStyles.descriptionTextStyle.copyWith(
                    color: blackColor ,
                    fontSize: isLandscape(context)
                        ? 2 * height(context) * .03
                        : height(context) * .03,
                    fontWeight: FontWeight.normal

                ),
              ),
            ],
          ),
          responsiveSizedBox(context: context, percentageOfHeight: .01),
          Row(
            children: [
              Row(
                children: [
                  Text(
                    "Tokyo , Square , Japan",
                    style: TextStyles.descriptionTextStyle.copyWith(
                        color: blackColor,
                        fontSize: isLandscape(context)
                            ? 2 * height(context) * .018
                            : height(context) * .018,
                        fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: width(context) * .05,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Show in map ",
                      style: TextStyles.descriptionTextStyle.copyWith(
                          color: greyColor,
                          fontSize: isLandscape(context)
                              ? 2 * height(context) * .018
                              : height(context) * .018,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ));
}
