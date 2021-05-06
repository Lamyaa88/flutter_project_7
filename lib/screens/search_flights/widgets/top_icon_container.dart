import 'package:flight/file_export.dart';

topIconContainer({BuildContext context  ,  String iconPath , Function onTapButton }){
  return  Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.flat,
          boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(10)),
          depth: 10,
          lightSource: LightSource.topLeft,
          shadowLightColor: Colors.white,
//                        shadowDarkColor: Colors.grey ,
          color: lightBlueColor),
      child: GestureDetector(
        onTap:onTapButton ,
        child: Container(
            height: isLandscape(context) ? 2 * height(context)*.08 : height(context)*.08,
            width: width(context) * .18,
            decoration:
            BoxDecoration(shape: BoxShape.circle),
            child: Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(iconPath, height:isLandscape(context)
                        ? 2 * height(context) * .028
                        : height(context) * .028  ,),
                  ],
                )), ),
      )) ;
}