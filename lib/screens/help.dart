import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  HelpState createState() => HelpState();
}

class HelpState extends State<Help> {
  var messageController = TextEditingController();
  var emailController = TextEditingController();

  void sendMessage() {
    setState(() {
      showToast();
    });
  }

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = RegExp(p);

    return regExp.hasMatch(em);
  }

  void showToast() => Fluttertoast.showToast(
      msg:
          "Thank you for contacting us. Your message was sent. We'll get back to you ASAP. Please be patient!",
      fontSize: 18.0,
      toastLength: Toast.LENGTH_LONG);

  void showNoToast() => Fluttertoast.showToast(
        msg: "Entered email format is invalid",
        toastLength: Toast.LENGTH_LONG,
        fontSize: 18.0,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Developed by Israel Maatavele and Antonio Macaringue\nFrom the Bachelor\'s in Geographical Information Science program\nFaculty of Sciences\nDepartment of Math and Computer Science\nEduardo Mondlane University\nMaputo, September 2022',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                'How can we help?',
                style: TextStyle(fontSize: 20.0),
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'E-mail',
                ),
                controller: emailController,
              ),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Message',
                ),
                controller: messageController,
              ),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  if (emailController.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: 'Please write your email for feedback purposes',
                        fontSize: 18.0,
                        toastLength: Toast.LENGTH_LONG);
                  } else if (messageController.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: 'Please write the message to send us',
                        fontSize: 18.0,
                        toastLength: Toast.LENGTH_LONG);
                  } else if (isEmail(emailController.text)) {
                    sendMessage();
                    messageController.text = '';
                    emailController.text = '';
                  } else {
                    showNoToast();
                  }
                },
              ),
            ]),
      ),
    );
  }
}
