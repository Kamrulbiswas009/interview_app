import 'package:flutter/material.dart';

import '../Screens/Home/main_nav_holder.dart';

class PlanCard extends StatelessWidget {
  final String title;
  final String description;
  final String price;
  final List<String> features;
  final String buttonText;

  const PlanCard({
    Key? key,
    required this.title,
    required this.description,
    required this.price,
    required this.features,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3A4C67),
              ),
            ),
            SizedBox(height: 8),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
                height: 1.4,
              ),
            ),
            SizedBox(height: 16),
            Divider(thickness: 1),
            SizedBox(height: 16),
            _buildPriceText(price),
            SizedBox(height: 16),
            Text(
              'What\'s Included',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF174D31),
              ),
            ),
            SizedBox(height: 12),
            Column(
              children: features
                  .map(
                    (feature) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.check_circle_outline,
                            color: Colors.green,
                            size: 20,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              feature,
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xFF174D31),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 20),
            Divider(thickness: 1),
            SizedBox(height: 16),
            FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => MainNavBarHolderScreen()),
                );
              },
              child: Text('Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildPriceText(String price) {
  // price কে $ এবং বাকি অংশে ভাগ করা
  final regex = RegExp(r'(\$\d+)(.*)');
  final match = regex.firstMatch(price);

  if (match != null) {
    final dollarPart = match.group(1) ?? '';
    final restPart = match.group(2) ?? '';

    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: dollarPart,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF37B874),
            ),
          ),
          TextSpan(
            text: restPart,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF174D31),
            ),
          ),
        ],
      ),
    );
  }

  // যদি regex না মিলে, পুরো price সাধারণ Text হিসেবে দেখানো হবে
  return Text(price);
}
