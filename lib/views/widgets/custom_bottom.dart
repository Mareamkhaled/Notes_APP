import 'package:flutter/material.dart';
import 'package:notes_app/constants/my_colors.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, this.onTap});
//  final bool isLoading;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 54,
        decoration: BoxDecoration(
          color: MyColors.myBink,
          borderRadius:BorderRadius.circular(8) 
        ),
        child: Center(
          child:Text("Add",
          style: TextStyle(fontSize: 20,
          fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}