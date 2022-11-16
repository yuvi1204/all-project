import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_letesapp/mobilenumber/mobilenumber.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  bool _isObscure = true;
  TextEditingController Use1 = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
             height: MediaQuery.of(context).size.height,
       width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/images/1.png"
        ),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           )
      ),
    
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          child: SafeArea(
              child: SingleChildScrollView(
            child: Column(
              children: [
                    SizedBox(height: 100,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 90,),
                  //  alignment: Alignment.topCenter,
                    child: Text(
                      "Create Account ",
                     textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                    ),
                    
                  ),
                  SizedBox(height: 20,),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xfff2f3f7),
                          borderRadius: BorderRadius.circular(30),
                          ),
                        child: Row(
                          children: [
                              Icon(Icons.person),
                          Expanded(
                              child: TextField(
                                autofocus: true,
                              keyboardType: TextInputType.text,
                                controller: Use1,
                                decoration: InputDecoration(
                                  fillColor: Color(0xfff2f3f7),
                                
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(1)),
                                                  
                                      hintText: 'User Name',
                                      filled: true,
                                  
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10,),
                               Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                color: Color(0xfff2f3f7),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            child: Row(
                              children: [
                              
                                Icon(Icons.lock),
                                
                                Expanded(
                                  child: TextField(
                                    obscureText: _isObscure,
                                    autofocus: true,
                  
                                    controller: pass,
                                    decoration: InputDecoration(
                                      fillColor: Color(0xfff2f3f7),
                                  
                                      suffixIcon: IconButton(
                                      icon: Icon(
                                          _isObscure ? Icons.visibility : Icons.visibility_off),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      }),                        
                                    border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(1)),
                                              
                                      hintText: 'Password',
                                      filled: true,
                                  
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                       SizedBox(height: 10,),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xfff2f3f7),
                          borderRadius: BorderRadius.circular(30),
                          ),
                        child: Row(
                          children: [
                              Icon(Icons.mail),
                          Expanded(
                              child: TextField(
                                autofocus: true,
                              keyboardType: TextInputType.text,
                                controller: email,
                                decoration: InputDecoration(
                                  fillColor: Color(0xfff2f3f7),
                                
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(1)),
                                                  
                                      hintText: 'E-mail',
                                      filled: true,
                                  
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                               SizedBox(height: 10,),
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Color(0xfff2f3f7),
                          borderRadius: BorderRadius.circular(30),
                          ),
                        child: Row(
                          children: [
                              Icon(Icons.call),
                          Expanded(
                              child: TextField(
                                autofocus: true,
                              keyboardType: TextInputType.number,
                               // controller: Use1,
                                decoration: InputDecoration(
                                  fillColor: Color(0xfff2f3f7),
                                
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide.none,
                                        borderRadius: BorderRadius.circular(1)),
                                                  
                                      hintText: 'Mobile',
                                      filled: true,
                                  
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height:10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  child:Align( alignment: Alignment.bottomRight,
                                                  child: Text("Create",style:
                                                  TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
                                                ), 
                                ),
                            ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>MyMobilenumber()));
                                  }, 

                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 15),
                                          child: Container(
                                              width: 60,
                                                height: 60,  
                                                decoration: BoxDecoration(shape: BoxShape.circle,
                                                   image: DecorationImage(
                                                  image: AssetImage("assets/images/aarrow1.png",) ,
                                                  fit: BoxFit.fill
                                                ),                                              
                                                ),                       
                                          ),
                                        )
                                        )
                                            ],
                                          ),
                                          SizedBox(height: 10,) ,
                                          Row(mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                            Text('Or create account using social media',
                                           style: TextStyle(color: Colors.black, fontSize: 15)),  
                                           ]
                                          ),
                                          SizedBox(height: 10,),
                                           Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                      // color: Color(0xff14279B),
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(45),
                                          child: Image.asset("assets/images/fb.png")),
                                    ),
                                      SizedBox(
                                      width: 10,
                                    ),
                                  Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                   
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(45),
                                          child: Image.asset("assets/images/Twitter.png")),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(45),
                                      ),
                                    
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(45),
                                          child: Image.asset("assets/images/Google.png")),
                                    ),
            ]),
             ]
            )
              )
          )
        )
      )

    );
    
  }
}