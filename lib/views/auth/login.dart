import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:threads_project/routes/route_name.dart' show RouteName;
import 'package:threads_project/utils/type_def.dart';
import 'package:threads_project/widgets/auth_input.dart';
import 'register.dart';
import 'package:flutter/gestures.dart';
import 'package:form_validator/form_validator.dart';
class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/logo.png', // always try to put your photo in the single dotted commas it can c
                    // create the problem as double quoted never shows us the photos
                    width: 60,
                    height: 69,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      /// we are creating this second column as there is the problem in the alignment
                      //  //of the things that's why we are doing this for alignment
                      //  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        const Text('Welcome Back'),
                        const SizedBox(height: 10),
                        
                
                        AuthInput(
                          hintText: 'Enter your Email',
                          label: 'Email',
                          controller: _emailcontroller,
                          validatorCallback: ValidationBuilder().email().build(),
                        ),
                        SizedBox(height: 15),
                        AuthInput(
                          label: 'Password',
                          hintText: 'enter your password',
                          ispassword: true,
                          controller: _password,
                           validatorCallback: ValidationBuilder().minLength(6).maxLength(6).build(),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                                 if (_form.currentState!.validate()) {
                              // Do your login logic here
                            }},
                          child: const Text('Login'),
                          style: ButtonStyle(
                            foregroundColor: WidgetStateProperty.all(
                              Colors.black,
                            ),
                            minimumSize: WidgetStateProperty.all(
                              const Size.fromHeight(40),
                            ),
                            backgroundColor: WidgetStateProperty.all(
                              Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text.rich(
                          TextSpan(
                            text: "Don't have an account? ",
                            children: [
                              TextSpan(
                                text: "Sign up",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = ()=> Get.toNamed(RouteName.Register),
                                  
                                style: TextStyle(
                                  color: Colors.blue, // or any style you want
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],  
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
