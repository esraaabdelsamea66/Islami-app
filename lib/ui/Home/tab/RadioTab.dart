import 'package:flutter/material.dart';

import '../../../style/assetsManeger.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsManger.Radio_Back),fit: BoxFit.fitWidth)
      ),
    );;
  }
}
