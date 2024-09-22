import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ukl2/pages/searchpage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color.fromARGB(255, 241, 241, 241),
          appBar: AppBar(
            backgroundColor: Colors.white,
            shadowColor: Colors.black,
            elevation: 5,
            title: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                          child: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          'Cari Kebutuhan Servicemu...                      ',
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.notifications,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
          body: ListView(
            padding: EdgeInsets.symmetric(vertical: 5),
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, .0, 0, 4.0),
                child: Container(
                  height: 140,
                  color: Colors.white,
                  child: CarouselSlider(
                      items: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/aset1.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/aset2.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/asset3.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 0.5,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                      options: CarouselOptions(
                        height: 120,
                        aspectRatio: 16 / 8,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        reverse: true,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                child: Container(
                  padding: EdgeInsets.all(16),
                  height: 80,
                  color: Colors.white,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              8.0), // Sesuaikan dengan radius yang diinginkan
                          side: BorderSide(
                              color: Colors.black), // Tambahkan outline
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blue,
                            size: 30,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lokasi Saya',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Kota Malang , KedungKandang',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(left: 75)),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10.0, 0, 4.0),
                child: Container(
                  height: 180,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(Icons.category),
                            Text(
                          'Kategori Jasa',
                          style: 
                          TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        
                          ],
                        ),  
                        Text(
                          'Temukan kebutuhan servismu dibawah ini sesuai yang kamu butuhkan',
                          style: TextStyle(fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      minimumSize: Size(30, 70),
                                      backgroundColor: Colors.purpleAccent[50],
                                    ),
                                    child: Image.asset(
                                      'assets/air_conditioner.png',
                                      scale: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Servis Ac',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      minimumSize: Size(30, 70),
                                      backgroundColor: Colors.purpleAccent[50],
                                    ),
                                    child: Image.asset(
                                      'assets/paint.png',
                                      scale: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Servis Cat',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      minimumSize: Size(30, 70),
                                      backgroundColor: Colors.purpleAccent[50],
                                    ),
                                    child: Image.asset(
                                      'assets/cctv_camera.png',
                                      scale: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Servis CCTV',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      minimumSize: Size(30, 70),
                                      backgroundColor: Colors.blue[50],
                                    ),
                                    child: Image.asset(
                                      'assets/bricks.png',
                                      scale: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Servis Bangunan',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900, fontSize: 9),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        minimumSize: Size(30, 70),
                                        backgroundColor: Colors.blue[50]),
                                    child: Image.asset(
                                      'assets/tow_truck.png',
                                      scale: 20,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Servis Derek',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10.0, 0, 10.0),
                child: Container(
                  height: 820,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Penyedia Jasa Terdekat',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey, // warna outline
                                    width: 0.5, // ketebalan outline
                                  ),
                                ),
                                height: 100,
                                width: 210,
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "service laptop malang  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "(6.41 Km)",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Jl.Gajayana,Ketawanggede,\n Kec. Lowokwaru, Kota Malang",
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 5, 5, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.grey, // warna outline
                                    width: 0.5, // ketebalan outline
                                  ),
                                ),
                                height: 100,
                                width: 210,
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "PietComp  ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "(4.89 Km)",
                                              style: TextStyle(fontSize: 10),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Gg. 3 No.64,Bandungrejoso\n Kec. Sukun, Kota Malang",
                                          textAlign: TextAlign.start,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Artikel Terbaru',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // warna outline
                              width: 0.5, // ketebalan outline
                            ),
                          ),
                          height: 180,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/aset1.png',
                                    scale: 1.25,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Update Aplikasi Perlu Tukang  ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // warna outline
                              width: 0.5, // ketebalan outline
                            ),
                          ),
                          height: 180,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/aset1.png',
                                    scale: 1.25,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Update Aplikasi Perlu Tukang  ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey, // warna outline
                              width: 0.5, // ketebalan outline
                            ),
                          ),
                          height: 200,
                          child: Row(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    'assets/aset1.png',
                                    scale: 1.25,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Update Aplikasi Perlu Tukang  ",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
