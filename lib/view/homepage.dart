import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final mediaqueryheight = MediaQuery.of(context).size.height; 
    final myappbar = AppBar(
        backgroundColor: Colors.blue.shade300,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.repeat)),
            IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.bell))
          ],
        ));
    final bodyheight = mediaqueryheight -
        myappbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: myappbar,
      body: SingleChildScrollView(
        child: Container(
           decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/assets/images/bghome.png'))),
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'HALLO!!',
                                style: TextStyle(
                                    fontSize: 32.0,
                                    color: Color.fromARGB(255, 0, 63, 80)),
                              ),
                              Text(
                                'Orang tua / Wali...',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 0, 63, 80)),
                              ),
                              Text(
                                'Mr.Bean Banget deh',
                                style:
                                    TextStyle(fontSize: 23.0, color: Colors.white),
                              ),
                              Text(
                                'XII - RPL 2',
                                style:
                                    TextStyle(fontSize: 12.0, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://th.bing.com/th/id/OIP.Q0Oyy5VkEVBxJgGpxtRIaAHaEK?rs=1&pid=ImgDetMain'),
                        radius: 35,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0, left: 30.0,),
                  child: Card(
                    color: Color.fromRGBO(249, 249, 249, 1),
                    shadowColor: Colors.grey.shade600,
                    elevation: 0,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
                      child: Container(
                        width: bodyheight,
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rabu, 17 April 2024',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 0, 63, 80)),
                                  textAlign: TextAlign.left),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Text(
                                        '13',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 0, 63, 80)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Hours',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 115,
                                    decoration: BoxDecoration(
                                        border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.black45))),
                                    child: Column(
                                      children: [
                                        Text(
                                          '28',
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(225, 0, 63, 80)),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'minute',
                                          style: TextStyle(
                                              color: Color.fromARGB(128, 0, 63, 80)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '30',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 0, 63, 80)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'seconds',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Divider(),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Hadir pada pukul',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Text(
                                        '07',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 247, 96, 96)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Hours',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 115,
                                    decoration: BoxDecoration(
                                        border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.black45))),
                                    child: Column(
                                      children: [
                                        Text(
                                          '11',
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Color.fromARGB(225, 247, 96, 96)),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'minute',
                                          style: TextStyle(
                                              color: Color.fromARGB(128, 0, 63, 80)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '27',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 247, 96, 96)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'seconds',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: Text('Siswa Hadir Terlambat',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(128, 247, 96, 96)))),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Pulang pada pukul',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Column(
                                    children: [
                                      Text(
                                        '12',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 0, 136, 0)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'Hours',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  Container(
                                    width: 115,
                                    decoration: BoxDecoration(
                                        border: Border.symmetric(
                                            vertical:
                                                BorderSide(color: Colors.black45))),
                                    child: Column(
                                      children: [
                                        Text(
                                          '15',
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(225, 0, 136, 0)),
                                        ),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Text(
                                          'minute',
                                          style: TextStyle(
                                              color: Color.fromARGB(128, 0, 63, 80)),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '00',
                                        style: TextStyle(
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(225, 0, 136, 0)),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        'seconds',
                                        style: TextStyle(
                                            color: Color.fromARGB(128, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}