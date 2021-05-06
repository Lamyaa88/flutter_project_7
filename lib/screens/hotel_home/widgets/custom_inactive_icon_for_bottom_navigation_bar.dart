import 'package:flight/file_export.dart';

customInActiveIconForBottomNavigationBar({BuildContext context   , Widget icon  , String text }){
  return  Container(
      child:  Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(text, style: TextStyles.descriptionTextStyle.copyWith(fontSize:isLandscape(context)

              ? 2 * height(context) * .012
              : height(context) * .012, color: greyColor ),
          )
        ],
      ) ,
  ) ;
}