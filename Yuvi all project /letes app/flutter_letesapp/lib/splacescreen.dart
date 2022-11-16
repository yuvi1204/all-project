import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_letesapp/login/login.dart';

class MySplacescreen extends StatefulWidget {
  const MySplacescreen({Key? key}) : super(key: key);
  

  @override
  State<MySplacescreen> createState() => _MySplacescreenState();
}

class _MySplacescreenState extends State<MySplacescreen> {
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold(
       backgroundColor: Color(0xff9985e0),
        body: Center(
         
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                
                children: [
                  Container(
                    width: 300,
                    height: 200,
                     decoration: BoxDecoration(
                      
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage("assets/images/social1.jpeg",) ,
                                                fit: BoxFit.fill
                                              ),
                                              boxShadow: [
                                              BoxShadow(
                                                color: Colors.white70.withOpacity(1),
                                                spreadRadius: 5,
                                                blurRadius: 7,
                                                offset: Offset(0, 0), // changes position of shadow
                                              ),
                                            ]
                            ),
                                            /* child:
                      Image.asset(
                    "assets/images/social1.jpeg",
                   
                
                  )*/
                  )
                  
                
                ],
              ),
              SizedBox(height: 20,),
              Container(
                child: Text('Best Social App To Make \n New Friends',textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),),

              ),
              SizedBox(height: 20,),
              Container(
                child: Text('Fusce it nisi eget dolor rhoncus facilisis. \n Mauris ante nisl, consectetur et luctus et.\n Porta ut dolor.',textAlign: TextAlign.center,style: TextStyle(fontSize: 14,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.white),),

              ),
              SizedBox(height: 20,),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>MyLoginpage()));
                  }, 

              child: Container(
                  width: 75,
                    height: 75,
                    
                     decoration: BoxDecoration(
                      
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                image: AssetImage("assets/images/iphone.jpg",) ,
                                                fit: BoxFit.fill
                                              ),
                                             
                            ),
                            

              )
              )
            ],
            
          ),
        )
    );
      
    
  }
}