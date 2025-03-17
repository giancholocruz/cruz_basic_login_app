/// HomePage widget implements the login screen of the application.
/// It contains a username input field and a login button.
import 'package:basic_login_app/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Controller for the username text field
  /// This allows us to access and manage the text input
  final TextEditingController _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Department of Transportation",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red[700],
        elevation: 4,
        shadowColor: Colors.blueGrey,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: TextField(
                controller: _usernameController,
                style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                decoration: InputDecoration(
                  labelText: "Username",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 54, 52, 52),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(
                      username: _usernameController.text.trim(),
                    ),
                  ),
                );
              },
              child: Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.blueGrey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
