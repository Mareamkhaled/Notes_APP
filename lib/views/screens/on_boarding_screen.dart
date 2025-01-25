import 'package:flutter/material.dart';
import 'package:notes_app/constants/my_colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myWhite,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          spacing: 20,
          children: [
            Stack(
              children: [
                Container(
                  
                  child: Image.asset("assets/Wall Polygon.png",
                  fit: BoxFit.fill ,
                  width: double.infinity,
                  height: 420,),
                  
                  
                  ),
                  Positioned(
                    left: 130,
                    top: 150,
                    child: Image.asset("assets/Illustration.png",
                    fit: BoxFit.fill,
                    height: 285,))
                // Positioned(
                //   left: 110,
                //   top: 125,
                //   child: Image.asset("assets/Illustration.png"))
                
              ],
            ),
            // SizedBox(height: 20,),
            Text("Create free notes & collaborate with your team",
            textAlign: TextAlign.center
            ,style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean est elit, lobortis a mattis vel, aliquet ut ligula.",
            textAlign: TextAlign.center
            ,style: TextStyle(
              color: const Color.fromARGB(255, 146, 143, 143),
              fontSize: 12,
              fontWeight: FontWeight.bold
            ),),
            // ElevatedButton.styleFrom(backgroundColor: )
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              
              style: ElevatedButton.styleFrom(
                backgroundColor: MyColors.myBink
              ),
              onPressed: () {
              
            }, child: Text("Get Started"
            ,style: TextStyle(
              color: Colors.white
            ),))
            // SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}