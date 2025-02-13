import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/Model/SuraModel.dart';
import 'package:islami_app/style/ColorsManeger.dart';
import 'package:islami_app/style/assetsManeger.dart';

class SuraWidget extends StatelessWidget {
  final SuraModel suraModel;
  const SuraWidget({super.key,required this.suraModel});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(AssetsManger.Sura_Number,
              height: 52,
              width: 52,
              
            ),
            Text(suraModel.SuraNumber.toString(),style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: "janna",color: ColorsManeger.teritary),)
          ],
        ),
Expanded(
  child: Column(
    children: [
      Text(suraModel.SuraNameEn,style: TextStyle(fontFamily: "janna",
          fontWeight: FontWeight.w700,
          fontSize: 20,color: Colors.white),),
      Text("${suraModel.SuraVersesNumber} verses",style: TextStyle(fontFamily: "janna",
          fontWeight: FontWeight.w700,
          fontSize: 14,color: Colors.white),)
    ],
  ),
),
        Text(suraModel.SuraNameAr,style: TextStyle(fontFamily: "janna",
            fontWeight: FontWeight.w700,
            fontSize: 20,color: Colors.white),),

      
      ],
    );
  }
}
