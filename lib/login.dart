

import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});
 
  @override
  State<Login> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<Login> {
 
  @override
  Widget build(BuildContext context) {
    return 
    MaterialApp(
      title: "Login",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Meu App",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue
        ),
        body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Bem Vindo!',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
            Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Forgot Password',),
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll<Color>(Colors.blue),
                    shape: WidgetStatePropertyAll<OutlinedBorder>(LinearBorder())
                  ),
                  child: const Text('Login',
                  style: TextStyle(color: Colors.black),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Does not have account?'),
                TextButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    //signup screen
                  },
                )
              ],
            ),
          ],
        ))
      ),
    );
  }
}