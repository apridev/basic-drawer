import 'package:basic_drawer/Latihan/mediaQuery_product.dart';
import 'package:basic_drawer/alert_dialog.dart';
import 'package:basic_drawer/dismissible.dart';
import 'package:basic_drawer/grid_view.dart';
import 'package:basic_drawer/mapping_list.dart';
import 'package:basic_drawer/mediaQuery.dart';
import 'package:basic_drawer/tabBar_widget.dart';
import 'package:basic_drawer/test_stateful.dart';
import 'package:basic_drawer/textFormField.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp
  // ]);
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
        title: const Text('Basic Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 20, horizontal: 20
              ),
              margin: EdgeInsets.only(
                bottom: 30
              ),
              height: 100,
              color: Colors.blue,
              alignment: Alignment.bottomLeft,
              child: Text('Menu Pilihan', style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),),
            ),
            ListTile(
              leading: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyHomePage()));
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MappingList()));
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
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TabBarWidget()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.black54,
                ),
                title: Text(
                  'TabBar Widget',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TextFormFieldPage()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.text_fields_outlined,
                  color: Colors.black54,
                ),
                title: Text(
                  'Text Form Field',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GridViewPage()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.grid_view_sharp,
                  color: Colors.black54,
                ),
                title: Text(
                  'Grid View',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlertDialogPage()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.add_alert_sharp,
                  color: Colors.black54,
                ),
                title: Text(
                  'Grid View',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DismissiblePage()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.swap_horiz_rounded,
                  color: Colors.black54,
                ),
                title: Text(
                  'Dismissible',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MediaQueryPage()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.restore_page_rounded,
                  color: Colors.black54,
                ),
                title: Text(
                  'MediaQuery',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MediaQueryProduct()));
              },
              child: ListTile(
                leading: const Icon(
                  Icons.replay_outlined,
                  color: Colors.black54,
                ),
                title: Text(
                  'MediaQuery Product',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ),
            ),
          ],
        )
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
