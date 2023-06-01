import 'package:flutter/material.dart';

class UpdatePass extends StatefulWidget {
  @override
  State<UpdatePass> createState() => _UpdatePassState();
}

class _UpdatePassState extends State<UpdatePass> {
  bool _obscureText = true;
  bool _newPassword = true;
  bool _confPassword = true;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      // ignore: prefer_const_constructors
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 222, 227, 230),
        appBar: AppBar(
          title: Text("Academy"),
          leading: Container(
            child: Image.asset('assets/images/logo.png'),
          ),
          elevation: 10,
          backgroundColor: Color.fromARGB(255, 224, 227, 231),
        ),

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
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 9,
        ),
      ],
    );
  }

  _inputField(context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Text(
        "Current Password",
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(
        height: 3,
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "Current Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              child:
                  Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _obscureText,
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        "New Password",
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(
        height: 3,
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "New Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _newPassword = !_newPassword;
                });
              },
              child:
                  Icon(_newPassword ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _newPassword,
      ),
      SizedBox(
        height: 4,
      ),
      Text(
        "Confirm Password",
        style: TextStyle(fontSize: 15),
      ),
      SizedBox(
        height: 3,
      ),
      TextField(
        decoration: InputDecoration(
            hintText: "Confirm Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
            ),
            fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
            filled: true,
            prefixIcon: Icon(Icons.key),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  _confPassword = !_confPassword;
                });
              },
              child:
                  Icon(_confPassword ? Icons.visibility : Icons.visibility_off),
            )),
        obscureText: _confPassword,
      ),
      SizedBox(
        height: 8,
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
          backgroundColor: Color.fromARGB(255, 205, 81, 81),
        ),
      ),
    ]);
  }
}
