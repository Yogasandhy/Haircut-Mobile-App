import 'package:flutter/material.dart';

class RincianPesanan extends StatefulWidget {
  const RincianPesanan({super.key});

  @override
  State<RincianPesanan> createState() => _RincianPesananState();
}

class _RincianPesananState extends State<RincianPesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 4,
          title: Container(
            child: Text(
              'Rincian Pesanan',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Container(
                      width: 80,
                      height: 80,
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset(
                        './assets/Login_regis.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('John Wick',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(height: 6),
                      Text('F-713901 | 10-10-2023 | 13:30',
                          style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: const Color.fromARGB(255, 5, 5, 5), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                title: Row(
                  children: [
                    Text('Premium Cut + ', style: TextStyle(fontSize: 15)),
                    Text('Side Tapper', style: TextStyle(fontSize: 15)),
                    Spacer(),
                    Text('Rp: 100.000', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: const Color.fromARGB(255, 5, 5, 5), width: 1.0),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                title: Row(
                  children: [
                    Text('Cuci Muka', style: TextStyle(fontSize: 15)),
                    Spacer(),
                    Text('Rp: 25.000', style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.all(10),
                tileColor: Colors.transparent,
                title: Row(
                  children: [
                    Text('Total:', style: TextStyle(fontSize: 17)),
                    Spacer(),
                    Text('Rp: 125.000', style: TextStyle(fontSize: 17)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 200, height: 35),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Batalkan Pesanan',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
