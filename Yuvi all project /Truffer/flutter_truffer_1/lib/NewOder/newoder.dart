import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyOder extends StatefulWidget {
  const MyOder({Key? key}) : super(key: key);

  @override
  State<MyOder> createState() => _MyOderState();
}

class _MyOderState extends State<MyOder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
           backgroundColor:Color(0xfff0f4f7), 
            elevation: 0,
              leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color:  Color(0xffff4c02),
                  // size: 44, // Changing Drawer Icon Size
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                );
              },
            ),

        title: Text("New Orders ",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
           actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications, color: Colors.black),
          ),
           ]

        ),
         drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                
                child:   Column(
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                         SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                   
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                    height:100,
              ),

                          ),
                        ),
                        Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                         
                          children: [
                        //  SizedBox(height: 40,),
                            Container(
                            //  alignment: Alignment.topLeft,
                              child: Text("Yuvi solanki", style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            ),
                            Container(
                             
                              child: Text("yuvi166@gmail.com", style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ),
                            
                           
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                ),
                ListTile(
                  leading: Icon(Icons.person_outline),
                title: Text('My Profile')  
                ),
                ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Active Oder')   
              ),
              ListTile(
                leading: Icon(Icons.history_outlined),
                title: Text('Oder History')   
              ),
              ListTile(
                leading: Icon(Icons.paid_outlined),
                title: Text('My Earnings')   
              ),
                ListTile(
                leading: Icon(Icons.notifications_outlined),
                title: Text('Notification')   
              ),
               ListTile(
                leading: Icon(Icons.group_outlined),
                title: Text('About US')   
              ),
               ListTile(
                leading: Icon(Icons.article_outlined),
                title: Text('Terms & Conditions')   
              ),
               ListTile(
                leading: Icon(Icons.contact_support_outlined,),
                title: Text('Help & Support')   
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  child: ElevatedButton(           
                        child: Text('Log Out',style: TextStyle(
                                                    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                 ),
                         style: ElevatedButton.styleFrom(
                         shape: RoundedRectangleBorder(
                        
                         borderRadius: BorderRadius.circular(10),),
                         primary: Color(0xffff4d02), ),
                       onPressed: () {})
                ),
              )
            ],

          ),
          
          
         ),
         body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 230,
                  
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Card(
                       
                      
                         shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(1), ),
                         
                         child: Container(
                          padding:EdgeInsets.symmetric(horizontal: 10),

                           child: Column(
                             
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                               
                                    child: Text("Oder # 8474",style: TextStyle(fontSize: 15,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                                  ),
                                  Container(
                                    height: 30,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffff4d02),
                                              style: BorderStyle.solid,
                                              
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                           
                          child: 
                          Row(
                          
                            children: [
                            
                              Icon(Icons.call,color: Color(0xffff4d02),),
                              Text('Call Restaurant',style: TextStyle(
                                                          fontSize: 12, fontWeight: FontWeight.bold, color: Color(0xffff4d02),),
                                       ),
                            ],
                          ),
                                   
                          
                                 )
                                  

                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Container(
                                    
                                    child:Text("Customer Name - Yuvrajsinh Solamki",style: TextStyle(color: Colors.grey),)
                                  ),
                                
                                  
                                
                              ],),
                                SizedBox(height: 10,),
                              Row(
                                children: [
                                   Container(

                                    
                                    child:Text("Customer Address - Maa House,\nNr.Goverment Hospital , opp.Akhada,\nAnjani Society, Bhavnagar-364001,\nGujarat, India ",style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,)
                                  )

                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                       
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 209),
                                    child: Text("Prepaid",style: TextStyle(fontSize: 18,color:Color(0xff14b911),fontWeight: FontWeight.bold ),),
                                  )


                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                
                                children: [
                                   Container(
                                    height: 30,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xff14b911),
                                              style: BorderStyle.solid,
                                              
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                           
                          child: 
                          Row(
                              
                            children: [
                            
                            
                              Text('Accept Order',style: TextStyle(
                                                          fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff14b911),),
                                       ),
                            ],
                          ),
                                 ),
                                 SizedBox(width: 35,),
                             
                                  Container(
                                    height: 30,
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color(0xffff4d02),
                                              style: BorderStyle.solid,
                                              
                                          ),
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                           
                          child: 
                          Row(
                          
                            children: [
                            
                            
                              Text('Decline Order',style: TextStyle(
                                                          fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffff4d02),),
                                       ),
                            ],
                          ),
                                 ),
                               

                                ],
                              )

                            ],
                           ),
                          
                         ),
                      

                    ),
                  ),
                )
              ],
            ),
          )
          ),

    );
    
  }
}