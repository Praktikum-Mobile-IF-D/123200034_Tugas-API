import 'package:flutter/material.dart';
import 'package:ini_pokemon/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: [
          IconButton(
            onPressed: () {
              // Logout dari aplikasi
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Wrap the Column with SingleChildScrollView
        child: Column(
          children: [
            MyProfile(),
          ],
        ),
      ),
    );
  }
}

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/pokeball.png',
          fit: BoxFit.cover,
        ),
        Container(
          margin: EdgeInsets.only(top: 55.0),
          alignment: Alignment.center,
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 160,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              SizedBox(height: 70),
              Text(
                'Freshley Grisyuan Surya Kolim',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'NIM: 123200034',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Kelas: Prak.TPM-IF-D',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Hobby: Gym, Catur, Shopping, Mobile Legends',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Cita-cita: Business Man',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
