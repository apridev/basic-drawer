import 'package:basic_drawer/mapping_list.dart';
import 'package:basic_drawer/test_stateful.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();
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
              color: Colors.blue,
              child: Text(
                'Menu Pilihan',
                style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              alignment: Alignment.bottomLeft,
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: InkWell(
                onTap: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => MyHomePage()
                    )
                  );
                },
                child: Icon(
                  Icons.home,
                  color: Colors.black54,
                ),
              ),
              title: Text(
                'Home',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TestStateful()),
                );
              },
              child: ListTile(
                leading: const Icon(
                  Icons.pentagon,
                  color: Colors.black54,
                ),
                title: Text(
                  'Penggunaan Stateful',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => MappingList()
                  )
                );
              },
              child: ListTile(
                leading: const Icon(
                  Icons.rocket_launch_rounded,
                  color: Colors.black54,
                ),
                title: Text(
                  'Mapping List',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.black54,
              ),
              title: Text(
                'Setting Profile',
                style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ChatItem(
            imageUrl: "https://picsum.photos/id/$index/200/300",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          );
        },
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatItem(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style:
            GoogleFonts.montserrat(fontSize: 14, fontWeight: FontWeight.w400),
      ),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text(
        '12:00 PM',
        style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Color(0xff413F42)),
      ),
    );
  }
}
