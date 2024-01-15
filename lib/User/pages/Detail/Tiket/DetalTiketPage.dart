import 'package:flutter/material.dart';

class DashedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.0,
      width: double.infinity,
      child: CustomPaint(
        painter: DashedLinePainter(),
      ),
    );
  }
}

class DetailTiketPage extends StatefulWidget {
  const DetailTiketPage({Key? key}) : super(key: key);

  @override
  State<DetailTiketPage> createState() => _DetailTiketPageState();
}

class _DetailTiketPageState extends State<DetailTiketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              print("klik panah");
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Text("Detail Tiket"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Color(0xFFBFC4F0),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                  bottom: Radius.circular(20.0),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -50,
                    top: MediaQuery.of(context).size.height * (0.53),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 40,
                          height: 80,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: MediaQuery.of(context).size.height * (0.53),
                    child: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 40,
                          height: 65,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * (0.35),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                            bottom: Radius.circular(20.0),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20.0),
                            bottom: Radius.circular(20.0),
                          ),
                          child: Image.network(
                            "https://backoffice.konstruksiindo.id/images/posts/large/1689666990_bb8391f730ba479baf81.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Candi Borobudur",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Borobudur, Magelang",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0XFF46C731),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero)),
                                onPressed: () {
                                  print("klik status");
                                },
                                child: Text(
                                  "AKTIF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: DashedDivider(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, top: 15, bottom: 0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Nama",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("Isabel Kurniawan",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Berlaku sampai",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("23 Agustus 2023 23:59",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "ID Tiket",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("A3cY?6d98re2uwef",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * (0.05),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: DashedDivider(),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * (0.4),
                            height: MediaQuery.of(context).size.height * (0.2),
                            child: Image.asset(
                              'assets/img/scan.png',
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xFF2839CD),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero)),
                              onPressed: () {
                                print("klik download");
                              },
                              child: Text(
                                "Download Tiket",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class DashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3.0
      ..style = PaintingStyle.stroke;

    final double dashWidth = 15.0;
    final double dashSpace = 5.0;
    double startX = 0.0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0.0),
        Offset(startX + dashWidth, 0.0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
