# Struktur aplikasi Flutter

```text
lib/
├── core/
│   └── router/                 # Navigasi aplikasi
├── features/
│   ├── home/
│   │   ├── data/
│   │   │   ├── datasources/    # Data lokal atau data dari API
│   │   │   └── models/         # Model khusus fitur home
│   │   └── presentation/
│   │       ├── pages/          # Halaman fitur
│   │       ├── theme/          # Warna atau style khusus fitur
│   │       └── widgets/        # Komponen UI fitur
│   └── quran/
│       └── presentation/
│           └── pages/
└── main.dart                   # Entry point aplikasi
```

Tambahkan folder `repositories`, `services`, atau `shared` hanya saat sudah ada
implementasi yang memerlukannya. Ini menjaga struktur proyek tetap ringkas.
