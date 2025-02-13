import 'package:flutter/material.dart';

import '../../../style/assetsManeger.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(AssetsManger.sebhaBack),fit: BoxFit.fitWidth)
      ),
    );
  }
}
