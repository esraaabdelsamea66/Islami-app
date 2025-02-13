import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/style/ColorsManeger.dart';
import 'package:islami_app/style/assetsManeger.dart';
import 'package:islami_app/style/stringsManeger.dart';
import 'package:islami_app/ui/Home/tab/RadioTab.dart';
import 'package:islami_app/ui/Home/tab/TimeTab.dart';
import 'package:islami_app/ui/Home/tab/ahadithTab.dart';
import 'package:islami_app/ui/Home/tab/qurantab.dart';
import 'package:islami_app/ui/Home/tab/sebhatab.dart';

class HomeScreen extends StatefulWidget {
  static const String RouteName="home";
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int SelectedIndex=0;
    List<Widget>tabs=[
      QuranTab(),
      HadithTab(),
      SebhaTab(),
      RadioTab(),
      TimeTab(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar:NavigationBar(
        selectedIndex: SelectedIndex,
        onDestinationSelected: (index){
          setState(() {
            SelectedIndex=index;

          });

        },
        backgroundColor: ColorsManeger.primary,
          indicatorColor:ColorsManeger.navItemBack ,
          labelBehavior:NavigationDestinationLabelBehavior.onlyShowSelected ,
          destinations:[
        NavigationDestination(
            icon:SvgPicture.asset(AssetsManger.Quran,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.secondary, BlendMode.srcIn)),
            selectedIcon: SvgPicture.asset(AssetsManger.Quran,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.teritary, BlendMode.srcIn)),

            label:StringsManeger.quran ),
        NavigationDestination(
            icon:SvgPicture.asset(AssetsManger.Ahadith,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.secondary, BlendMode.srcIn)),
            selectedIcon: SvgPicture.asset(AssetsManger.Ahadith,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.teritary, BlendMode.srcIn)),

            label:StringsManeger.hadith ),
        NavigationDestination(
            icon:SvgPicture.asset(AssetsManger.sebha,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.secondary, BlendMode.srcIn)),
            selectedIcon: SvgPicture.asset(AssetsManger.sebha,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.teritary, BlendMode.srcIn)),

            label:StringsManeger.sebha ),
        NavigationDestination(
            icon:SvgPicture.asset(AssetsManger.radioIcon,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.secondary, BlendMode.srcIn)),
            selectedIcon: SvgPicture.asset(AssetsManger.radioIcon,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.teritary, BlendMode.srcIn)),

            label:StringsManeger.radio ),
        NavigationDestination(
            icon:SvgPicture.asset(AssetsManger.Vector,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.secondary, BlendMode.srcIn)),
            selectedIcon: SvgPicture.asset(AssetsManger.Vector,
                colorFilter: ColorFilter.mode
                  (ColorsManeger.teritary, BlendMode.srcIn)),

            label:StringsManeger.time ),
      ] ),
      body: tabs[SelectedIndex],
    );
  }
}
