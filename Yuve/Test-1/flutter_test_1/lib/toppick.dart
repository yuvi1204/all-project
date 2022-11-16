import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyTopPick extends StatefulWidget {
  const MyTopPick({Key? key}) : super(key: key);

  @override
  State<MyTopPick> createState() => _MyTopPickState();
}

class _MyTopPickState extends State<MyTopPick> {
   TextEditingController searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        elevation: 2.0,
       leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
       
          color: Colors.black,
        ),
        title: Text("Top Picks",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
        backgroundColor: Colors.white,
        actions:<Widget> [
          IconButton(onPressed:(){}, 
          icon: Icon(Icons.home,color: Colors.red,))

          
        ],
      ),

      body: SafeArea(
        child: Container(
         
          child: SingleChildScrollView(
           /* child: Container(
                child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search Contacts',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),*/
            
           child: Column(
              children: [
                Pizza_card(),
                Pizza_card(),
                Pizza_card(),
                 Pizza_card(),
              ],
              

            ),


          ),

        )
      
      ),
    );
    
  }
}

class Pizza_card extends StatelessWidget {
  const Pizza_card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
      
        GestureDetector(
          onTap: () {},

      child:  Container(
           
          margin: EdgeInsets.fromLTRB(10.0, 5, 20.0, 5),
          height:150,
          width: double.infinity,
          decoration: BoxDecoration(
            
            color: Color.fromARGB(97, 232, 225, 225),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(width: 3,color: Color.fromARGB(96, 225, 219, 219),)
       
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(160, 10, 10, 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                                child: Text("Cheese Pizza",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                                 overflow: TextOverflow.ellipsis,
                                 maxLines: 1,),

                    ),
                  //  Icon(FontAwesomeIcons.heart,color:Colors.white,)
                  ],
                ),
                SizedBox(height: 10,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 186, 211, 232),
                        
                      ),
                      alignment: Alignment.center,
                               child: Text("Customize",style: TextStyle(color: Color.fromARGB(255, 12, 133, 232),fontSize: 18,fontWeight: FontWeight.bold,backgroundColor: Color.fromARGB(255, 195, 210, 235)),),

                    ),
                   
                    Icon(FontAwesomeIcons.heart,color:Colors.black,)
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 20.0,
                      child: Text('\$5.75',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13,),),
                      
                    ),
                    SizedBox(width: 10,),
                     Container(
                      height: 20.0,
                      child: Text('\$6.65',style: TextStyle(color: Color.fromARGB(255, 162, 160, 160),fontWeight: FontWeight.normal,fontSize: 13,decoration: TextDecoration.lineThrough),),
                      
                    ),
                     SizedBox(width: 10,),
                     Container(
                      width: 60,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xffff4c02),
                        
                      ),
                      alignment: Alignment.center,
                               child: Text("Add",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,backgroundColor:  Color(0xffff4c02) ,),),

                    ),
                   
                   
                  ],
                )

              ],
            ),
          ),

        )
       ),
       Positioned(
        top: 8,
        left: 13,
        bottom: 8,
      
        child:ClipRRect(
           borderRadius: BorderRadius.circular(10),
                    child:Image(
                      width: 150,
                      image: AssetImage("assets/images/p4.jpg"),
                      fit: BoxFit.cover,
                    )
       )
       )
      ],
    );
  }
}