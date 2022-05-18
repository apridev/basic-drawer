import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class DismissiblePage extends StatelessWidget {

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)
        ),
        centerTitle: true,
        title: Text('Dismissible'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index){
          return Dismissible(
            // !boleh digunakam
            // direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              print('Berhasil');
              if(direction == DismissDirection.endToStart){
                print('Data Berhasil dihapus');
              } else {
                print('Data tidak dihapus');
              }
            },
            confirmDismiss: (direction){
              return showDialog(
                context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text('Konfirmasi'),
                    content: Text('Apakah kamu ingin menghapus data ini?'),
                    actions: [
                      TextButton(
                      onPressed: (){
                        Navigator.of(context).pop(false);
                      }, 
                      child: Text('No'),
                      ),
                      TextButton(
                      onPressed: (){
                        Navigator.of(context).pop(true);
                      }, 
                      child: Text('Yes'),
                      ),
                    ],
                  );
                });
            },
            key: Key(index.toString()),
            background: Container(
              padding: EdgeInsets.only(right: 50),
              color: Colors.redAccent,
              child: Icon(Icons.delete, color: Colors.white,),
              alignment: Alignment.centerRight,
            ),
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text('${index + 1}'),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
          );
        },
      ),
    );
  }
}