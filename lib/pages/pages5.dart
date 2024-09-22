import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ukl2/pages/searchpage.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
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
          body: ListView(children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0, 10.0),
              child: Container(
                height: 110,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  isThreeLine: true,
                  leading: Icon(
                    Icons.account_circle,
                    size: 90,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text("Nabil Fadly"),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('nabilfadly28@gmail.com'),
                        ],
                      ),
                      Text('08123456789')
                    ],
                  ),
                  trailing: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        minimumSize: Size(60, 30),
                        backgroundColor: Colors.blue, // ubah menjadi warna biru
                      ),
                      child: Text(
                        'Edit',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            ),Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0, 1.0),
              child: Container(
                height: 60,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    size: 30,
                  ),
                  title: Text('Ubah Password'),
                  trailing: Icon(Icons.keyboard_arrow_right),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0, 1.0),
              child: Container(
                height: 60,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  leading: Icon(
                    Icons.chat,
                    size: 30,
                  ),
                  title: Text('Ketentuan Layanan'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0, 0, 10.0),
              child: Container(
                height: 60,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  leading: Icon(
                    Icons.lock,
                    size: 30,
                  ),
                  title: Text('kebijakan Privasi'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 10.0, 0, 1.0),
              child: Container(
                height: 60,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  leading: Icon(
                    Icons.chat,
                    size: 30,
                  ),
                  title: Text('WhatsApp Admin'),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 0, 0, 10.0),
              child: Container(
                height: 60,
                color: Color.fromARGB(255, 255, 255, 255),
                child: ListTile(
                  leading: Icon(
                    Icons.logout,
                    size: 30,
                    color: Colors.red,
                  ),
                  title: Text('keluar'),
                ),
              ),
            ),
             Padding(
          padding: EdgeInsets.fromLTRB(0.0, 0, 0, 10.0),
          child: Container(
            height: 60,
            color: Color.fromARGB(255, 241, 241, 241),
            child: ListTile(
              title: Text(
                'Version V 1.3.6',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ]),
),
    );
}
}
