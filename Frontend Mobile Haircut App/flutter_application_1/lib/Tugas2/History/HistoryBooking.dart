import 'package:flutter/material.dart';
import '../RincianPesanan.dart';

class HistoryBooking extends StatefulWidget {
  const HistoryBooking({Key? key}) : super(key: key);

  @override
  State<HistoryBooking> createState() => _HistoryBooking();
}

class _HistoryBooking extends State<HistoryBooking> {
  List<Map<String, dynamic>> dataList = [
    {
      'img': './assets/Premium.jpg',
      'model': 'Premium Cut + shampooing',
      'developer': 'Side Tapper',
      'desc': '10-10-2023',
      'price': 150,
    },
    {
      'img': './assets/Reguler.jpg',
      'model': 'Regular Cut',
      'developer': 'Mullet',
      'desc': '02-02-2023',
      'price': 70,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'Filter',
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(width: 3),
                          Icon(
                            Icons.filter_list,
                            size: 15,
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  width: 5,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            body()
          ],
        ),
      ),
    );
  }

  Widget body() {
    return ListView(
      shrinkWrap: true,
      children: dataList.map<Widget>((item) {
        return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RincianPesanan()),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset(
                      item['img'],
                      fit: BoxFit.cover,
                    ),
                    title: Text(item['model']),
                    subtitle: Text(
                      item['developer'],
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      'Tanggal Pemesanan : ${item['desc'].toString()}',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Rp. ${item['price'].toString()}.000',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.black)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RincianPesanan()),
                                );
                              },
                              child: Text(
                                'Rincian Pesanan',
                                style: TextStyle(color: Colors.white),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ));
      }).toList(),
    );
  }
}
