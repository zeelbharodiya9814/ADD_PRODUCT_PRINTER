import 'package:add_product/tab_screen/basic_detail.dart';
import 'package:add_product/tab_screen/optional_detail.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
         resizeToAvoidBottomInset: false,
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Add Product",
            style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                letterSpacing: 1,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.yellow,
          actions: [
            TextButton(
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 2,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        focusColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Item Name",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.grey[200],
                      child: TabBar(
                        indicatorColor: Colors.purple,
                        tabs: [
                          Tab(
                            child: Text(
                              "Basic Details",
                              style: TextStyle(color: Colors.grey[600], fontSize: 20),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Optional Details",
                              style: TextStyle(color: Colors.grey[600], fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
            ),
            Expanded(
              flex: 11,
                child: Container(
                  // height: MediaQuery.of(context).size.height,
                  child: TabBarView(
                    children: [
                      Center(
                        child: BasicDetails(),
                      ),
                      Center(
                        child: Optional_Details(),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
