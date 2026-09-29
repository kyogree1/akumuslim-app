import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/iconakumuslim.jpeg', // Path disesuaikan dengan nama file
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ), // Tanda koma ditambahkan di sini
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Assalamu\'alaikum',
                  style: TextStyle(color: Colors.black54, fontSize: 13),
                ),
                Text(
                  'Halo, Azka 👋',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black12),
          ),
          child: const Icon(Icons.notifications_none, color: Colors.black87),
        ),
      ],
    );
  }
}