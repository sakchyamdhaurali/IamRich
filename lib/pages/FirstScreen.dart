import 'package:flutter/material.dart';
import 'BalancePage.dart';
class FirstScreen extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {

    //We will be using material design for flutter project
    return MaterialApp(
      //Scaffold is the base layer, or an empty space 
      //Scaffold has 3 main properties: appBar,body, bottomNavigationBar
      
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
        
        
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("I am rich",
                  style: TextStyle(
                    fontSize: 60,
                    fontFamily: 'Instrument Serif',
                    color: Color.fromARGB(255, 23, 209, 29).withOpacity(0.8),

                    
                    fontWeight: FontWeight.bold,
                  ),
                  ),
        
                   Icon(
          Icons.monetization_on,
          size: 70,
          color: Color.fromARGB(255, 23, 209, 29).withOpacity(0.6),
          ),
                ],
              ),

        
           SizedBox(height: 10,),
     
           Image.asset('images/diamond.jpeg',height: 350,),
           

             ElevatedButton(onPressed: () {
              print('i am clicked');
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BalancePage())
                );
             },
              child: Text('Check your balance',
              style: TextStyle(
                
                fontSize: 16.5,
                fontWeight: FontWeight.bold,
               
                
              ),),
             style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 19,vertical: 5),
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
           
             
             
             
             ),
           ),
    ],
          ),
          
         
            
            ),
        
            
          
          
         
          
         debugShowCheckedModeBanner: false,
        
          
          // bottomNavigationBar: ,
        );
        
      

    
  }

}

