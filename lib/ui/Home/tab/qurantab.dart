import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/Model/SuraModel.dart';
import 'package:islami_app/style/ColorsManeger.dart';
import 'package:islami_app/style/Constants.dart';
import 'package:islami_app/style/assetsManeger.dart';
import 'package:islami_app/style/stringsManeger.dart';
import 'package:islami_app/ui/Home/widgets/SuraWidget.dart';
import 'package:islami_app/ui/Home/widgets/recentlySuraWidget.dart';

class QuranTab extends StatelessWidget {

  const QuranTab({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsManger.quranback),
                fit: BoxFit.fitWidth)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(child: Image.asset(AssetsManger.logo,height: 151,width: 291,)),
              TextField(
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "janna",
                    color: Color(0xffFEFFE8)),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  isCollapsed: true,
                  fillColor: ColorsManeger.secondary.withOpacity(0.7),
                  filled: true,
                  hintText: "Sura Name",
                  hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      fontFamily: "janna",
                      color: Color(0xffFEFFE8)),
                  prefixIconConstraints: BoxConstraints(
                    maxHeight:55,
                    maxWidth: 55,
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14),
                    child: SvgPicture.asset(AssetsManger.Quran),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: ColorsManeger.primary),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorsManeger.primary),
                ),

              ),

              ),
              SizedBox(height: 20,),
              Text(
                StringsManeger.mostRecently,
                style: TextStyle(fontFamily: "janna",
                    fontWeight: FontWeight.w700,
                color: ColorsManeger.teritary,
                fontSize: 16),),
              SizedBox(height: 10,),
              Expanded(
                flex: 1,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=>RecentlySuraWidget(),
                   separatorBuilder: (context,index)=>SizedBox(width: 10,),
                    itemCount:10),
              ),
              SizedBox(height: 10,),
              Text(
                StringsManeger.surasList,
                style: TextStyle(fontFamily: "janna",
                    fontWeight: FontWeight.w700,
                color: ColorsManeger.teritary,
                fontSize: 16),),
              SizedBox(height: 10,),
             Expanded(
               flex: 2,
               child: ListView.separated(
                 separatorBuilder: (context,index)=>Padding(
                   padding: EdgeInsets.symmetric(
                     horizontal: 44
                   ),
                   child: Divider(height: 22,),
                 ),
                   itemCount: suraList.length,
                   itemBuilder: (context, index)=>SuraWidget( suraModel: suraList[index],) ),
             ),

            ],
          ),
        ),
      ),
    );
  }
}
