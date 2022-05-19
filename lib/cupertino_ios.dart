import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CupertinoIOSPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: Text('Cupertino IOS Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue
              ),
              child: TextButton(
                onPressed: (){
                  showDialog(
                    context: context, 
                    builder: (context){
                      print('Sudah Diklik');
                      return Platform.isIOS ? CupertinoAlertDialog(
                        title: Text('Konfirmasi'),
                        content: Text('Apakah kamu ingin menghapus pesan ini?'),
                        actions: [
                          TextButton(
                            onPressed: (){
                              print('False');
                            }, 
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: (){
                              print('True');
                            }, 
                            child: Text('Yes')
                          ),
                        ],
                      ) : AlertDialog(
                        title: Text('Konfirmasi'),
                        content: Text('Apakah kamu ingin menghapus pesan ini?'),
                        actions: [
                          TextButton(
                            onPressed: (){
                              print('False');
                            }, 
                            child: Text('No'),
                          ),
                          TextButton(
                            onPressed: (){
                              print('True');
                            }, 
                            child: Text('Yes')
                          ),
                        ],
                      );
                    }
                  );
                }, 
                child: FittedBox(
                  child: Text('Buttom', style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                  ),),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}