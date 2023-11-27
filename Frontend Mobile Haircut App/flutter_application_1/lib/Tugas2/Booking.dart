import 'package:flutter/material.dart';
import 'DetailPesanan.dart';
import 'package:intl/intl.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  List<String> selectedTimes = [];

  List<String> availableTimesRow1 = [
    '10.00',
    '10.30',
    '11.00',
    '11.30',
    '12.00',
    '13.00',
    '13.30',
  ];

  List<String> availableTimesRow2 = [
    '14.00',
    '14.30',
    '15.00',
    '15.30',
    '16.00',
    '16.30',
    '17.00',
  ];

  List<String> availableTimesRow3 = [
    '17.30',
    '18.00',
    '18.30',
    '19.00',
    '19.30',
    '20.00',
    '20.30',
  ];

  String selectedDate = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null) {
      setState(() {
        selectedDate = DateFormat('yyyy-MM-dd').format(picked);
      });
    }
  }

  String? selectedValue;
  final List<String> Kelas = [
    'Premium Cut + Cuci Muka',
    'Reguler Cut + Cuci Muka',
    'Premium Cut',
    'Reguler Cut',
  ];

  TextEditingController jamBookingController = TextEditingController();

  @override
  void dispose() {
    jamBookingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        title: Container(
          child: Text(
            'Booking',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Align(
          alignment: Alignment.topCenter,
          child: ListView(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  return Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: buildTimeRow(availableTimesRow1),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: buildTimeRow(availableTimesRow2),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: buildTimeRow(availableTimesRow3),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    labelText: 'Pilih Type',
                    hintText: '',
                    border: InputBorder.none,
                  ),
                  value: selectedValue,
                  items: Kelas.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Model Rambut',
                    hintText: '',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 35),
              GestureDetector(
                onTap: () {
                  _selectDate(context);
                },
                child: Container(
                  width: 350,
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2),
                    child: Text(
                      selectedDate.isEmpty ? 'Pilih Tanggal' : selectedDate,
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextField(
                  controller: jamBookingController,
                  decoration: InputDecoration(
                    labelText: 'Jam Booking',
                    hintText: '',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Total Harga',
                    hintText: '',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.center,
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(width: 150, height: 35),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPesanan()),
                      );
                    },
                    child: Text(
                      'Booking',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildTimeRow(List<String> times) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (var time in times)
          Flexible(
            flex: 1,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedTimes.clear();
                  if (!selectedTimes.contains(time)) {
                    selectedTimes.add(time);
                    jamBookingController.text = time;
                  } else {
                    jamBookingController.text = '';
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: selectedTimes.contains(time)
                      ? Colors.black
                      : Colors.transparent,
                  border: Border.all(
                    color: selectedTimes.contains(time)
                        ? Colors.black
                        : Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    time,
                    style: TextStyle(
                      fontSize: 10,
                      color: selectedTimes.contains(time)
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
