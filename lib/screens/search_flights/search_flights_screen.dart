import 'package:flight/file_export.dart';
import 'package:flight/screens/search_flights/widgets/center_image_widget.dart';
import 'package:flight/screens/search_flights/widgets/from_and_to_card.dart';
import 'package:flight/screens/search_flights/widgets/one_way_or_round_button.dart';
import 'package:flight/screens/search_flights/widgets/search_flights_button.dart';
import 'package:flight/screens/search_flights/widgets/single_flight_description_card.dart';
import 'package:flight/screens/search_flights/widgets/top_icon_container.dart';

class SearchFlightsScreen extends StatefulWidget {
  static const String routeName = "SearchFlightsScreen";

  @override
  _SearchFlightsScreenState createState() => _SearchFlightsScreenState();
}

class _SearchFlightsScreenState extends State<SearchFlightsScreen> {
  DateTime selectedDate = DateTime.now();
  String departDate = "15/2/2021";
  String returnDate = "15/2/2021";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlueColor,
      body: Container(
        width: width(context),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .06
                            : height(context) * .06,
                      ),
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            topIconContainer(
                                context: context,
                                iconPath: AppIcons.menu ,
                                onTapButton: () {}),
                            Text(
                              "Search Flights",
                              style: TextStyles.descriptionTextStyle.copyWith(
                                  fontSize: isLandscape(context)
                                      ? 2 * height(context) * .03
                                      : height(context) * .025),
                            ),
                            topIconContainer(
                                context: context,
                                iconPath: AppIcons.notifications ,
                                onTapButton: () {}),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .01
                            : height(context) * .01,
                      ),
                      centerImageWidget(context: context),

                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            oneWayOrRoundButton(
                                context: context,
                                buttonText: "One Way ",
                                iconPath: AppIcons.one_way,
                                isBlueButton: true,
                                onTepButton: () {

                                }),
                            oneWayOrRoundButton(
                                context: context,
                                buttonText: "Round trip",
                                iconPath: AppIcons.one_way,
                                isBlueButton: false,
                                onTepButton: () {

                                }),
                            oneWayOrRoundButton(
                                context: context,
                                buttonText: "multible",
                                iconPath: AppIcons.round,
                                isBlueButton: false,
                                onTepButton: () {

                                }),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      fromAndToCard(
                          context: context,
                          status: "from",
                          place: "Sydney , Australia ",
                        iconPath: AppIcons.take_off_1,),

                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      fromAndToCard(
                          context: context,
                          status: "to",
                          place: "New Delhi , India",
                        iconPath: AppIcons.take_off_2,),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),

//                     squares
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                  primaryColor: Colors.black,
                                  selectedRowColor: Colors.black,
                                  accentColor: darkBlueColor,
                                  colorScheme: ColorScheme.light(
                                    primary: darkBlueColor,
                                  )),
                              child: new Builder(
                                builder: (context) =>
                                    Container(
                                      child: flightDescriptionCard(
                                          context: context,
                                          title: "departure",
                                          subTitle: "${departDate}".split(
                                              " ")[0],
                                        iconPath: AppIcons.calender,

                                          onTapIcon: () {
                                            _selectDepartDate(context);
                                          }),
                                    ),
                              ),
                            ),
                            flightDescriptionCard(
                                context: context,
                                title: "class",
                                subTitle: "business",
                                iconPath: AppIcons.chair,
                                onTapIcon: () {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .015
                            : height(context) * .015,
                      ),
                      Container(
                        width: width(context) * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            flightDescriptionCard(
                                context: context,
                                title: "travellers",
                                subTitle: "2 Adults",
                                iconPath: AppIcons.user,
                                onTapIcon: () {}),
                            flightDescriptionCard(
                                context: context,
                                title: "book a car ",
                                subTitle: "In New Delhi",
                                iconPath: AppIcons.taxi,
                                onTapIcon: () {}),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .04
                            : height(context) * .04,
                      ),
                      searchFlightButton(
                          context: context,
                          onTapButton: () {
                            Navigator.of(context)
                                .pushNamed(SelectFlightScreen.routeName);
                          }),
                      SizedBox(
                        height: isLandscape(context)
                            ? 2 * height(context) * .04
                            : height(context) * .01,
                      ),

//                  buttons
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _selectDepartDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2000, 8),
        fieldHintText: "field",
        errorFormatText: "error",
        lastDate: DateTime(2030));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        departDate = picked.toLocal().toString();
      });
  }
}
