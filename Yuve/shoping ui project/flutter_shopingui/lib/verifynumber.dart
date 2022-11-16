import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_shopingui/phoneverify.dart';

class MyVerifyNo extends StatefulWidget {
  const MyVerifyNo({Key? key}) : super(key: key);

  @override
  State<MyVerifyNo> createState() => _MyVerifyNoState();
}

class _MyVerifyNoState extends State<MyVerifyNo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
      SizedBox(
        height: 80,
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.topCenter,
        child: Text(
          "Verify your phone number",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Text(
        "We have sent you an SMS with a code to",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      ),
      Text(
        "number + 91 9173279787",
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
      ),
      SizedBox(
        height: 20,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white60,
            border: Border.all(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
          ),
          child: Row(
            children: [
              Container(
                child: CountryCodePicker(
                  onChanged: print,
                  // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                  initialSelection: 'IN',
                  favorite: ['+91', 'IN'],
                  // optional. Shows only country name and flag
                  showCountryOnly: false,
                  // optional. Shows only country name and flag when popup is closed.
                  showOnlyCountryWhenClosed: false,
                  // optional. aligns the flag and the Text left
                  alignLeft: false,
                ),
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    
                      
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0)),
                        borderSide: BorderSide(color: Colors.transparent)),
                    hintText: 'Phone number',
                    filled: true,
                  ),
                ),
              ),
              SizedBox(height: 20,),
               
            ],
          ),
          
        ),
      ),
       Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 20),
              height: 60,
              width: 360,
              child: ElevatedButton(
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                onPressed: () {
                  Navigator.push(context,
                                            MaterialPageRoute(builder: (context) => MyPhoneVerify()));
                }
              )
               )
    ]))));
  }
}
