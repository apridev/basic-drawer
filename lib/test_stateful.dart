import 'package:basic_drawer/hasil_stateful.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestStateful extends StatefulWidget {

  @override
  State<TestStateful> createState() => _TestStatefulState();
}

class _TestStatefulState extends State<TestStateful> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (() {
            Navigator.pop(context);
          }),
          child: Icon(Icons.arrow_back
        )
        ),
        centerTitle: true,
        title: Text('Test Stateful', style: GoogleFonts.montserrat(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(current.toString(), style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(
            height: 70,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 60,
              right: 60
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                  onPressed: (){
                    if(current != 1){
                      setState(() {
                    current--;
                      });
                    }
                  },
                  child: Icon(Icons.remove),
                ),
                RaisedButton(
                  onPressed: (){
                    setState(() {
                    current++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.blue
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> HsailStateful())
                    );
                  },
                  child: Text('Test Stateful', style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}