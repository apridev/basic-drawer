import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Basic Drawer'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.blueAccent,
              child: Text('Menu Pilihan', style: GoogleFonts.montserrat(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
              alignment: Alignment.bottomLeft,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.home, 
                color: Colors.black54,
              ),
              title: Text('Home', style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),),
            ),
            ListTile(
              leading: const Icon(
                Icons.shopping_bag, 
                color: Colors.black54,
              ),
              title: Text('Shopping Bag', style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),),
            ),
            ListTile(
              leading: const Icon(
                Icons.rocket_launch_rounded, 
                color: Colors.black54,
              ),
              title: Text('Checkout', style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings, 
                color: Colors.black54,
              ),
              title: Text('Setting Profile', style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ),),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Some Text Here!', style: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Colors.blue
        ),),
      ),
    );
  }
}