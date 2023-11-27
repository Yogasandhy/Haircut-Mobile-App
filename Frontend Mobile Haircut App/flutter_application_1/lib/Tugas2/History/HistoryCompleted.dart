import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HistoryCompleted extends StatefulWidget {
  const HistoryCompleted({Key? key}) : super(key: key);

  @override
  State<HistoryCompleted> createState() => _HistoryCompleted();
}

class _HistoryCompleted extends State<HistoryCompleted> {
  double _rating = 3.0;

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
        padding: const EdgeInsets.all(10),
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
            onTap: () {},
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
                      Row(
                        children: [
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll(Colors.black)),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Beri Penilaian"),
                                        content: RatingBar.builder(
                                          initialRating: _rating,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20.0,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            setState(() {
                                              _rating = rating;
                                            });
                                          },
                                        ),
                                        actions: [
                                          TextButton(
                                            child: Text(
                                              "Tutup",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                            child: Text("Ok",
                                                style: TextStyle(
                                                    color: Colors.black)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Text("Rating"),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ));
      }).toList(),
    );
  }
}
