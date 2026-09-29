import 'package:flutter/material.dart';

class SurahListWidget extends StatelessWidget {
  const SurahListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final surahs = [
      {'no': '1', 'name': 'Al-Fatihah', 'count': '7 ayat'},
      {'no': '2', 'name': 'Al-Baqarah', 'count': '286 ayat'},
      {'no': '3', 'name': 'Ali Imran', 'count': '200 ayat'},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: surahs.map((surah) {
          return Container(
            width: 120,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE2F0EA),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    surah['no']!,
                    style: const TextStyle(
                      color: Color(0xFF2E6F40),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  surah['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  surah['count']!,
                  style: const TextStyle(color: Colors.black45, fontSize: 12),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}