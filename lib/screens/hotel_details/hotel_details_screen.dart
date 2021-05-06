import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_details/widgets/aminities_row_widget.dart';
import 'package:flight/screens/hotel_details/widgets/book_now_and_add_to_favorits_widget.dart';
import 'package:flight/screens/hotel_details/widgets/description_text_widget.dart';
import 'package:flight/screens/hotel_details/widgets/price_and_reviews_row.dart';
import 'package:flight/screens/hotel_details/widgets/title_text_widget.dart';
import 'package:flight/screens/hotel_details/widgets/top_image.dart';
import 'package:flight/screens/hotel_home/widgets/bold_text_in_the_right_side.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';
class HotelDetailsScreen extends StatelessWidget {
  static const String routeName = "HotelDetailsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Container(
        height: height(context),
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  topImageFotHotelDetails(context: context),
                  titleTextWidgetFotHotelDetails(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  descriptionTextWidgetFotHotelDetails(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  priceAndReviewsRow(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  boldTextINTHeRightSide(context: context , text: "Aminities"),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  aminitiesRowWidget(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),
                  bookNowAndFavouritesWidget(context: context),
                  responsiveSizedBox(context: context, percentageOfHeight: .02),


                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
