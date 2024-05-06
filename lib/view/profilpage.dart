import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profilPage extends StatelessWidget {
  const profilPage({Key? key});

  @override
  Widget build(BuildContext context) {
    final mediaqueryheight = MediaQuery.of(context).size.height;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double quarterScreenHeight = screenHeight * 0.20;

    final myappbar = AppBar(
      backgroundColor: Colors.blue.shade300,
    );
    final bodyheight = mediaqueryheight -
        myappbar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
        appBar: myappbar,
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://th.bing.com/th/id/OIP.Q0Oyy5VkEVBxJgGpxtRIaAHaEK?rs=1&pid=ImgDetMain'),
                    radius: 60,
                  ),
                  SizedBox(height: 15),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(
                            255,
                            217,
                            217,
                            217,
                          ),
                          borderRadius: BorderRadius.circular(25)),
                      width: 193,
                      height: 31,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(BootstrapIcons.qr_code_scan,
                              size: 16, color: Color.fromARGB(255, 63, 80, 80)),
                          Text(
                            'Tampilan QR',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 63, 80, 80)),
                          ),
                          Icon(FontAwesomeIcons.chevronRight,
                              size: 16, color: Color.fromARGB(255, 63, 80, 80))
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
                    child: Card(
                      color: Color.fromARGB(
                            50,
                            217,
                            217,
                            217,
                          ),
                      shadowColor: Colors.grey.shade600,
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
                        child: Column(
                          children: [
                            Container(
                              width: bodyheight,
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 8, left: 8, top: 8, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Siswa',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(128, 0, 63, 80)),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Nama Siswa',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      ),
                                      Text(
                                        'Mr.Beans Banget',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Jenis Kelamin',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      ),
                                      Text(
                                        'Laki - laki',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Kelas',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      ),
                                      Text(
                                        'XII - RPL 15',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: bodyheight,
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 8, left: 8, top: 20, bottom: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Orang Tua',
                                        style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(128, 0, 63, 80)),
                                        textAlign: TextAlign.left),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(right: 8, left: 8),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Nama Orang Tua',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      ),
                                      Text(
                                        'Deni Darso',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'No. Telp',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      ),
                                      Text(
                                        '081236123518',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color:
                                                Color.fromARGB(255, 0, 63, 80)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(200, 247, 96, 96),
                            borderRadius: BorderRadius.circular(10)),
                        width: 282,
                        height: 48,
                        child: Center(child: Text('Logout', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
