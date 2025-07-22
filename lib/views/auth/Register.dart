import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Only need this import from get package
import 'package:threads_project/routes/route_name.dart'; // Assume you have the right path
import 'package:threads_project/widgets/auth_input.dart';
import 'package:flutter/gestures.dart';
import 'package:form_validator/form_validator.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _conformpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 60,
                    height: 69,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text('Create your account'),
                       SizedBox(height: 10),
                        AuthInput(
                          hintText: 'Enter your Name',
                          label: 'Name',
                          // Controller: _emailController,
                          controller: _name,
                          ispassword: false,
                           validatorCallback: ValidationBuilder().minLength(3).maxLength(50).build(),
                        ),
                        SizedBox(height: 10),
                        AuthInput(
                          hintText: 'Enter your Email',
                          label: 'Email',
                          // Controller: _emailController,
                          controller: _email,
                          validatorCallback: ValidationBuilder().email().build(),
                        ),
                        const SizedBox(height: 15),
                        AuthInput(
                          label: 'Password',
                          hintText: 'Enter your password',
                          ispassword: true,
                          // Controller: _passwordController,
                          controller: _password,
                          validatorCallback: ValidationBuilder().minLength(6).maxLength(6).build(),
                        ),
                        SizedBox(height: 20,),
                        AuthInput(
                          label: 'Password',
                          hintText: 'Enter your password',
                          ispassword: true,
                          // Controller: _passwordController,
                          controller: _conformpassword,
                          validatorCallback: ValidationBuilder().minLength(6).maxLength(6).build(),
                        ),
                        const SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            if (_form.currentState!.validate()) {
                              // Do your registration logic here
                            }
                          },
                          child: const Text('Register'),
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(
                              Colors.black,
                            ),
                            minimumSize: MaterialStateProperty.all(
                              const Size.fromHeight(40),
                            ),
                            backgroundColor: MaterialStateProperty.all(
                              Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Text.rich(
                          TextSpan(
                            text: "Already have an account? ",
                            children: [
                              TextSpan(
                                text: "Login",
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () => Get.toNamed(RouteName.Login),
                                style: const TextStyle(
                                  color: Colors.blue,
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

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    _conformpassword.dispose();
    super.dispose();
  }
}
