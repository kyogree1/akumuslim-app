import 'package:flutter/material.dart';

const _green = Color(0xFF176B5B);
const _cream = Color(0xFFF7F5EE);

class QuranPage extends StatelessWidget {
  const QuranPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: _cream,
    appBar: AppBar(
      title: const Text(
        'Al-Qur\'an',
        style: TextStyle(fontWeight: FontWeight.w700),
      ),
      backgroundColor: _cream,
    ),
    body: ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: _surahs.length,
      separatorBuilder: (_, _) => const SizedBox(height: 10),
      itemBuilder: (_, index) {
        final surah = _surahs[index];
        return ListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          leading: CircleAvatar(
            backgroundColor: const Color(0xFFE1F0E8),
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                color: _green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            surah.$1,
            style: const TextStyle(fontWeight: FontWeight.w700),
          ),
          subtitle: Text(surah.$2),
          trailing: Text(
            surah.$3,
            textDirection: TextDirection.rtl,
            style: const TextStyle(fontSize: 22, color: _green),
          ),
        );
      },
    ),
  );
}

const _surahs = [
  ('Al-Fatihah', 'Pembuka • 7 ayat', 'الفاتحة'),
  ('Al-Baqarah', 'Sapi Betina • 286 ayat', 'البقرة'),
  ('Ali Imran', 'Keluarga Imran • 200 ayat', 'آل عمران'),
  ('An-Nisa', 'Wanita • 176 ayat', 'النساء'),
  ('Al-Maidah', 'Hidangan • 120 ayat', 'المائدة'),
];
