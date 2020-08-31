import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconBtn(customIcon: Icons.menu),
        CustomIconBtn(customIcon: Icons.search),
      ],
    );
  }
}

class CustomIconBtn extends StatelessWidget {
  final IconData customIcon;
  CustomIconBtn({@required this.customIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(5.0)),
      child: Icon(customIcon),
    );
  }
}
