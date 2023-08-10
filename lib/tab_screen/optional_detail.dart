import 'package:flutter/material.dart';

import '../class/allClass.dart';

class Optional_Details extends StatefulWidget {
  const Optional_Details({Key? key}) : super(key: key);

  @override
  State<Optional_Details> createState() => _Optional_DetailsState();
}

class _Optional_DetailsState extends State<Optional_Details> {


  bool isSwitched = false;

  String dropdownvalue1 = 'Exclusive GST';
  var items1 = [
    'Exclusive GST',
    'Inclusive GST',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "MRP",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Text(
                          "Purchase Price",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: DropdownButton(
                          value: dropdownvalue1,
                          icon: Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: const Icon(
                              Icons.arrow_drop_down_sharp,
                              size: 35,
                            ),
                          ),
                          items: items1.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Container(
                                  width: 130,
                                  child: Text(
                                    items,
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis),
                                  )),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue1 = newValue!;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 7.4,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:  EdgeInsets.only(left: getProportionateScreenHeight(10),right: getProportionateScreenHeight(10),top: getProportionateScreenHeight(10),bottom: getProportionateScreenHeight(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Secondary Unit (Optional)",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Padding(
                                      padding:  EdgeInsets.all(getProportionateScreenHeight(13)),
                                      child: Wrap(
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                "Add Secondary Unit",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 24),
                                              ),
                                              Spacer(),
                                              InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      Navigator.pop(context);
                                                    });
                                                  },
                                                  child: Icon(Icons.close)),
                                            ],
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(
                                                top: getProportionateScreenHeight(20), bottom: getProportionateScreenHeight(10)),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Primary Unit",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 22),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                             EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 2,
                                                        color: Colors.black),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 2,
                                                        color: Colors.black),
                                                  ),
                                                  hintText: "Enter Primary Unit"),
                                            ),
                                          ),
                                          Padding(
                                            padding:  EdgeInsets.only(
                                                top: getProportionateScreenHeight(20), bottom: getProportionateScreenHeight(10)),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Secondary Unit",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 22),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                             EdgeInsets.only(bottom: getProportionateScreenHeight(20)),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  focusedBorder: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 2,
                                                        color: Colors.black),
                                                  ),
                                                  border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        width: 2,
                                                        color: Colors.black),
                                                  ),
                                                  hintText: "Enter Secondary Unit"),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 1,
                                                child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      backgroundColor:
                                                      Colors.yellow,
                                                      foregroundColor: Colors.green,
                                                      shadowColor: Colors.grey,
                                                      elevation: 5),
                                                  child: Padding(
                                                    padding:
                                                     EdgeInsets.all(getProportionateScreenHeight(8)),
                                                    child: Text(
                                                      'Proceed',
                                                      style: TextStyle(
                                                          fontSize: 24.0,
                                                          fontWeight:
                                                          FontWeight.w600,
                                                          color: Colors.black,
                                                          letterSpacing: 1),
                                                    ),
                                                  ),
                                                  onPressed: () {},
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height / 15,
                                child: Padding(
                                  padding:
                                   EdgeInsets.only(left: getProportionateScreenHeight(10), right: getProportionateScreenHeight(10)),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Select Secondary Unit",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 20),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.keyboard_arrow_down_sharp,
                                        size: 35,
                                        color: Colors.grey[700],
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(8)),
                                  border: Border.all(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "Maintain Stock",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Switch(
                              value: isSwitched,
                              activeColor: Colors.purple[900],
                              onChanged: (value) {
                                print("VALUE : $value");
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              isSwitched ? Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 9,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "Opening Stock",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
                         : Container(),
              SizedBox(height: getProportionateScreenHeight(5),),
              isSwitched ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      color: Colors.white,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Opening Stock Date",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            Text(
                              "06-08-2023",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(5),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Column(
                          children: [
                            Text(
                              "Low Stock Alert At",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.all(10),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black),
                                  ),
                                  hintText: "Enter Quantity"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
                         : Container(),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 13,
                      color: Colors.grey[400],
                      alignment: Alignment.center,
                      child: Padding(
                        padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                        child: Row(
                          children: [
                            Text(
                              "Barcode",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(getProportionateScreenHeight(12)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Item Code Input",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: getProportionateScreenHeight(12),right: getProportionateScreenHeight(12),bottom: getProportionateScreenHeight(25)),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.black),
                                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(8)),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2,
                                      color: Colors.black),
                                  borderRadius: BorderRadius.circular(getProportionateScreenHeight(8)),
                                ),
                                suffixIcon: Icon(Icons.qr_code_scanner_sharp,color: Colors.black,size: 30,),
                              ),),
                          ),
                          SizedBox(width: getProportionateScreenWidth(5),),
                          Expanded(
                            flex: 4,
                            child: Container(
                              height: MediaQuery.of(context).size.height / 14.8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Generate",style: TextStyle(fontSize: 21,color: Colors.black),),
                                  Text("Barcode",style: TextStyle(fontSize: 21,color: Colors.black),),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.all(getProportionateScreenHeight(10)),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow,
                            foregroundColor: Colors.green,
                            shadowColor: Colors.grey,
                            elevation: 5
                        ),
                        child: Padding(
                          padding:  EdgeInsets.all(getProportionateScreenHeight(8)),
                          child: Text(
                            'Save',
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                letterSpacing: 1),
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
