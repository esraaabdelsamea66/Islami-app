import 'package:flutter/material.dart';

import '../../../style/assetsManeger.dart';

class HadithTab extends StatelessWidget {
  const HadithTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.black,
        child: Image.asset(
          AssetsManger.AhadithBack,
          fit: BoxFit.contain,

          alignment: Alignment.center,
        ),
      ),
    );
  }
}
