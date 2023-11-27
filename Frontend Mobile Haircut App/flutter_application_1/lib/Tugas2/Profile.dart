import 'package:flutter/material.dart';
import 'History/Tabs.dart';
import 'Login.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout"),
          content: Text("Apakah Anda Ingin Logout?"),
          actions: <Widget>[
            TextButton(
              child: Text("Tidak", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text("Ya", style: TextStyle(color: Colors.black)),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('./assets/profile.jpeg'),
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                'John Wick',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 7),
            Center(
              child: Text(
                'Enjoy This Life',
                style:
                    TextStyle(fontStyle: FontStyle.italic, color: Colors.black),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.wallet,
                            size: 40,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Hubungkan E-Wallet',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.black),
                        ),
                      ),
                    )),
                SizedBox(width: 15),
                Flexible(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                        child: ListTile(
                          leading: Icon(
                            Icons.monetization_on_outlined,
                            size: 40,
                            color: Colors.black,
                          ),
                          title: Text(
                            'Poin Bonus',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          trailing: Icon(Icons.keyboard_arrow_right_outlined,
                              color: Colors.black),
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(height: 15),
            InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.leaderboard_outlined,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Level Keanggotaan Saya',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                        'Gold',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.black,
                      )
                    ],
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.person_pin,
                color: Colors.black,
              ),
              title: Text(
                "Edit Profile",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right_outlined,
                  color: Colors.black),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tabs()),
                );
              },
              leading: Icon(
                Icons.history,
                color: Colors.black,
              ),
              title: Text(
                "Transaction History",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right_outlined,
                  color: Colors.black),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: Text(
                "Settings",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right_outlined,
                  color: Colors.black),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.help,
                color: Colors.black,
              ),
              title: Text(
                "Help",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.keyboard_arrow_right_outlined,
                  color: Colors.black),
            ),
            ListTile(
              onTap: () {
                _showLogoutDialog(context);
              },
              leading: Icon(
                Icons.logout,
                color: Colors.black,
              ),
              title: Text(
                "Logout",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
