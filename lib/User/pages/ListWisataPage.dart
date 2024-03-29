// File: ListWisataPage.dart
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gohealing/User/pages/Detail/Wisata/DetailWisataPage.dart';
import 'package:gohealing/User/pages/LoginPage/LoginPage.dart';
import 'package:gohealing/data/DBwisata.dart';
import 'package:gohealing/User/pages/ProfilePage/ProfilePage.dart';
import 'package:gohealing/User/widgets/Card/WidgetCardWisata.dart';
import 'package:google_fonts/google_fonts.dart';

class ListWisataPage extends StatefulWidget {
  const ListWisataPage({Key? key}) : super(key: key);

  @override
  State<ListWisataPage> createState() => _ListWisataPageState();
}

class _ListWisataPageState extends State<ListWisataPage> {
  TextEditingController searchC = TextEditingController();
  final DBWisata _dbWisata = DBWisata();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: _dbWisata.getWisataStream(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          var _data = snapshot.data!.docs;

          return Padding(
            padding: EdgeInsets.only(
                top: 40,
                left: MediaQuery.of(context).size.width * (0.06),
                right: MediaQuery.of(context).size.width * (0.06)),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  child: Center(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Temukan",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xFF2839CD)),
                            ),
                            Text(
                              "Wisata Anda",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                  fontFamily: GoogleFonts.kanit().fontFamily,
                                  height: 1,
                                  color: Color(0xFF2839CD)),
                            ),
                          ],
                        ),
                        Center(
                            child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://awsimages.detik.net.id/community/media/visual/2019/02/19/42393387-9c5c-4be4-97b8-49260708719e.jpeg?w=600&q=90"),
                        )),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  height: 75,
                  child: TextField(
                    controller: searchC,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Cari di sini",
                      labelStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      fillColor: Color(0xFF7E88E1),
                      filled: true,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                            30.0), // Atur radius border di sini
                        borderSide: BorderSide.none, // Hilangkan border
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          WidgetCardWisata(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailWisataPage(
                                    tempatWisataData: _data[index].data(),
                                  ),
                                ),
                              );
                            },
                            namaTempat: _data[index]
                                    .data()?["tempatWisata"]
                                    .toString() ??
                                "",
                            lokasi:
                                _data[index].data()?["lokasi"].toString() ?? "",
                            harga:
                                _data[index].data()?["harga"].toString() ?? "",
                            jarak:
                                _data[index].data()?["jarak"].toString() ?? "",
                            rating:
                                _data[index].data()?["rating"].toString() ?? "",
                            gambar:
                                _data[index].data()?["gambar"].toString() ?? "",
                          ),
                          SizedBox(height: 20),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
