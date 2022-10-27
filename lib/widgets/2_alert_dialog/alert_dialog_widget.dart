import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget remindButton = TextButton(
      child: const Text("Remind me later"),
      onPressed: () {},
    );
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        // close the popup
        Navigator.pop(context);
      },
    );
    Widget launchButton = TextButton(
      child: const Text("Launch missile"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Notice"),
      content: const Text(
          "Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      actions: [
        remindButton,
        cancelButton,
        launchButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            /// ALERT DIALOG WIDGET
            showAlertDialog(context);

            /// ALERT DIALOG WIDGET
          },
          color: Colors.blue,
          child: const Text(
            'Click Me',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class MoreInfoWidget extends StatelessWidget {
  const MoreInfoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: const [
          Icon(
            Icons.circle,
            size: 10.0,
          ),
          SizedBox(width: 10.0),
          Text("More info about app."),
        ],
      ),
    );
  }
}
