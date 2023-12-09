import 'package:flutter/material.dart';
import 'package:graduation/Screens/login_page.dart';
import 'package:graduation/widgets/button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF9F6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Container(height: 100,),
            CustomButton(text: 'Logout',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (BuildContext context) {
                    return login_page();
                  }),
                );
              },
            ),
            Container(height: 50,),
             Text('اققفل يروحمك',
                style: TextStyle(
                  fontSize: 102,
                  fontWeight: FontWeight.bold, 
                 // fontFamily: 'Rubik', 
                  color: Colors.black,),),
          ],
        ),
      ),
    );
  }
}