import 'package:flutter/material.dart';

import 'Forgot Otp/email.dart';
import 'Forgot Otp/phn_number.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String selectedMethod = "email";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Forget Password',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Please enter your email address or phone number for confirmation code.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 40),

              // email / phone button row
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMethod = "email";
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (selectedMethod == "email") {
                                return const Color(0xFF3A4C67);
                              }
                              return Colors.white;
                            }),
                      ),
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: selectedMethod == "email"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedMethod = "phone";
                        });
                      },
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                              if (selectedMethod == "phone") {
                                return const Color(0xFF3A4C67);
                              }
                              return Colors.white;
                            }),
                      ),
                      child: Text(
                        'Phone',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: selectedMethod == "phone"
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              Text(
                "Enter your ${selectedMethod == "email" ? "Email" : "Number"}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 10),

              TextField(
                keyboardType: selectedMethod == "phone"
                    ? TextInputType.phone
                    : TextInputType.emailAddress,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: selectedMethod == "phone" ? "Number" : "Email",
                  hintStyle: const TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              FilledButton(
                onPressed: () {
                  if (selectedMethod == "email") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => EmailOtp()),
                    );
                  } else if (selectedMethod == "phone") {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => PhnNumberOtp()),
                    );
                  }
                },
                child: const Text(
                  'Send',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
