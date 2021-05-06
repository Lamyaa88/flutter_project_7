import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/widgets/responsive_sized_box.dart';

aminitiesRowWidget({BuildContext context}){
  return   Container(width: width(context)*.9,child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      singleAminietWidget(context: context , icon: AppIcons.taxi  , text: "Parking"),
      singleAminietWidget(context: context  ,icon: AppIcons.path , text: "Bath"),
      singleAminietWidget(context: context,icon: AppIcons.clocks , text: "Gym" ),
      singleAminietWidget(context: context , icon: AppIcons.taxi  , text: "Parking"),
      singleAminietWidget(context: context  ,icon: AppIcons.path , text: "Bath"),
      singleAminietWidget(context: context,icon: AppIcons.clocks , text: "Gym" ),




    ],),)
       ;
}


singleAminietWidget({BuildContext context  , String icon  , String text }){
  return Row(
    children: [
      Column(
        children: [
          Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.convex,
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  depth: 10,
                  lightSource: LightSource.topLeft,
                  shadowLightColor: Colors.white,
                  shadowDarkColor: greyColor ,
//                        shadowDarkColor: Colors.grey ,
                  color: hotelBackgroundColor),
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  height: isLandscape(context)
                      ? 2 * height(context) * .05
                      : height(context) * .05,
                  width: width(context)*.1,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(icon, width: width(context)*.05,height: isLandscape(context)
                              ? 2 * height(context) * .025
                              : height(context) * .025 ,)
                        ],
                      )),
                ),
              )),

          responsiveSizedBox(context: context ,percentageOfHeight: .015),
          Text(text , style: TextStyles.descriptionTextStyle.copyWith(color: greyColor.withOpacity(.7)
            ,fontSize:isLandscape(context)
              ? 2 * height(context) * .015
              : height(context) * .015,fontWeight: FontWeight.normal ),
          )
        ],
      ),
    ],
  ) ;
}