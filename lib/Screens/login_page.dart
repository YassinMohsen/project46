import 'package:flutter/material.dart';
import 'package:graduation/Screens/second_screen.dart';
import 'package:graduation/widgets/PasswordField.dart';
import 'package:graduation/widgets/button.dart';
import 'package:graduation/widgets/custom_text_field.dart';

class login_page extends StatelessWidget {
  const login_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Color(0xffFAF9F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('S',
                style: TextStyle(
                  fontSize: 102,
                  fontWeight: FontWeight.bold, 
                 // fontFamily: 'Rubik', 
                  color: Colors.black,
                  
                ),
                ),
                 Text('H',
                style: TextStyle(
                  fontSize: 102,
                  fontWeight: FontWeight.bold, 
                //  fontFamily: 'Rubik', 
                 color: Color(0xFF7939FF),
                  
                ),
                ),
                 Text('A',
                style: TextStyle(
                  fontSize: 102,
                  fontWeight: FontWeight.bold, 
                  color: Colors.black,
                //  fontFamily: 'Rubik', 
                  
                ),
                ),
              ],
            ),
            
             Text('L O G I N',
                         style: TextStyle(
                          fontWeight: FontWeight.bold,
                         // fontFamily: 'Rubik', 
              fontSize: 24,
              color: Colors.black,
             
                         ),
                         ),
             Container(
              height: 50,
             ),
            CustomTextField(hintText: 'Email', icon: Icons.email,),
            Container(height: 10,),
            PasswordField(hintText: "Password",icon: Icons.lock),
          
             Container(height: 10,),
            CustomButton(text:'Login' ,onTap: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)
            {return SecondScreen();},

            ),
            );
            },
            ),
            
            
       
            
            
        
          ],
        ),
      ),
    );
  } 
}