import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyMainCategory extends StatefulWidget {
  const MyMainCategory({Key? key}) : super(key: key);

  @override
  State<MyMainCategory> createState() => _MyMainCategoryState();
}

class _MyMainCategoryState extends State<MyMainCategory> {
  TextEditingController searchController = new TextEditingController();
  int page = 0;
  int selectedindex1 = 0;
   List <listcategory>images=[
    listcategory('assets/images/noodles.jpeg',"Noodles"),
    listcategory( 'assets/images/drink.jpg',"Drink"),
    listcategory('assets/images/sides.jpeg',"Sides"),
    listcategory('assets/images/donair.jpeg',"Donair"),
    listcategory('assets/images/pizza.jpeg',"Pizza"),
   listcategory('assets/images/burger.jpg',"Burger"),
    
   ];
  /*final List<String> _listItem = [
    'assets/images/noodles.jpeg',
    
    'assets/images/drink.jpg',
    
    'assets/images/sides.jpeg',
    
    'assets/images/donair.jpeg',
    'assets/images/pizza.jpeg',
    'assets/images/burger.jpg',
  ];*/

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
        title: Text(
          "Category",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: Colors.red,
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
              child: new TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search item',
                  contentPadding: EdgeInsets.fromLTRB(10.0, 10.0, 15.0, 15.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32.0)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: images
                  .map((item) => Container(
                        height: 200,
                        width: 200,
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item.imagesUrl),
                                      fit: BoxFit.cover)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top : 130.0,),
                              child: Container(
                                height: 40,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                   
                                       bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0)
                                    ),
                                    color: Colors.black54),
                                alignment: Alignment.center,
                                child: Text(
                                  "${item.title}",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                  .toList(),
          ),
              )),
          // SizedBox(
          //   height: 10,
          // ),
        ],
      )),
    );
  }
}
class listcategory 
 {
  String imagesUrl;
  String title;
 


listcategory (this.imagesUrl, this.title,);
  
 }   