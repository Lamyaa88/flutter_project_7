import 'package:flight/file_export.dart';

boldTextINTHeRightSide(
    {BuildContext context,
      String text ,
   }) {
  return Container(
    width: width(context) * .9,
    child: Row(
      children: [

        Text(
          text,

          style: TextStyles.descriptionTextStyle.copyWith(
              color: blackColor ,
              fontSize: isLandscape(context)
                  ? 2 * height(context) * .03
                  : height(context) * .03,
              fontWeight: FontWeight.normal

          ),
        )
      ],
    ),
  );
}
