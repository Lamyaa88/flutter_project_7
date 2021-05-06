import 'package:flight/file_export.dart';
import 'package:flight/screens/select_flight/widgets/dashed_line_widget.dart';

fromToWidget({BuildContext context}){
  return    Container(width: width(context)*.8,
    child: Column(
      children: [


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "SYD",
              style: TextStyles.descriptionTextStyle.copyWith(
                  fontSize: isLandscape(context)
                      ? 2 * height(context) * .025
                      : height(context) * .025),
            ),
            Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppIcons.airplane, height:isLandscape(context)
                        ? 2 * height(context) * .04
                        : height(context) * .04  ,),
                  ],
                )),
            Text(
              "DEL",
              style: TextStyles.descriptionTextStyle.copyWith(
                  fontSize: isLandscape(context)
                      ? 2 * height(context) * .025
                      : height(context) * .025),
            ),
          ],
        ),

        dashedLineWidget(context: context)
      ],
    ),
  ) ;
}