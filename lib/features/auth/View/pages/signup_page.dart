import 'dart:ffi';

import 'package:client/core/theme/app_pallete.dart';
import 'package:client/features/auth/View/widgets/auth_gradient_button.dart';
import 'package:client/features/auth/View/widgets/custom_feilds.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
   
   @override
    void dispose(){
      nameController.dispose();
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
              const Text('Sign Up.', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
              const SizedBox(height: 15,),
              CustomFeilds(hintText:'name',controller: nameController),
              const SizedBox(height: 15,),
               CustomFeilds(hintText:'Email',controller: emailController),
               const SizedBox(height: 15,),
               CustomFeilds(hintText:'password',controller: passwordController, isobsecureText: true,),
              const SizedBox(height: 20,),
              AuthGradientButton(text: "Sign Up",onTap: () {}),
              const SizedBox(height: 20,),
              RichText(text: TextSpan(text: 'Already have an account?',
              style: Theme.of(context).textTheme.titleMedium,
               children: [
                TextSpan(text: ' SignIn',style: TextStyle(color: Pallete.gradient2,fontWeight: FontWeight.bold))
              ]),
              
              )
          
          
            ],
          
          ),
        ),
      ),
    );
  }
}