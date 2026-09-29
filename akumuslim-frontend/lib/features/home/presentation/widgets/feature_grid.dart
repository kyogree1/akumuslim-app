import 'package:flutter/material.dart';

class FeatureGrid extends StatelessWidget {
  const FeatureGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildFeatureItem(
          icon: Icons.menu_book,
          title: 'Al-Qur\'an',
          subtitle: 'Baca surah',
          bgColor: const Color(0xFFE2F0EA),
          iconColor: const Color(0xFF2E6F40),
        ),
        const SizedBox(width: 12),
        _buildFeatureItem(
          icon: Icons.bookmark_border,
          title: 'Bookmark',
          subtitle: '0 tersimpan',
          bgColor: const Color(0xFFFFF3E0),
          iconColor: const Color(0xFFE67E22),
        ),
        const SizedBox(width: 12),
        _buildFeatureItem(
          icon: Icons.note_alt_outlined,
          title: 'Catatan',
          subtitle: '0 catatan',
          bgColor: const Color(0xFFF0EBF9),
          iconColor: const Color(0xFF8E44AD),
        ),
      ],
    );
  }

  Widget _buildFeatureItem({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color bgColor,
    required Color iconColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, color: iconColor, size: 28),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
            const SizedBox(height: 2),
            Text(
              subtitle,
              style: const TextStyle(color: Colors.black45, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}