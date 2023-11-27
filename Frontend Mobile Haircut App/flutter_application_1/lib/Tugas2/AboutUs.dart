import 'package:flutter/material.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:sign_button/sign_button.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  static const List<String> sampleImages = [
    './assets/AboutUs1.jpg',
    './assets/AboutUs2.jpg',
    './assets/AboutUs3.jpg',
    './assets/AboutUs4.jpg',
    './assets/AboutUs5.jpg',
    './assets/AboutUs6.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 4,
        title: Container(
          child: Text(
            'About Us',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(1),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Welcome to Hair Cut App, your one-stop solution for all your hair styling needs. Whether you want a trendy haircut, a classic style, or a complete makeover, our app has got you covered.',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                              color: Colors.grey.withOpacity(0.8),
                              offset: Offset(1, 1),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  FanCarouselImageSlider(
                    imagesLink: sampleImages,
                    isAssets: true,
                    autoPlay: true,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Features:',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Bullets(
                          'Ability to book haircuts online through the app'),
                      Bullets(
                          'Access to various hair model inspirations available in the app'),
                      Bullets('Convenient online payment option'),
                      Bullets('View haircut history'),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SignInButton.mini(
                            buttonSize: ButtonSize.medium,
                            buttonType: ButtonType.youtube,
                            onPressed: () {},
                          ),
                          SignInButton.mini(
                            buttonSize: ButtonSize.medium,
                            buttonType: ButtonType.facebook,
                            onPressed: () {},
                          ),
                          SignInButton.mini(
                            buttonSize: ButtonSize.medium,
                            buttonType: ButtonType.instagram,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Bullets(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 8,
            height: 8,
            margin: EdgeInsets.only(top: 6, right: 8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
