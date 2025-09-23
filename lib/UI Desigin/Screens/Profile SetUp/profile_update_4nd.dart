import 'dart:io';

import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_5th_personal_Interview.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../Widget/text_Filled.dart';

class Page3 extends StatefulWidget {
  final int step;
  final int totalSteps;
  static const String name = '/Page3';

  const Page3({super.key, required this.step, required this.totalSteps});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String? degree;
  File? _pickedFile;
  bool _isLoading = false;

  Future<void> _pickFile() async {
    setState(() => _isLoading = true);
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (result != null) {
        setState(() {
          _pickedFile = File(result.files.single.path!);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('File selected successfully!'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error'), backgroundColor: Colors.red),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              ProgressBar(step: widget.step, totalSteps: widget.totalSteps),
              SizedBox(height: 26),

              Text(
                'Education & Certificate',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 40),

              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 60,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Institute Name",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),

                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 60,
                      child: DropdownButtonFormField<String>(
                        value: degree,
                        decoration: InputDecoration(
                          labelText: "Degree",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                        items: ["CSE", "MSc", "BBA"]
                            .map(
                              (entrees) => DropdownMenuItem(
                                value: entrees,
                                child: Text(entrees),
                              ),
                            )
                            .toList(),
                        onChanged: (val) => setState(() => degree = val),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.add, color: Colors.black54, size: 24),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              const Text(
                'Upload a Certificate',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 8),
              GestureDetector(
                onTap: _pickFile,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF8FAFC),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFE2E8F0),
                      width: 1.5,
                    ),
                  ),
                  child: _isLoading
                      ? const Center(child: CircularProgressIndicator())
                      : Column(
                          children: [
                            Icon(
                              Icons.cloud_upload_outlined,
                              size: 50,
                              color: Colors.green[700],
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              "Select File",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              "Supported formats: PDF",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[600],
                              ),
                            ),
                            //spread ---oprator
                            if (_pickedFile != null) ...[
                              const SizedBox(height: 8),
                              Text(
                                _pickedFile!.path.split('/').last,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.add, color: Colors.black54, size: 24),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Text_Filed_Heading(label: 'Awards'),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Add',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.add, color: Colors.black54, size: 24),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileUpdate5thPersonalInterview(),
                    ),
                  );
                },
                child: const Text(
                  'Continue',
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

class ProgressBar extends StatelessWidget {
  final int step;
  final int totalSteps;

  const ProgressBar({super.key, required this.step, required this.totalSteps});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        return Expanded(
          child: Container(
            height: 6,
            margin: const EdgeInsets.symmetric(horizontal: 3),
            decoration: BoxDecoration(
              color: index < step ? Colors.green : Colors.grey[300],
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        );
      }),
    );
  }
}
