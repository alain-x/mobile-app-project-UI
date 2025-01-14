import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:userapp/pages/loginpage.dart';
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blueGrey[50]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Create your account!!'
              ,style: TextStyle(fontSize: 30,
                  fontWeight: FontWeight.bold,color: Colors.green),),
            SizedBox(height: 20,),
            SizedBox(height: 20,),
            TextField(decoration:  InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(Icons.person),
              labelText: 'name',
              hintText: 'Enter your full names'
            ),),
            SizedBox(height: 20,),
            TextField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                labelText: 'phone number',
                hintText: 'Enter your phone number',
                prefixIcon: Icon(Icons.phone_android),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white
                ),
                child: Text('Register'),),
            TextButton(onPressed: (){
              Get.to(LoginPage());
            }, child: Text('Login' ))
          ],
        ),
      ),
    );
  }
}
