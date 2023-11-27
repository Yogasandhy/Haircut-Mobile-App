import 'package:flutter/material.dart';
import 'Registrasi.dart';
import 'Dashboard/ButtomNavBar.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(10),
      child: ListView(children: [
        SizedBox(height: 20),
        Center(
          child:
              Image.asset('./assets/Login_regis.png', width: 100, height: 100),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('Login',
                  style: TextStyle(fontSize: 40, color: Colors.black)),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Silahkan Login Menggunakan Email Anda',
                style: TextStyle(fontSize: 14, color: Colors.black)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2)),
                labelText: 'Email ',
                labelStyle: TextStyle(color: Colors.black)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 15),
          child: TextFormField(
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0), width: 2)),
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.black)),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Align(
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(width: 100, height: 35),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtomNavBar()),
                );
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Belum punya akun?'),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registrasi()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.black),
                ))
          ],
        )
      ]),
    ));
  }
}
