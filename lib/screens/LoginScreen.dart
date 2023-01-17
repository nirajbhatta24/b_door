import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        // color: Color(0xFFad5389),
        color: Colors.white,
        padding: const EdgeInsets.all(15),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Image(
                image: AssetImage('assets/images/logoBlood.png'),
                width: 250,
                height:350,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter password';
                        }
                        return null;
                      },
                    ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.red),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                           side:const BorderSide(
                          width: 1.0
                        ) ,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                  ),
                  child: const Text('Login',style: TextStyle(color: Colors.black),),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                     Navigator.pushNamed(context, '/register');
                    },
                  style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(Colors.red),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        side:const BorderSide(
                          width: 1.0
                        ) ,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    
                  ),
                  child: const Text('Register',style: TextStyle(color: Colors.black),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}