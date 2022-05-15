import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabBarWidget extends StatelessWidget {
  List<Tab> myTab = [
    const Tab(
      text: "Tab 1",
    ),
   const Tab(
      text: "Tab 2",
    ),
   const Tab(
      text: "Tab 3",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTab.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),
          centerTitle: true,
          title: const Text('Tab Bar Widget'),
          bottom: TabBar(
            labelStyle: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
            unselectedLabelStyle: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w400
            ),
            unselectedLabelColor: Colors.white,
            labelColor: Colors.amber,
            indicatorColor: Colors.amber,
            indicatorWeight: 3,
            // indicator: BoxDecoration(
            //    color: Colors.white,
            // ),
            tabs: myTab
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('Text 1'),
            ),
            Center(
              child: Text('Text 2'),
            ),
            Center(
              child: Text('Text 3'),
            ),
          ]
        ),
      ),
    );
  }
}
