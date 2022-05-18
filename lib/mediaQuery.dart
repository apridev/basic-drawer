import 'package:basic_drawer/main.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {

  final Faker faker = Faker();

  @override
  Widget build(BuildContext context) {

    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final MyAppBar = AppBar(
        leading: GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back)
        ),
        centerTitle: true,
        title: const Text('MediaQuery Page'),
      );

    final bodyHeight = 
    MediaQueryHeight - MyAppBar.preferredSize.height - MediaQuery.of(context).padding.top;

    bool isLandScape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar,
      body: Center(
        child: (isLandScape) ? Column(
          children: [
            Container(
              width: MediaQueryWidth,
              height: bodyHeight * 0.6,
              color: Colors.amber,
            ),
            Container(
              height: bodyHeight * 0.4,
              color: Colors.lightBlueAccent,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(),
                    title: Text(faker.person.name()),
                    subtitle: Text(faker.lorem.sentence()),
                  );
                },
              ),
            ),
          ],
        ) : 
        Column(
          children: [
            Container(
              width: MediaQueryWidth,
              height: bodyHeight * 0.3,
              color: Colors.amber,
              // child: Image.network(
              //   'https://picsum.photos/250?image=9', 
              //   width: MediaQueryWidth,
              //   height: MediaQueryHeight,
              //   fit: BoxFit.fill,
              // ),
            ),
            Container(
              height: bodyHeight * 0.7,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                  return ListTile(
                    leading: CircleAvatar(),
                    title: Text(faker.person.name()),
                    subtitle: Text(faker.lorem.sentence()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}