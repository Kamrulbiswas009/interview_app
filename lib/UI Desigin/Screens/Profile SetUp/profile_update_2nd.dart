import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_3rd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page1 extends StatefulWidget {
  final int step;
  final int totalSteps;

  const Page1({super.key, required this.step, required this.totalSteps});
  static const String name = '/Page1';

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String? selectedCountry;
  final List<String> options = [
    'UI/Ux Design',
    'Frontend Development',
    'Backend Development',
    'Flutter Development',
  ];
  final List<String> selected = [];
  bool open = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Row(
                children: List.generate(widget.totalSteps, (index) {
                  return Expanded(
                    child: Container(
                      height: 6,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        color: index < widget.step
                            ? Colors.green
                            : Colors.grey[300],
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 30),

              Text("About Me", style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 30),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "City",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter City",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                ),
              ),
              const SizedBox(height: 20),

              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Country",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: selectedCountry,
                decoration: InputDecoration(
                  hintText: "Select Country",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 14),
                ),
                items: ["Bangladesh", "India", "Nepal"]
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (val) => setState(() => selectedCountry = val),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Skills",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 8),
              InkWell(
                onTap: () => setState(() => open = !open),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Select options',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Icon(open ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                    ],
                  ),
                ),
              ),
              if (open)
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    children: options.map((o) {
                      bool sel = selected.contains(o);
                      return ListTile(
                        title: Text(o),
                        trailing: sel
                            ? const Icon(Icons.check, color: Colors.green)
                            : null,
                        onTap: () => setState(() {
                          if (sel) {
                            selected.remove(o);
                          } else {
                            selected.add(o);
                          }
                          open = false;
                        }),
                      );
                    }).toList(),
                  ),
                ),
              Container(
                width: double.infinity,
                child: Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.start,

                  children: selected.map((v) {
                    return Chip(
                      label: Text(
                        v,
                        style: const TextStyle(color: Colors.white),
                      ),
                      backgroundColor: const Color(0xFF37B874),
                      deleteIconColor: Colors.white,
                      onDeleted: () => setState(() => selected.remove(v)),
                    );
                  }).toList(),
                ),
              ),

              const SizedBox(height: 30),

              FilledButton(
                onPressed: () {
                  Get.to(() => Page2(step: 2, totalSteps: 3));
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
