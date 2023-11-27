import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  bool selectedDana = false;
  bool selectedGopay = false;
  bool selectedOvo = false;

  void _showPaymentSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Text('Pembayaran Berhasil'),
              SizedBox(height: 20),
              Icon(Icons.check_circle, color: Colors.black, size: 100),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        title: Container(
          child: Text(
            'Payment',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: ListView(
            children: [
              SizedBox(
                width: 70,
                height: 70,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    './assets/logo.png',
                    width: 160,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 5, 5, 5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                ),
                width: 450,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Pembayaran',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'RP 500.000',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      width: 70,
                      child: GestureDetector(
                        onTap: () {},
                        child: Text(
                          'Lihat Detail',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(7.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 5, 5, 5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                ),
                width: 450,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      './assets/dana.png',
                      width: 50,
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Dana',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Radio(
                      value: 1,
                      groupValue: selectedDana ? 1 : 0,
                      onChanged: (value) {
                        setState(() {
                          selectedDana = true;
                          selectedGopay = false;
                          selectedOvo = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(7.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 5, 5, 5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                ),
                width: 450,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      './assets/gopay.png',
                      width: 50,
                      height: 50,
                    ),
                    Padding(padding: const EdgeInsets.only(left: 10.0)),
                    Text(
                      'Gopay',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Expanded(child: Container()),
                    Radio(
                      value: 2,
                      groupValue: selectedGopay ? 2 : 0,
                      onChanged: (value) {
                        setState(() {
                          selectedDana = false;
                          selectedGopay = true;
                          selectedOvo = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(7.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 5, 5, 5),
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.transparent,
                ),
                width: 450,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      './assets/ovo.png',
                      width: 50,
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        'Ovo',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                    Radio(
                      value: 3,
                      groupValue: selectedOvo ? 3 : 0,
                      onChanged: (value) {
                        setState(() {
                          selectedDana = false;
                          selectedGopay = false;
                          selectedOvo = true;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
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
                      _showPaymentSuccessDialog(context);
                    },
                    child: Text(
                      'Bayar',
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
}
