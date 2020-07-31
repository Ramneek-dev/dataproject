
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:horizontal_blocked_scroll_physics/horizontal_blocked_scroll_physics.dart';
class HorizontalScroll extends StatefulWidget {
  @override
  _HorizontalScrollState createState() => _HorizontalScrollState();
}

class _HorizontalScrollState extends State<HorizontalScroll> {
  final myList = new List<int>.generate(15, (i) => i + 1);

  TextEditingController contactpersoncontroller;
  TextEditingController approvedbyperson;
  int index2;

//  ScrollController _scrollController;
  void initState(){
    super.initState();
//    _scrollController = ScrollController()
//      ..addListener(() {
//        print("offset = ${_scrollController.offset}");
//      });
    contactpersoncontroller = new TextEditingController();
    approvedbyperson = new TextEditingController();

  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Horizontal Scroll"),
      ),

      body:  Container(
        color: Color(0xFFe0e0e0),
        child: new ListView(

          //physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: <Widget>[
            Container(
              width:screenSize.width,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),

                scrollDirection:Axis.vertical,
                children: <Widget>[ Container(
                  padding: EdgeInsets.fromLTRB(10, 20,10, 0),
                  // color: Colors.red,
                  width: screenSize.width,
            //  height: screenSize.height,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order Date', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('19 May 2020'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Party', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Vardhman Textiles Ltd'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('12'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Contact Person', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextField(
                                    textAlign: TextAlign.center,
                                    controller:contactpersoncontroller,
                                        keyboardType:TextInputType.text

                                  ),
//                                  child: TextFormField(
//
//                                      keyboardType: TextInputType.text,
//                                    controller:contactpersoncontroller
//
//
//
//                                  ),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Approval By', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextFormField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      controller:approvedbyperson



                                  ),
                                ),
                              ),

                            ],),
                      ],),
                      // ListView()
                      SizedBox(height: 25,),
                       Container(
                         width: 400,
                        child: new ListView(
                          physics:ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: <Widget>[

                        Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[

                            Container(
                              height: 40,
                              width: 280,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                border: Border.all(
                                  color: Colors.blue,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Center(
                                child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                  fontSize: 20

                                ),),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                             // crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('26146'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('10'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Pc.'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('1'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Pc.'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('10'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Text1'),
                                  ),
                                ),

                              ],),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment:CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(

                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                  ),
                                ),
                                Container(
                                  height: 32,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.blue,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Center(
                                    child: Text('25 May 2020'),
                                  ),
                                ),

                              ],),

                            RaisedButton(


                              color: Colors.greenAccent,  onPressed: () {


                              Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                            },
                              child:  Text("APPROVE"),

                            )


                          ],
                        ),
                       ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),],
              ),
            ),
            Container(
              width:screenSize.width,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),

                scrollDirection:Axis.vertical,
                children: <Widget>[ Container(
                  padding: EdgeInsets.fromLTRB(10, 20,10, 0),
                  // color: Colors.red,
                  width: screenSize.width,
                  //  height: screenSize.height,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order Date', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('19 May 2020'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Party', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Vardhman Textiles Ltd'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('13'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Contact Person', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextField(
                                      textAlign: TextAlign.center,
                                      controller:contactpersoncontroller,
                                      keyboardType:TextInputType.text

                                  ),
//                                  child: TextFormField(
//
//                                      keyboardType: TextInputType.text,
//                                    controller:contactpersoncontroller
//
//
//
//                                  ),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Approval By', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextFormField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      controller:approvedbyperson



                                  ),
                                ),
                              ),

                            ],),
                        ],),
                      // ListView()
                      SizedBox(height: 25,),
                      Container(
                        width: 400,
                        child: new ListView(
                          physics:ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: <Widget>[

                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),],
              ),
            ),
            Container(
              width:screenSize.width,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),

                scrollDirection:Axis.vertical,
                children: <Widget>[ Container(
                  padding: EdgeInsets.fromLTRB(10, 20,10, 0),
                  // color: Colors.red,
                  width: screenSize.width,
                  //  height: screenSize.height,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order Date', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('19 May 2020'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Party', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Vardhman Textiles Ltd'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('14'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Contact Person', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextField(
                                      textAlign: TextAlign.center,
                                      controller:contactpersoncontroller,
                                      keyboardType:TextInputType.text

                                  ),
//                                  child: TextFormField(
//
//                                      keyboardType: TextInputType.text,
//                                    controller:contactpersoncontroller
//
//
//
//                                  ),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Approval By', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextFormField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      controller:approvedbyperson



                                  ),
                                ),
                              ),

                            ],),
                        ],),
                      // ListView()
                      SizedBox(height: 25,),
                      Container(
                        width: 400,
                        child: new ListView(
                          physics:ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: <Widget>[

                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),],
              ),
            ),
            Container(
              width:screenSize.width,
              child: ListView(
                physics: AlwaysScrollableScrollPhysics(),

                scrollDirection:Axis.vertical,
                children: <Widget>[ Container(
                  padding: EdgeInsets.fromLTRB(10, 20,10, 0),
                  // color: Colors.red,
                  width: screenSize.width,
                  //  height: screenSize.height,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order Date', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('19 May 2020'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Party', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Vardhman Textiles Ltd'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('15'),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Contact Person', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextField(
                                      textAlign: TextAlign.center,
                                      controller:contactpersoncontroller,
                                      keyboardType:TextInputType.text

                                  ),
//                                  child: TextFormField(
//
//                                      keyboardType: TextInputType.text,
//                                    controller:contactpersoncontroller
//
//
//
//                                  ),
                                ),
                              ),

                            ],),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(

                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: Text('Approval By', style: TextStyle(backgroundColor: Colors.white),),
                                ),
                              ),
                              Container(
                                height: 32,
                                width: 160,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.blue,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Center(
                                  child: TextFormField(
                                      textAlign: TextAlign.center,
                                      keyboardType: TextInputType.text,
                                      controller:approvedbyperson



                                  ),
                                ),
                              ),

                            ],),
                        ],),
                      // ListView()
                      SizedBox(height: 25,),
                      Container(
                        width: 400,
                        child: new ListView(
                          physics:ScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          children: <Widget>[

                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),
                            Container(

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[

                                  Container(
                                    height: 40,
                                    width: 280,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      border: Border.all(
                                        color: Colors.blue,
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Center(
                                      child: Text('Item Details' + "1/2", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                                          fontSize: 20

                                      ),),
                                    ),
                                  ),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Catalog Item ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('26146'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('QTY.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Net Rate', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Uom', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Pc.'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Amount ', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('10'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Party Order No.', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Text1'),
                                        ),
                                      ),

                                    ],),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Container(

                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('Delivery Date', style: TextStyle(backgroundColor: Colors.white),),
                                        ),
                                      ),
                                      Container(
                                        height: 32,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            color: Colors.blue,
                                          ),
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                        child: Center(
                                          child: Text('25 May 2020'),
                                        ),
                                      ),

                                    ],),

                                  RaisedButton(


                                    color: Colors.greenAccent,  onPressed: () {


                                    Fluttertoast.showToast(msg: "Approved Item " + approvedbyperson.text + "  " + contactpersoncontroller.text) ;
                                  },
                                    child:  Text("APPROVE"),

                                  )


                                ],
                              ),
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),],
              ),
            ),
          ],
        ),
      )
    );
  }
}



