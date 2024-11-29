import 'package:flutter/material.dart';
import 'package:stampsphere/constants.dart';
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});
  
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          body:Container(
            padding: EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: AssetImage(imageurl)),
                 Column(
                  children:<Text> [ 
                    Text('Unite the World, One Stamp at a Time.',style: const  TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900
                    )),
                    Text('Buy and Sell rare Stamps',style:Theme.of(context).textTheme.headlineLarge)
                    
                    ],
                 ),
               
                Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
                  Expanded(child: OutlinedButton(onPressed: (){},style:OutlinedButton.styleFrom(
                    shape:RoundedRectangleBorder(),
                    foregroundColor: Colors.black,
                    side:BorderSide(color:Colors.black),
                    padding: EdgeInsets.symmetric(vertical: 15.0)
                  ) ,child: Text('LOGIN'))),
                  SizedBox(width: 10.0,),
                  Expanded(child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(
                    elevation: 0,
                    shape:RoundedRectangleBorder(),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    side:BorderSide(color:Colors.black),
                    padding: EdgeInsets.symmetric(vertical: 15.0)
                  ), child: Text('SIGNUP')))
                ],)
              ]
            ),
          )
      ),
    );
  }
}