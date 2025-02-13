import 'package:flutter/material.dart';
import 'package:islami_app/style/ColorsManeger.dart';
import 'package:islami_app/style/assetsManeger.dart';

class RecentlySuraWidget extends StatelessWidget {
  const RecentlySuraWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: ColorsManeger.primary,
        
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(17),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text("Al-Anbiya",style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.w700,fontFamily: "janna",color: ColorsManeger.secondary),),
                ),
                Expanded(
                  child: Text("الأنبياء",style: TextStyle(fontSize: 24,
                      fontWeight: FontWeight.w700,fontFamily: "janna",color:ColorsManeger.secondary),),
                ),
                Expanded(
                  child: Text("112 Verses  ",style: TextStyle(fontSize: 14,
                      fontWeight: FontWeight.w700,fontFamily: "janna",color:ColorsManeger.secondary),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Image.asset(AssetsManger.quranCard),
          )
        ],
      ),
    );
  }
}
