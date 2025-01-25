import 'package:flutter/material.dart';
import 'package:notes_app/constants/my_colors.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: MyColors.myWhite,
        
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color:Colors.black ,size: 28,)),
    );
  }
}