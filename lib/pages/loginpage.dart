import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:userapp/pages/registerpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome Back!!',
              style: TextStyle(
                color: Colors.green,
                  fontWeight: FontWeight.bold,
                fontSize: 40
              ),),
            SizedBox(height: 40,),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                prefixIcon: const Icon(Icons.phone_android),
                labelText: 'Phone Number',
                hintText: 'Enter Your Phone Number'
              ),

            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                child: Text('Login')),
            TextButton(onPressed: (){
              Get.to(RegisterPage());

            },
                child: Text(
                  'Register New Account',
                  style: TextStyle(color: Colors.green,fontSize: 17),
                ))
          ],
        ),
      ),
    );
  }
}
