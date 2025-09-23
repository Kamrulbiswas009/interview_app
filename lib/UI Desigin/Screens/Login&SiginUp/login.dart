import 'package:acied_test/UI%20Desigin/Screens/Login&SiginUp/sigin_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Widget/text_Filled.dart';
import '../Profile SetUp/profile_update_1st.dart';
import 'forget_password.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  static const String name = '/login';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 40),

              Text_Filed_Heading(label: 'Email'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your Email',
                icon: Icons.email,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 20),
              Text_Filed_Heading(label: 'Password'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your password',
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: () {
                  Get.toNamed(ProfileUpdate1st.name);
                },
                child: const Text(
                  'Login',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetPassword()),
                    );
                  },
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 40),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Do not have an account? '),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => SiginUp()),
                        );
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
