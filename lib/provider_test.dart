import 'package:flutter/material.dart';

class ProviderPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back
          )
        ),
        centerTitle: true,
        title: Text('Provider Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('0', style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500
          ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.remove)
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.add)
              ),
            ],
          ),
        ],
      ),
    );
  }
}