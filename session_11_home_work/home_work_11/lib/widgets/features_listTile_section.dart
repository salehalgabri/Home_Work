import 'package:flutter/material.dart';
import 'package:home_work_11/constant.dart';
import 'package:home_work_11/widgets/custom_feature_listTile.dart';

class FeaturesListTileSection extends StatelessWidget {
  const FeaturesListTileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5.0,
      children: [
        CustomFeatureListTile(
          title: 'Fast Performance',
          subTitle: 'Lightning fast app performance',
          iconPrefix: Icons.speed,
          iconPrefixColor: sColor,
          iconPrefixBackGroundColor: Color(0xFFEEEBFB),
          previousIcon: Icons.arrow_forward_ios,
          previousIconColor: Colors.black26,
        ),
        CustomFeatureListTile(
          title: 'Secure',
          subTitle: 'Your data is safe with us',
          iconPrefix: Icons.security,
          iconPrefixColor: Color(0xFF2197F5),
          iconPrefixBackGroundColor: Color(0xFFD3EDFC),
          previousIcon: Icons.arrow_forward_ios,
          previousIconColor: Colors.black26,
        ),
        CustomFeatureListTile(
          title: 'Beautiful UI',
          subTitle: 'Modern and clean design',
          iconPrefix: Icons.palette,
          iconPrefixColor: Color(0xFFFF9201),
          iconPrefixBackGroundColor: Color(0xFFFFF4CA),
          previousIcon: Icons.arrow_forward_ios,
          previousIconColor: Colors.black26,
        ),
      ],
    );
  }
}
