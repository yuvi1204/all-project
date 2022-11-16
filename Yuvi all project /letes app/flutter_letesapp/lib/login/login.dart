import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_letesapp/login/createaccount/createaccount.dart';

class MyLoginpage extends StatefulWidget {
  const MyLoginpage({Key? key}) : super(key: key);

  @override
  State<MyLoginpage> createState() => _MyLoginpageState();
}

class _MyLoginpageState extends State<MyLoginpage> {
   bool _isObscure = true;
  
   TextEditingController Use = TextEditingController();
  TextEditingController pass = TextEditingController();
   bool us = false, pa = false;
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
                      "Hello  ",
                     textAlign: TextAlign.center, style: TextStyle(fontSize: 62, fontWeight: FontWeight.bold,),
                    ),
                    
                  ),
                
                Container(
                  height: 30,
                  child:Text("Sign in to your account",
                     textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),)

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
                Icon(Icons.person),
             Expanded(
                child: TextField(
                  autofocus: true,
                keyboardType: TextInputType.text,
                  controller: Use,
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
       SizedBox(
        height: 10,
      ),
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
                     // errorText: pa ? "please enter valid Password" : null
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
                    child:Align( alignment: Alignment.bottomRight,
                                    child: Text("Forgot Your Password ?",style:
                                     TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color.fromARGB(255, 207, 206, 206)),),
                                  ), 
                  ),
                ),
                SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                 Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    child:Align( alignment: Alignment.bottomRight,
                                    child: Text("Sign in",style:
                                     TextStyle(fontSize: 30,fontWeight: FontWeight.w600,color: Colors.black),),
                                  ), 
                  ),
               ),
                 GestureDetector(
                  onTap: () {
                    Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>MyAccount()));
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
            SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text('Dont have an account ?',
                              style: TextStyle(color: Colors.black, fontSize: 15)),
                          TextButton(
                              onPressed: () {
                              // Navigator.push(
                              //   context,
                                //  MaterialPageRoute(builder: (context) => MySingUp()),
                              // );
                              },
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xffca58b0),
                                  decoration: TextDecoration.underline,
                                ),
                              ))
                        ]),
                
              ],
            ),
            
            
          )),
        ),
      ),
    );
  }
}
