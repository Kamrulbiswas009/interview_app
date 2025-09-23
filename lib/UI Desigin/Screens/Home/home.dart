import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utlits/asset_paths.dart';
import '../../Widget/home_key_feture.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ready to Land Your Dream Job?',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  height: 1.5,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SvgPicture.asset(
                  AssetPaths.splash,
                  width: 200,
                  height: 200,
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                onPressed: () {},
                child: Text('Start Mock Interview'),
              ),
              SizedBox(height: 10),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.green, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Applied Jobs",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 32),
              // Key Features section
              const Text(
                "Key Features",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              FeatureCard(
                color: Colors.yellow.shade400,
                icon: Icons.smart_toy,
                title: "AI-Powered Feedback",
                description:
                    "Instant analysis of answers, body language, and tone.",
              ),
              const SizedBox(height: 16),

              FeatureCard(
                color: Colors.greenAccent.shade400,
                icon: Icons.access_time,
                title: "Personalized Practice",
                description: "Tailored questions for job-specific preparation.",
              ),
              const SizedBox(height: 16),
              FeatureCard(
                color: Colors.lightBlueAccent.shade200,
                icon: Icons.all_inclusive,
                title: "Unlimited Practice",
                description:
                    "Access to a wide range of mock interview questions for continuous improvement.",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
