import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/monkey.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
              ),
            ),
            Text(
              'Welcome to this awesome login app.\nYou are awesome',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            Spacer(),
            Row(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('login'),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.red)))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
