import 'package:flutter/material.dart';

import '../../utlits/asset_paths.dart';

class JobsCard extends StatelessWidget {
  const JobsCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.onButtonTap,
  });

  final String imagePath;
  final String title;
  final String subtitle;
  final VoidCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        child: Row(
          children: [
            SizedBox(
              width: 70,
              height: 70,
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title.replaceFirst(' Interview', '\nInterview'),
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      height: 1.3,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    subtitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: onButtonTap,
                child: Image.asset(
                  AssetPaths.arrowIcon,
                  height: 32,
                  width: 32,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
