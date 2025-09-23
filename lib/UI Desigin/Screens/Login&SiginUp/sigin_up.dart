import 'package:acied_test/UI%20Desigin/Screens/Login&SiginUp/sigin_up_confarmation_otp.dart';
import 'package:flutter/material.dart';

import '../../Widget/text_Filled.dart';

class SiginUp extends StatefulWidget {
  const SiginUp({super.key});
  static const String name = '/signup';

  @override
  State<SiginUp> createState() => _SiginUpState();
}

class _SiginUpState extends State<SiginUp> {
  bool isChecked = false;
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
                  'Sign Up',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const SizedBox(height: 40),

              Text_Filed_Heading(label: 'Name'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your Name',

                obscureText: false,
                keyboardType: TextInputType.name,
              ),
              const SizedBox(height: 20),
              Text_Filed_Heading(label: 'Phone Number'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your number',
                obscureText: false,

                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              Text_Filed_Heading(label: 'Email'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your Email',
                obscureText: false,

                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              Text_Filed_Heading(label: 'Password'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your Password',
                obscureText: true,

                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 20),
              Text_Filed_Heading(label: 'Retype Password'),
              const SizedBox(height: 8),
              Text_Filled(
                hintText: 'Enter your Password',
                obscureText: true,

                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value ?? false;
                      });
                    },
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'I agree to the Terms & Conditions',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              FilledButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SiginUpConfarmationOtp(),
                    ),
                  );
                },
                child: const Text(
                  'Sign Up',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Do not have an account? '),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
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
