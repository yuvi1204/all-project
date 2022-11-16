import 'package:flutter/material.dart';
import 'package:flutter_project3/main.dart';
import 'package:flutter_project3/ui/login/singin.dart';
import 'package:flutter_project3/ui/splashscreen/splashcreen1.dart';

class Mysplashscreen1 extends StatefulWidget {
  @override
  State<Mysplashscreen1> createState() => _Mysplashscreen1State();
}

class _Mysplashscreen1State extends State<Mysplashscreen1> {
  @override
  void initState() {
    
    super.initState();
   
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color(0xff3dd7cd)
          
          ),
      child: Column(
       
        children: <Widget>[
          SizedBox(
            height: 100.0,
          ),
          Text(
            'HELP THE NATURE !',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'BEING WITH YOURSELF ! ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              height: 200,
              child: Image.asset(
                "assets/images/img1.jpg",
                height: 100,
                width: 100,
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: StadiumBorder() 
                          
                          ),
                      child: Text(
                        'GET STARTED',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Mylogin()));
                      }
                   

                      ))
            ],
          ),
         
        ],
      ),
    ));
  }
}
