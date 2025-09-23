import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_6th_chosse_your_plan.dart';
import 'package:flutter/material.dart';

import '../../../utlits/asset_paths.dart';
import '../../Widget/jobs_card.dart';

class ProfileUpdate5thPersonalInterview extends StatefulWidget {
  const ProfileUpdate5thPersonalInterview({super.key});

  final List<Map<String, String>> jobs = const [
    {
      "title": "Software Developer Interview",
      "subtitle": "7 Job Title",
      "image": AssetPaths.sDeveloper,
    },
    {
      "title": "Product Manager Interview",
      "subtitle": "7 Job Title",
      "image": AssetPaths.pManager,
    },
    {
      "title": "Data Scientist Interview",
      "subtitle": "7 Job Title",
      "image": AssetPaths.dScientist,
    },
    {
      "title": "Ux Designer Interview",
      "subtitle": "7 Job Title",
      "image": AssetPaths.uxDesigner,
    },
  ];

  @override
  State<ProfileUpdate5thPersonalInterview> createState() =>
      _ProfileUpdate5thPersonalInterviewState();
}

class _ProfileUpdate5thPersonalInterviewState
    extends State<ProfileUpdate5thPersonalInterview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Text(
            'Personalized Interviews',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: widget.jobs.length,
              padding: const EdgeInsets.all(8),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: JobsCard(
                    imagePath: widget.jobs[index]["image"]!,
                    title: widget.jobs[index]["title"]!,
                    subtitle: widget.jobs[index]["subtitle"]!,
                    onButtonTap: () {},
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: FilledButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProfileUpdate6thChosseYourPlan(),
                  ),
                );
              },
              child: Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}
