import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HsailStateful extends StatefulWidget {

  @override
  State<HsailStateful> createState() => _HsailStatefulState();
}

class _HsailStatefulState extends State<HsailStateful> {
  int current = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  children: [
                    newListTile(
                      imageUrl: "https://picsum.photos/id/50/200/300",
                      title: faker.person.name(),
                      subtitle: faker.lorem.sentence(),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){
                              if(current != 1){
                                setState(() {
                                  current--;
                                });
                              }
                            },
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.remove, color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(current.toString()),
                          SizedBox(
                            width: 15,
                          ),
                          InkWell(
                            onTap: (){
                              setState(() {
                              current++;
                              });
                            },
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.blue
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add, color: Colors.white,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class newListTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  newListTile(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 10, left: 20, right: 20),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title, style: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400
      ),
      overflow: TextOverflow.ellipsis,),
      subtitle: Text(
        subtitle,
        style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Colors.black45,
        ),
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text('12:00 AM'),
    );
  }
}
