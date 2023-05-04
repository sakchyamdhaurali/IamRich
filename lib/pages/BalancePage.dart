import 'package:flutter/material.dart';


class BalancePage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
  home: Scaffold(
     drawer: Drawer(),
          appBar: AppBar(
            centerTitle: true,
            title: Text('IamAppBar', 
            style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 20),   
            ),
          ) ,
 
         


       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Your Balance : \$1,000,000",
            style: TextStyle(
              fontFamily: 'Instrument Serif',
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
            
             child: Text('Go Back',
              style: TextStyle(
              // fontFamily: 'Instrument Serif',
              fontWeight: FontWeight.bold,
              // fontSize: 22,
            ),
             ),)
          ],
         ),
       )
    ),
     );
    
  }
}