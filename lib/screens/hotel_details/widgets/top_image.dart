import 'package:flight/file_export.dart';
import 'package:flight/screens/hotel_home/hotel_home_screen.dart';

topImageFotHotelDetails(
    {BuildContext context,
   }) {
  
  
  return 
    Container(height: isLandscape(context)
        ? 2* height(context) * .5
        : height(context) * .43 ,width: width(context),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(image: DecorationImage(
            image: AssetImage(
              AppImages.hotel4),
            fit: BoxFit.fill,), ),
          width: width(context),height:isLandscape(context)
            ? 2 * height(context) * .5
            : height(context) * .43 ,

        ),
        Container(padding: EdgeInsets.only(left: width(context)*.05 ,top
            :isLandscape(context)
  ? 2 * height(context) * .07
      : height(context) * .07 ,),alignment: Alignment.topLeft,
            height: isLandscape(context)
  ? 2 * height(context) * .4
      : height(context) * .4 ,width: width(context),child:
        Row(
          children: [
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
                  onTap: (){Navigator.of(context).pushNamed(HotelHomeScreen.routeName);},
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
                           Icon(Icons.chevron_left , color: greyColor,)
                          ],
                        )),
                  ),
                )),
          ],
        )
          
        )
      ],),
    )
    ;
}
