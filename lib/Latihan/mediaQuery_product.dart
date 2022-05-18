import 'package:flutter/material.dart';

class MediaQueryProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              width: size.width,
              // ? mengukur gambar
              height: size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://picsum.photos/250?image=9'), fit: BoxFit.cover
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 30
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget> [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black38
                        ),
                        child: Icon(Icons.arrow_back, color: Colors.white,)
                      ),
                      Row(
                        children: [
                          Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.black38
                        ),
                        child: Icon(Icons.shopping_bag_rounded, color: Colors.white,)
                      ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              // todo menurunkan konten
              margin: EdgeInsets.only(
                top: size.height * 0.45
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Menghapus Garis pada Content
                    Align(
                      child: Container(
                        width: 100,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // !Isi Widget Disini
                    
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