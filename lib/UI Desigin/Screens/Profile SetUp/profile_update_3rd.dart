import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_4nd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Page2 extends StatefulWidget {
  final int step;
  final int totalSteps;
  static const String name = '/Page2';

  const Page2({super.key, required this.step, required this.totalSteps});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String? time;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              ProgressBar(step: widget.step, totalSteps: widget.totalSteps),
              const SizedBox(height: 30),

              Text("Experience", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Description",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 6,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Time",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: time,
                decoration: InputDecoration(
                  hintText: "Time",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: ["1 Year", "2 Year", "3 Year"]
                    .map(
                      (entrees) => DropdownMenuItem(
                        value: entrees,
                        child: Text(entrees),
                      ),
                    )
                    .toList(),
                onChanged: (val) => setState(() => time = val),
              ),
              const SizedBox(height: 20),

              FilledButton(
                onPressed: () {
                  Get.to(() => Page3(step: 3, totalSteps: 3));
                },
                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
