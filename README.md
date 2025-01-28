![Build Status](https://img.shields.io/badge/build-passing-brightgreen.svg)
![CRAN Version](https://img.shields.io/badge/CRAN-7.3.2-brightgreen)
![Open Issues](https://img.shields.io/badge/open%20issues-0-brightgreen)
![License](https://img.shields.io/badge/License-MIT-blue)

![WhatsApp Image 2025-01-28 at 17 48 14](https://github.com/user-attachments/assets/831d62b6-d9fc-4afd-9e8d-b65caa306737)


# jatimpactR

`jatimpactR` is an R package designed to analyze the economic impact of events on specific regions in East Java, Indonesia. It uses methods such as Backward Linkage, Forward Linkage, and Multiplier Effects based on the Input-Output Table of East Java (2016). With this package, users can easily simulate the impact of events by estimating investment or consumption in different sectors and automatically getting a prediction of how the event will affect the economy of the selected region.

# features

Run the `jatimpactR` function in R to start the analysis.
Choose the ID of the event you want to analyze.
Input estimated investment or consumption figures that reflect the monetary flow due to the event in various affected sectors.
Get an automatic prediction of the economic impact of the selected event in your region.

## Installation

To install the `jatimpactR` package, run the following code in your R script:

```R
# Install package from GitHub
devtools::install_github("jokoadenur/jatimpactR")
```

> **Note:** If prompted to update certain packages (options like 1. All, 2. CRAN, etc.), simply press **ENTER** to skip. Wait until the installation process is complete and the message `DONE (jatimpactR)` appears.

After installation, activate the package with the following code:

```R
# Activate the package
library(jatimpactR)
```

## Usage

After loading the package, simply run the jatimpactR() function in your R script. This will allow you to select the event ID and input your estimated values for investment or consumption, and the system will automatically calculate the economic impact of the event in your selected region.

```R
jatimpactr()
```

### Simulation:
   Simple data with additional columns:
   ```R
   jatimpactr() #run
       [1] "Berikut Daftar Events yang Mungkin terjadi di Wilayah Anda:"
       event_id                              event_name
    1         1                            Event MotoGP
    2         2         Konferensi Bisnis Internasional
    3         3                    Pameran Produk Lokal
    4         4                 Festival Musik dan Seni
    5         5           Pekan Olahraga Nasional (PON)
    6         6             Karnaval Budaya dan Tradisi
    7         7          Workshop Teknologi dan Inovasi
    8         8              Festival Kuliner Nusantara
    9         9             Event Maraton Internasional
    10       10         Pameran Pendidikan dan Beasiswa
    11       11 Pertunjukan Teater dan Tari Tradisional
    12       12           Expo Properti dan Real Estate
    13       13              Pameran Kendaraan Elektrik
    14       14            Festival Film dan Dokumenter
    15       15               Pameran Buku dan Literasi
    16       16             Event Balapan Sepeda (Tour)
    17       17  Simposium Lingkungan dan Keberlanjutan
    18       18     Festival Laut dan Pariwisata Bahari
    19       19              Pasar Malam dan UMKM Lokal
    20       20       Konser Amal dan Penggalangan Dana
    Masukkan id Jenis Event/Momentum: 8
    [1] "Prediksi Sektor terdampak:"
    [1] "Pengadaan Listrik, Gas, dan Produksi Es"
    [2] "Konstruksi"                             
    [3] "Transportasi dan Pergudangan"           
    [4] "Penyediaan Akomodasi dan Makan Minum"   
    [5] "Jasa Keuangan dan Asuransi"             
    [6] "Real Estate"                            
    [7] "Jasa Perusahaan"                        
    [8] "Jasa Pendidikan"                        
    [9] "Jasa Lainnya"                           
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Pengadaan Listrik, Gas, dan Produksi Es': 2
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Konstruksi': 1.2
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Transportasi dan Pergudangan': 3
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Penyediaan Akomodasi dan Makan Minum': 4
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Jasa Keuangan dan Asuransi': 1
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Real Estate': 22
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Jasa Perusahaan': 1
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Jasa Pendidikan': 2
    Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) 'Jasa Lainnya': 3
    Total Prediksi Dampak:  0.1267081  Jutaan Rp
   ```
### Ending statements:
  This package makes it easy for users to assess the economic consequences of various events using the Input-Output model specific to East Java’s economy.
