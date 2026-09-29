class Surah {
  const Surah({required this.number, required this.name, required this.arabic, required this.translation, required this.verses, required this.revelation, required this.juz});
  final int number; final String name; final String arabic; final String translation; final int verses; final String revelation; final String juz;
  bool matches(String query) => name.toLowerCase().contains(query) || translation.toLowerCase().contains(query) || number.toString() == query;
}
