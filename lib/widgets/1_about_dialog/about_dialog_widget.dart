import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('About Dialog'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            /// ABOUT DIALOG WIDGET
            showAboutDialog(
              context: context,
              applicationVersion: '2.0.1',
              applicationIcon: const Icon(
                Icons.icecream_sharp,
                color: Colors.blue,
                size: 70.0,
              ),
              applicationLegalese: '© 2022 chrisdeveloper.com',
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: const [
                      MoreInfoWidget(),
                      MoreInfoWidget(),
                      MoreInfoWidget(),
                    ],
                  ),
                ),
              ],
            );

            /// ABOUT DIALOG WIDGET
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
