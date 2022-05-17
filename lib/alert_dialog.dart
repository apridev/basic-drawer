import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertDialogPage extends StatefulWidget {
  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {
  String data = "Data masih kosong";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back)
          ),
        centerTitle: true,
        title: const Text('Alert Dialog'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, 
            builder: (context){
              print('telah diklik');
              return AlertDialog(
                title: Text('Notifikasi'),
                content: Text('Are you sure delete data?'),
                actions: [
                  TextButton(
                    onPressed: (){
                      setState(() {
                      data = "False";
                      });
                      Navigator.pop(context);
                    }, 
                    child: Text('No')
                  ),
                  TextButton(
                    onPressed: (){
                      setState(() {
                      data = "True";
                      });
                      Navigator.pop(context);
                    }, 
                    child: Text('Yes')
                  ),
                ],
              );
            }
          );
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(data, style: GoogleFonts.montserrat(
              fontSize: 16,
              fontWeight: FontWeight.w400
            ),)
          ],
        ),
      ),
    );
  }
}