import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lapor_book/components/styles.dart';
import 'package:lapor_book/models/akun.dart';

class Profile extends StatefulWidget {
  final Akun akun;

  const Profile({super.key, required this.akun});
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              widget.akun.nama,
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              widget.akun.role,
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: primaryColor),
                ),
              ),
              child: Text(
                widget.akun.noHP,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: primaryColor),
                ),
              ),
              child: Text(
                widget.akun.email,
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: double.infinity,
              child: FilledButton(
                style: buttonStyle,
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/dashboard', ModalRoute.withName('/dashboard'));
                },
                child: Text('Logout',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 35,
            ),
          ],
        ),
      ),
    );
  }
}
