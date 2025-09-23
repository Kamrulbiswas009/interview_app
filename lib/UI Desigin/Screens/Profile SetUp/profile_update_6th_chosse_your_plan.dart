import 'package:flutter/material.dart';

import '../../Widget/chosse_your_plan.dart';

class ProfileUpdate6thChosseYourPlan extends StatefulWidget {
  const ProfileUpdate6thChosseYourPlan({super.key});

  @override
  State<ProfileUpdate6thChosseYourPlan> createState() =>
      _ProfileUpdate6thChosseYourPlanState();
}

class _ProfileUpdate6thChosseYourPlanState
    extends State<ProfileUpdate6thChosseYourPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Choose Your Plan'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              PlanCard(
                title: 'Free Plan',
                description:
                    'Lorem ipsum dolor sit amet consectetur. At interdum euismod ac eras mauris. Maceenas egestas cursus integer porttitor amet.',
                price: '\$00/monthly',
                features: [
                  '1 Free Mock Interview',
                  'Track up to 10 Jobs per month',
                  'Personalized Feedback',
                  'Access to AI Feedback Interview',
                  'Progress Tracking',
                  'Recommendation for improvement',
                ],
                buttonText: 'Get Started',
              ),
              SizedBox(height: 24),
              PlanCard(
                title: 'Premium Plan',
                description:
                    'Lorem ipsum dolor sit amet consectetur. At interdum euismod ac eras mauris. Maceenas egestas cursus integer porttitor amet.',
                price: '\$19.99/monthly',
                features: [
                  '10 Mock Interviews',
                  'Unlimited Jobs Tracking',
                  'Personalized Feedback',
                  'Access to AI Feedback 10 Interview',
                  'Generate Custom Mock Interview',
                  'Progress Tracking',
                  'Recommendation for improvement',
                ],
                buttonText: 'Get Started',
              ),
              SizedBox(height: 24),
              PlanCard(
                title: 'Pay-Per-Interview',
                description:
                    'Lorem ipsum dolor sit amet consectetur. At interdum euismod ac eras mauris. Maceenas egestas cursus integer porttitor amet.',
                price: '\$4.99/per interview',
                features: [
                  'Unlimited Jobs Tracking',
                  'Personalized Feedback',
                  'Access to AI Feedback',
                  'Generate Custom Mock Interview',
                  'Progress Tracking',
                  'Recommendation for improvement',
                ],
                buttonText: 'Get Started',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
