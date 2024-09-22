import 'package:flutter/material.dart';
import 'package:ukl2/pages/searchpage.dart';
import 'package:ukl2/widgets/item.dart';

class Transaksi extends StatefulWidget {
   Transaksi({super.key});

  final List<Item> items = [
    Item(
        tanggal: "26/04/2023 06:29",
        foto:
            'https://upload.wikimedia.org/wikipedia/en/thumb/5/56/Real_Madrid_CF.svg/1200px-Real_Madrid_CF.svg.png',
        nama: 'Didit teknin',
        desc: '5758 teknik',
        desc2: 'Menunggu Konfirmasi'),
    Item(
        tanggal: "26/04/2023 06:29",
        foto:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSm19U7OC3lsenI9oUPZkiQ2VoWPOZ2eTNwDlfq7jjJ4A&s',
        nama: 'Danis Jaya teknik',
        desc: 'Danis jaya teknik',
        desc2: 'Menunggu Konfirmasi'),
    Item(
        tanggal: "26/04/2023 06:25",
        foto:
            'https://upload.wikimedia.org/wikipedia/en/thumb/7/7a/Manchester_United_FC_crest.svg/1200px-Manchester_United_FC_crest.svg.png',
        nama: 'Munyuk',
        desc: '',
        desc2: 'Menunggu Konfirmasi')
  ];

  @override
  _Transaksi createState() => _Transaksi();
}

class _Transaksi extends State<Transaksi> {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
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
        body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: widget.items.length,
            itemBuilder: (context, index) {
              final item = widget.items[index];
              return Card(
                color: Colors.white,
                shadowColor: Colors.white,
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    color: Colors.grey[100],
                    margin: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.grey),
                              shape: BoxShape.rectangle),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundColor: Colors.white,
                            child: Padding(
                                padding: EdgeInsets.all(8),
                                child: Image(
                                                                  image: NetworkImage(item.foto),
                                                                  height: 100,
                                                                  width: 100,
                                                                )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(item.nama),
                            Text(item.tanggal),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(item.desc, style: TextStyle(color: Colors.cyan),),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(item.desc2, style: TextStyle(color: Colors.orangeAccent),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
      ),
    );
  }
}