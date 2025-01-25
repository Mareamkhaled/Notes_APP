import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key,required this.title,required this.icon, this.onPressed});
 final String title;
 final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 16),
    child: Row(
      children: [
        Text(title ,style: TextStyle(
          fontSize:32 
        ),),
        Spacer(),
        CustomIcon(icon: Icons.search,onPressed: onPressed)],
    ),
    
    );
  }
}