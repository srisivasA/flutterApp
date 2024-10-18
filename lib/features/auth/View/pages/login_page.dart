import 'dart:ffi';

import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/View/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/View/widgets/custom_feilds.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
   
   @override
    void dispose(){
    
      emailController.dispose();
      passwordController.dispose();
      formKey.currentState!.validate();
      super.dispose();

    }
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Sign In.', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
               CustomFeilds(hintText:'Email',controller: emailController),
               const SizedBox(height: 15,),
               CustomFeilds(hintText:'password',controller: passwordController, isobsecureText: true,),
              const SizedBox(height: 20,),
              AuthGradientButton(text: 'Sign In',onTap: () {},),
              const SizedBox(height: 20,),
              RichText(text: TextSpan(text: "Don't have an account",
              style: Theme.of(context).textTheme.titleMedium,
               children: [
                TextSpan(text: ' Sign Up',style: TextStyle(color: Pallete.gradient2,fontWeight: FontWeight.bold))
              ]),
              
              )
          
          
            ],
          
          ),
        ),
      ),
    );
  }
}