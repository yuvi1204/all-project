import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_truffer_1/Log_IN/log_in.dart';
import 'package:flutter_truffer_1/Myprofile/profile.dart';
import 'package:flutter_truffer_1/NewOder/newoder.dart';

class MyEditProfile extends StatefulWidget {
  const MyEditProfile({Key? key}) : super(key: key);

  @override
  State<MyEditProfile> createState() => _MyEditProfileState();
}

class _MyEditProfileState extends State<MyEditProfile> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor:Color(0xfff0f4f7), 
            elevation: 0,
              leading: IconButton(
          icon: new Icon(
            Icons.arrow_back,color: Colors.black,
          ),
          onPressed: () {
                  Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyProfile() ));
          },
         // tooltip: "Back",
        ),
        title: Text("Edit Profile ",style: TextStyle(color: Colors.black,),),


          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                     SizedBox(height: 50,),
                  Stack(

        children: [
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Container(
            
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black12,
                    width: 1,
                  )),
              child: Image.asset(
                "assets/images/ic_profile.png",
                width: 100,
                height: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Container(
              height: 115,
              width: 100,
              padding: EdgeInsets.only(top: 20,left: 7),
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Image.asset("assets/images/ic_edit_profile.png"),
                onPressed: () {},
              ),
            ),
          )
        ],
      ),
      SizedBox(height: 30,),

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
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.person_outline),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  
                  autofocus: true,
                  //  enabled: false,
                  inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                ],
                  keyboardType: TextInputType.text,
                //  controller: firstname,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                     
                      hintText: 'First Name',
                      filled: true,
                     // errorText: fina ? "please enter first name" : null
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
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.mail_outline),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
              //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Expanded(
                child: TextField(
                  
                  autofocus: true,
                  //  enabled: false,
                 // controller: email,
                  decoration: InputDecoration(
                     fillColor: Color(0xfff2f3f7)
                     ,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(1)),
                    
                      hintText: 'Email Address',
                      filled: true,
                   //   errorText: em ? "please enter mail id" : null
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
              // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Icon(Icons.call),
              SizedBox(
                width: 5,
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Colors.black,
                  thickness: 2,
                  width: 1,
                ),
              ),
            Container(
                height: 50,
                  width:80,
                child: CountryCodePicker(
                  onChanged: print,
                backgroundColor:Color(0xffd2d5da) ,
                  initialSelection: 'IN',
                  favorite: ['+91', 'IN'],
                  
                  showCountryOnly: true,
                
                  showOnlyCountryWhenClosed: false,
                  
                  alignLeft: false,
                  flagWidth: 0,
                ),
              ),
              
                  
                  Expanded(
                    child: TextFormField(
               
                        keyboardType: TextInputType.number,
                      autofocus: true,
                      //  enabled: false,
                     // controller: email,
                      decoration: InputDecoration(
                         fillColor: Color(0xfff2f3f7),
                         
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(1)),
                        
                          hintText: 'Phone No.',
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
                                        // Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                                      //  Icon(Icons.person_outline),
                                        SizedBox(
                                          width: 5,
                                        ),
                                       
                                        //   Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                                        Expanded(
                                          child: TextField(
                                            
                                            autofocus: true,
                                            //  enabled: false,
                                            inputFormatters: [
                                            FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]'))
                                          ],
                                            keyboardType: TextInputType.text,
                                          //  controller: firstname,
                                            decoration: InputDecoration(
                                              fillColor: Color(0xfff2f3f7)
                                              ,
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide.none,
                                                    borderRadius: BorderRadius.circular(1)),
                                              
                                               hintText: 'Bike_No',
                                                filled: true,
                                              // errorText: fina ? "please enter first name" : null
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),

                        SizedBox(height: 20,),
                         Container(
                                      padding: EdgeInsets.symmetric(horizontal: 20),
                                      margin: EdgeInsets.only(top: 20),  
                                      height: 50, width: 360,
                                    
                                      child: ElevatedButton(
                                    
                                                  child: Text(
                                            'Save profile',
                                            style: TextStyle(
                                                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          style: ElevatedButton.styleFrom(
                                             shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(15),),
                                          
                                              primary: Color(0xffff4d02),
                                          ),
                                          onPressed: () {
                                            Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MyProfile()));
                                          })
                                  ),
      


                ],
              ),
            )
          )

    );

    
  }
}