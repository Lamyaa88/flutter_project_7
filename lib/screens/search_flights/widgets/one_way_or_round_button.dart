import 'package:flight/file_export.dart';

oneWayOrRoundButton({BuildContext context , String iconPath , String  buttonText , Function onTepButton , bool isBlueButton : false }){
  return   Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(30)),
          depth: 10,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
          color: isBlueButton == true ? darkBlueColor : lightBlueColor),
      child: GestureDetector(
        onTap: onTepButton,
        child: Container(
            height: isLandscape(context) ? 2 * height(context)*.07 : height(context)*.07,
            width: width(context) * .25,
            decoration:
            BoxDecoration(shape: BoxShape.circle),
            child: Row(
              mainAxisAlignment:
              MainAxisAlignment.spaceAround,
              children: [
//                Container(
//                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
//                      children: [
//                        Image.asset(iconPath, height:isLandscape(context)
//                            ? 2 * height(context) * .03
//                            : height(context) * .03  ,width: width(context)*.1,),
//                      ],
//                    )),
                Text(
                  buttonText.toUpperCase(),
                  style: TextStyles.descriptionTextStyle
                      .copyWith( color: isBlueButton == true ? lightBlueColor: darkBlueColor ,fontWeight:
                  FontWeight.normal ,fontSize: isLandscape(context) ? 2 * height(context)*.016 : height(context)*.016,),
                ),
              ],
            )),
      )) ;
}