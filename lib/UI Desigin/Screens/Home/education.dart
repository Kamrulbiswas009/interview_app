import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_6th_chosse_your_plan.dart';
import 'package:flutter/material.dart';

import '../../../utlits/asset_paths.dart';
import '../../Widget/jobs_card.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final List<Map<String, String>> jobs = [
    {
      "title": "Software Developer ",
      "subtitle": "11 Job Title",
      "image": AssetPaths.sDeveloper,
    },
    {
      "title": "Product Manager ",
      "subtitle": "7 Job Title",
      "image": AssetPaths.pManager,
    },
    {
      "title": "Data Scientist ",
      "subtitle": "9 Job Title",
      "image": AssetPaths.dScientist,
    },
    {
      "title": "UX Designer ",
      "subtitle": "5 Job Title",
      "image": AssetPaths.uxDesigner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 60),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: jobs.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            jobs[index]['image']!,
                            width: 80,
                            height: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${jobs[index]['title']!}\nInterview",
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5,
                                ),
                              ),

                              const SizedBox(height: 8),
                              Text(
                                jobs[index]['subtitle']!,
                                style: const TextStyle(fontSize: 14),
                              ),

                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 100,
                                  height: 40,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.yellow[600],
                                      side: BorderSide(
                                        color: Colors.blue,
                                        width: 2,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      minimumSize: Size(
                                        double.infinity,
                                        40,
                                      ), // Button height
                                    ),
                                    child: Text(
                                      'Resume',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          Text(
            'Available Mock Interviews',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 16),
          //spared
          ...jobs.map(
            (job) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: JobsCard(
                imagePath: job["image"]!,
                title: "${job["title"]!}\nInterview",

                subtitle: job["subtitle"]!,
                onButtonTap: () {},
              ),
            ),
          ),
          const SizedBox(height: 16),
          FilledButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const ProfileUpdate6thChosseYourPlan(),
                ),
              );
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}
