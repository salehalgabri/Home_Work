import 'package:flutter/material.dart';

class CustomFeatureListTile extends StatelessWidget {
  const CustomFeatureListTile({
    super.key,
    required this.iconPrefix,
    required this.iconPrefixColor,
    required this.previousIcon,
    required this.previousIconColor,
    required this.title,
    required this.subTitle, required this.iconPrefixBackGroundColor,
  });

  final IconData iconPrefix;
  final Color iconPrefixColor;
  final Color iconPrefixBackGroundColor;
  final IconData previousIcon;
  final Color previousIconColor;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(
            Radius.circular(
              16,
            ),
          ),
        ),
        tileColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            color: Colors.black26,
          ),
        ),
        trailing: Icon(
          previousIcon,
          size: 20,
          color: previousIconColor,
        ),
        leading: Container(
          padding: const EdgeInsets.all(
            8.0,
          ),
          decoration: BoxDecoration(
            color:iconPrefixBackGroundColor,
            borderRadius: BorderRadius.circular(
              10,
            ),
          ),
          child: Icon(
            iconPrefix,
            color: iconPrefixColor,
          ),
        ),
      ),
    );
  }
}
