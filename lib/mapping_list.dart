import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MappingList extends StatelessWidget {
  final List<Map<String, dynamic>> myList = [
    {
      "Nama": "Pablo Amore",
      "Age": 23,
      "favColor": [
        "Black",
        "Yellow",
        "Blue",
        "Green",
        "Red",
        "Brown",
        "Red",
        "Green",
        "Black",
        "Yellow"
      ]
    },
    {
      "Nama": "Amore Pablo",
      "Age": 45,
      "favColor": [
        "Brown",
        "Red",
        "Green",
        "Black",
        "Yellow",
        "Brown",
        "Red",
        "Green",
        "Black",
        "Yellow"
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text('Mapping List'),
      ),
      body: ListView(
        children: myList.map((data) {
          List myColor = data['favColor'];
          return Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ]),
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${data['Nama']}',
                            style: GoogleFonts.montserrat(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${data['Age']} Tahun',
                            style: GoogleFonts.montserrat(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myColor.map((color) {
                          return Container(
                              margin: EdgeInsets.only(right: 12),
                              width: 50,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.black26)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(color),
                                ],
                              ));
                        }).toList(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
