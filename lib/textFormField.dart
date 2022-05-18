import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back
          )),
        centerTitle: true,
        title: Text('Text Form Field'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Text(
              'Nama:'
            )
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                textAlign: TextAlign.start,
                textAlignVertical: TextAlignVertical.center,
                cursorColor: Colors.black12,
                style: const TextStyle(
                  color: Colors.black
                ),
                // obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.blue
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: BorderSide(
                        color: Colors.black26
                      )
                    ),
                    // prefixIcon: Icon(Icons.person),
                    hintText: "Input your name",
                    hintStyle: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black26
                    ),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
