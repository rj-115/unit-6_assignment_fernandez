import 'package:flutter/material.dart';

class HomScreen extends StatelessWidget {
  const HomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture and Navigation"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.person,
              color: Colors.blue,
              size: 100,
            ),
            Text(
              "This is supposed to be a Home Screen",
            ),
            SizedBox(height: 20),

            FilledButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'About');
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: const Text("Go to about me"))

            // INSERT CODE BELOW
          ],
        ),
      ),
    );
  }
}
