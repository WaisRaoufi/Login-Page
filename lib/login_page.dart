import 'package:flutter/material.dart';
import 'package:loginpage/my_button.dart';
import 'package:loginpage/my_textfiled.dart';
import 'package:loginpage/squre_tile.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                Icon(Icons.lock, size: 100),

                const SizedBox(height: 50),
                Text(
                  'Welcome , I Hope You are doing Well',
                  style: TextStyle(color: Colors.grey[700], fontSize: 15),
                ),

                const SizedBox(height: 25),

                MyTextfiled(
                  controller: usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),
                MyTextfiled(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    ],
                    
                  
                  ),
                ),

                const SizedBox(height: 10),

                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 8,
                          color: Colors.grey[400],
                        ),
                      ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('OR continue With',
                          style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                       Expanded(
                        child: Divider(
                          thickness: 8,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureTile(imagePath: 'images/apple.png'),

                    const SizedBox(width: 15),

                    SqureTile(imagePath: 'images/google.png')
                  ],
                ),
                  const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Member?',
                    style: TextStyle(color: Colors.grey[700]),
                    ),
                    SizedBox(width: 5,),
                    Text('Register now',
                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
