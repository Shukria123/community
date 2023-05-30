import 'package:flutter/material.dart';

class updatepass extends StatelessWidget {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      // ignore: prefer_const_constructors
      child: Scaffold(
        // ignore: prefer_const_constructors, prefer_const_literals_to_create_immutables
        body: Container(
          // ignore: prefer_const_constructors
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              _header(context),
              _inputField(context),
            ],
          ),
        ),
      ),
    );
  }

  _header(context) {
    return Column(
      children: [
        Text(
          "Update Password",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        "Current Password",
        style: TextStyle(fontSize: 16),
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "Current Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                _obscureText = !_obscureText;
              },
              child:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _obscureText,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "New Password",
        style: TextStyle(fontSize: 16),
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "New Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                _obscureText = !_obscureText;
              },
              child:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _obscureText,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "Confirm Password",
        style: TextStyle(fontSize: 16),
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "Confirm Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                _obscureText = !_obscureText;
              },
              child:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _obscureText,
      ),
      SizedBox(
        height: 10,
      ),
      ElevatedButton(
        onPressed: () {},
        child: Text(
          "Update Now",
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          padding: EdgeInsets.symmetric(vertical: 16),
          backgroundColor: Color.fromARGB(255, 237, 62, 62),
        ),
      ),
    ]);
  }
}
