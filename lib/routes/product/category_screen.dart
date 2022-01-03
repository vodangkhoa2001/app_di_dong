// import 'dart:convert';

// ignore_for_file: unnecessary_new

// import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:page_transition/page_transition.dart';

import 'product_detail.dart';
//product
// import 'package:ban_laptop/model/product/product.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  //static const primaryColor = Color(0xFF4478DE);

  var starPoint = 5;
  TextEditingController search = new TextEditingController();
  int currentTab = 0;
  List<String> list = ['MacOs', 'Dell', 'Asus', 'Lenovo', 'HP', 'Acer', 'MSI'];
  List<String> lstProduct = [
    'MacOs',
    'Dell',
    'Asus',
    'Lenovo',
    'HP',
    'Acer',
    'MSI'
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: list.length,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            title: const Text('Danh mục'),
            backgroundColor: Colors.white,
            foregroundColor: Colors.blue,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                for (var i in list)
                  Tab(
                    text: i,
                  ),
              ],
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.blue[200],
            ),
          ),
          body: TabBarView(
            children: [
                
              for (var i in lstProduct)
              Column(
                children: [
                  //Text(i),
                  Expanded(
                      child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 5,
                          crossAxisSpacing: 5,
                          childAspectRatio: 0.67,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue)),
                                child: 
                                InkWell(
                                  onTap: () {
                                    Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: const Details()));              
                                  },
                                  child: Stack(
                                  children: [
                                    Positioned(
                                      child: Image.asset(
                                        'assets/images/products/macOs.jpg',
                                        fit: BoxFit.cover,
                                        height: 170,
                                      ),
                                      top: 10,
                                      left: 5,
                                      right: 5,
                                    ),
                                    Positioned(
                                      child: Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 15, 10),
                                        decoration: const BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(14),
                                                bottomRight:
                                                    Radius.circular(14))),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Ten san pham',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Text(
                                              '20.000.000 VND',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    for (var i = 1; i < 6; i++)
                                                      (i <= starPoint)
                                                          ? const Icon(
                                                              Icons
                                                                  .star_rounded,
                                                              size: 20,
                                                              color:
                                                                  Colors.white)
                                                          : const Icon(
                                                              Icons
                                                                  .star_border_rounded,
                                                              size: 20,
                                                              color:
                                                                  Colors.white),
                                                    
                                                  ],
                                                ),
                                                InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      starPoint -= 1;
                                                    });
                                                  },
                                                  child: const Icon(
                                                      Icons
                                                          .shopping_cart_rounded,
                                                      size: 20,
                                                      color: Colors.white),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                    )
                                  ],
                                ),
                                ),
                                )),
                            ],
                          );
                        }),
                  )),
                ],
              )
            ],
          )

          // Stack(
          //   children: [
          //     PageStorage(
          //       child: currentScreen,
          //       bucket: bucket,
          //     ),

          //   ],
          // )
          ),
      // bottomNavigationBar: BottomAppBar(
      //   child: SizedBox(
      //     height: 200,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Column(
      //           children: [
      //             //danh mục
      //             MaterialButton(
      //               minWidth: 30,
      //               onPressed: () {
      //                 setState(() {
      //                   currentScreen = const Product1();
      //                   currentTab = 0;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [Icon(Icons.menu,color: currentTab == 0 ? primaryColor : Colors.grey,),
      //                 Text('Danh mục',style: TextStyle(color: currentTab == 0 ? primaryColor : Colors.grey,),)],
      //               ),
      //             ),
      //             //khuyến mãi
      //             MaterialButton(
      //               minWidth: 30,
      //               onPressed: () {
      //                 setState(() {
      //                   currentScreen = const Product2();
      //                   currentTab = 1;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(Icons.local_offer,color: currentTab == 1 ? primaryColor : Colors.grey,),
      //                   Text('Khuyến mãi',style: TextStyle(color: currentTab == 1 ? primaryColor : Colors.grey,),)
      //                 ],
      //               ),
      //             ),
      //             //giỏ hàng
      //             MaterialButton(
      //               minWidth: 30,
      //               onPressed: () {
      //                 setState(() {
      //                   currentScreen = const Product3();
      //                   currentTab = 2;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(Icons.shopping_bag_outlined,color: currentTab == 2 ? primaryColor : Colors.grey,),
      //                   Text('Giỏ hàng',style:TextStyle(color: currentTab == 2 ? primaryColor : Colors.grey,))
      //                 ],
      //               ),
      //             ),
      //             MaterialButton(
      //               minWidth: 30,
      //               onPressed: () {
      //                 setState(() {
      //                   currentScreen = const Product4();
      //                   currentTab = 2;
      //                 });
      //               },
      //               child: Column(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Icon(Icons.shopping_bag_outlined,color: currentTab == 2 ? primaryColor : Colors.grey,),
      //                   Text('Giỏ hàng',style:TextStyle(color: currentTab == 2 ? primaryColor : Colors.grey,))
      //                 ],
      //               ),
      //             )
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}