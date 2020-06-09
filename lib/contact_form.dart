import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("New contact")),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.00),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Full name"
                  ),
                  style: TextStyle(fontSize: 24),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Account number"
                  ),
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: RaisedButton(
                    child: Text("Create"),
                    onPressed: () {},
                  ),
                ),
              )
            ],
          )),

    )
  }

}