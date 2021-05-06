import 'package:flight/file_export.dart';

hotPackagesAndViewAllRow(
    {BuildContext context,Function onTapViewAll
    }) {
  return Container(
    width: width(context) * .9,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Hot Packages",

          style: TextStyles.descriptionTextStyle.copyWith(
              color: blackColor ,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .03
                  : height(context) * .03,
              fontWeight: FontWeight.normal

          ),
        ),
        GestureDetector(onTap:onTapViewAll ,
          child: Text(
           "View All",

            style: TextStyles.descriptionTextStyle.copyWith(
                fontSize: isLandscape(context)
                    ? 2 * height(context) * .02
                    : height(context) * .02,
                fontWeight: FontWeight.normal

            ),
          ),
        )




      ],
    ),
  );
}
