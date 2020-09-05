import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final Function ontap;
  CustomAppBar({
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: ontap,
            child: CustomIconBtn(customIcon: Icons.menu),
          ),
          CustomIconBtn(customIcon: Icons.search),
        ],
      ),
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
