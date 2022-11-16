import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyLogingpage extends StatefulWidget {
  const MyLogingpage({Key? key}) : super(key: key);

  @override
  State<MyLogingpage> createState() => _MyLogingpageState();
}

class _MyLogingpageState extends State<MyLogingpage> {
  TextEditingController email = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController _password = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  bool _isVisible = false;
  bool _isVisibleicon = false;
  bool changeColor = false;

  bool valuefirst = false;

   /*void updateStatus() {
    setState(() {
      isVisibleicon = !isVisibleicon;
    });
  }

  void Shoew() {
    setState(() {
      isVisible = !isVisible;
    });
  }*/

  


  void color() {
    setState(() => changeColor = !changeColor);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  SizedBox(height: 80,),
                  Padding(
                   padding:EdgeInsets.only(left: 80,top: 60),
                    child: Container(             
                    child: Image.asset("assets/images/newlogo.png",height: 200,width: 200,),
                    ),
                  ),
                 Container(
                  child: Image.asset("assets/images/bgnew.png",width: MediaQuery.of(context).size.width,),
                 )
                ],
              ),
              Container(
                child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),

              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 180,
                               padding: EdgeInsets.only(right: 30),
                               child: RaisedButton(                             
                                shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Text("Email",style: TextStyle(
                                             color: changeColor ? Colors.white : Colors.black,fontSize: 16),),
                                        onPressed: () => {
                                            if (!_isVisible)
                                              {
                                                color(),
                                              //  Shoew(),
                                             //   email.clear(),
                                              //  password.clear()
                                              }
                                            else
                                              {_isVisible},
                                          },
                                          
                                      ),
                          ),
                          Container(
                            width: 180,
                              margin: EdgeInsets.only(left: 80),
                                padding: EdgeInsets.only(left: 30),
                                child: RaisedButton(
                                  
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Text("Phone",style: TextStyle(
                                             color: changeColor ? Colors.white : Colors.black,fontSize: 16),),
                                  
                                  onPressed:()=>{

                                    if (_isVisible)
                                    {
                                    //  Shoew(),
                                       color()
                                    }
                                    else
                                    {!_isVisible},
                                   // mobile.clear(),
                                    //password.clear()
                                  }
                                                                
                                  ),
                          ),
                          SizedBox(height: 20,),

                         Container(
                            padding: EdgeInsets.all(15),
                                child: _isVisible?TextFormField(
                                  inputFormatters: [
                                             FilteringTextInputFormatter.deny(RegExp(r'[ ]')),
                                  ],
                                  controller:email,
                                  decoration: InputDecoration(
                                    filled: true,
                                       
                                hintText: "Email",
                                   border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                prefixIcon: Container(
                                    margin: EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(color: Color(0xffababaf))

                                      )

                                    ),
                                ),

                                  ),

                                ),
                          ),
                        ],
                      )

                    ],
                  ),
              )

            ],

          ),

        ) 
        ),
    );
    
  }
}