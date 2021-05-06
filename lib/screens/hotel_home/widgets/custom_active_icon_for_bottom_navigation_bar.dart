import 'package:flight/file_export.dart';

customActiveIconForBottomNavigationBar({BuildContext context   , Widget icon  , String text }){
  return  Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.convex,
          boxShape:
          NeumorphicBoxShape.roundRect(BorderRadius.circular(70)),
          depth: 5,
          lightSource: LightSource.topLeft,
//                                    shadowLightColor: Colors.white,
          shadowDarkColor: Colors.black,
//                        shadowDarkColor: Colors.grey ,
          color: hotelBackgroundColor ),
      child: GestureDetector(


        child:
            Container(

              height: isLandscape(context)
                  ? 2 * height(context) * .11
                  : height(context) * .11

              ,width: isLandscape(context)  ? .5*width(context)*.18 :width(context)*.17 ,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
              child: Container(   decoration: BoxDecoration(borderRadius: BorderRadius.circular(80)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        icon,
                        Text(text, style: TextStyles.descriptionTextStyle.copyWith(fontSize:isLandscape(context)
                            ? 2 * height(context) * .012
                            : height(context) * .012 ),)
                      ],)

                    ],
                  )),
            ),




      ));
}