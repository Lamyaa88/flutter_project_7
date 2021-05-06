import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';


descriptionTextWidgetFotHotelDetails(
    {BuildContext context,
      Function onTapUserImage,
      String userImagePass,
      String userName}) {


  return
    Container(padding: EdgeInsets.only(left: width(context)*.05),
        child: Column(
          children: [


            Row(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(width: width(context)*.9,
                      child: Text(
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, ",
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
        ))
  ;
}
