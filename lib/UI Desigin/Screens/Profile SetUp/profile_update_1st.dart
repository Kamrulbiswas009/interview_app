import 'dart:io';
import 'package:acied_test/UI%20Desigin/Screens/Profile%20SetUp/profile_update_2nd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import '../../../utlits/asset_paths.dart';

class ProfileUpdate1st extends StatefulWidget {
  const ProfileUpdate1st({super.key});
  static const String name = '/ProfileUpdate1st';

  @override
  State<ProfileUpdate1st> createState() => _ProfileUpdate1stState();
}

class _ProfileUpdate1stState extends State<ProfileUpdate1st> {
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
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e'), backgroundColor: Colors.red),
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
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Russell!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Welcome',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Center(
                child: SvgPicture.asset(
                  AssetPaths.hello1,
                  width: 200,
                  height: 200,
                ),
              ),

              const Text(
                'Upload Your Resume',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 15),
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
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.cloud_upload_outlined,
                              size: 50,
                              color: Colors.green[700],
                            ),
                            const SizedBox(height: 12),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Text(
                                  "Select File",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold, // bold
                                    color: Colors.black,
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
                                const SizedBox(height: 8),

                                if (_pickedFile != null)
                                  Text(
                                    _pickedFile!.path.split('/').last,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                              ],
                            ),
                          ],
                        ),
                ),
              ),
              const SizedBox(height: 30),
              FilledButton(
                onPressed: () {
                  Get.to(() => Page1(step: 1, totalSteps: 3));
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 10),
              FilledButton(
                onPressed: () {},
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(
                    color: Colors.green,
                    width: 1,
                  ), // Green border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Manual Update",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
