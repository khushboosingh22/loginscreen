
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //title
            const Text("Welcome back!",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
            ),
            //subtitle
             const SizedBox(height:10),
           const  Text("Start managing your finance faster and better",
            style: TextStyle(
              color:Color(0XFF9BA0AB),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
            ),
            //email field
            const SizedBox(height:35),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: const  Color(0xFFEAEEF5),
                hintText: "you@gmail.com",
                hintStyle:const TextStyle(color:Color(0XFF9BA0AB)),
                prefixIcon:const Icon(Icons.email_outlined),
                border:OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                )
            )
            ),
            //password field
            const SizedBox(height:10),
            TextField(
              obscureText:true,
              decoration: InputDecoration(
                filled: true,
                fillColor: const  Color(0xFFEAEEF5),
                hintText: "at least 8 characters",
                hintStyle:const TextStyle(color:Color(0XFF9BA0AB)),
                prefixIcon:const Icon(Icons.lock_outlined), 
                border:OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                )
            ),
            ),
            //forgot password
            Align(
              alignment: Alignment.centerRight,
               child: TextButton(onPressed:(){},
                child:const Text("Forgot password?")),
             ),
             ElevatedButton(onPressed:(){},
             style:ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 32, 51, 228),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
              ),
              fixedSize:const Size(double.maxFinite,55),
             ),
              child:const Text("Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
             ))
            ],
          ),
        ),
      )
    );
  }
}