import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/last_read_card.dart';
import '../widgets/feature_grid.dart';
import '../widgets/list_surah.dart';
import '../widgets/quote.dart';
import '../widgets/bottom_nav.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderWidget(),
              const SizedBox(height: 20),
              const Text(
                'Mari awali hari dengan',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const SizedBox(height: 4),
              const Text(
                'kebaikan dan ketenangan.',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const LastReadCard(),
              const SizedBox(height: 24),
              const Text(
                'Fitur',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const FeatureGrid(),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Jelajahi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Lihat semua →',
                      style: TextStyle(color: Color(0xFF2E6F40)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const SurahListWidget(),
              const SizedBox(height: 24),
              const Text(
                'Inspirasi hari ini',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const QuoteCard(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNav(
        currentIndex: 0,
        onTap: (index) {
          // Aramidon ti navigasion no ma-click ti button
        },
      ),
    );
  }
}