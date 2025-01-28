#' Menghitung Dampak Event Berdasarkan ID
#'
#' Fungsi ini menghitung dampak dari sebuah event berdasarkan ID uniknya.
#' Setiap event akan memiliki nilai relevansi untuk berbagai sektor yang terpengaruh.
#'
#' @param event_id Integer. ID unik untuk event yang ingin dihitung dampaknya.
#'   Event ID ini digunakan untuk menentukan skor relevansi sektor-sektor yang terdampak.
#' @return Data frame yang berisi sektor-sektor yang terdampak beserta nilai skor relevansi masing-masing sektor.
#'   Nilai relevansi menggambarkan seberapa besar dampak yang diprediksi terhadap sektor tersebut.
#'
#' @details
#' Fungsi ini menerima ID event dan mengembalikan data frame yang berisi sektor-sektor yang terdampak
#' oleh event tersebut beserta nilai skor relevansi yang menunjukkan dampak ekonomi pada sektor-sektor tersebut.
#' Skor relevansi ini dapat digunakan untuk analisis lebih lanjut atau perhitungan dampak ekonomi.
#'
#' Skor relevansi akan bervariasi tergantung pada event ID yang dimasukkan.
#'
#' @examples
#' # Contoh penggunaan:
#' impact <- event_impact_by_id(1)  # Menghitung dampak untuk event ID 1 (contoh: MotoGP)
#' print(impact)
#'
#' @export
event_impact_by_id <- function(event_id) {
  # Data dummy untuk sektor-sektor dan skor relevansi
  sektor_data <- data.frame(
    sektor = c("Pertanian, Kehutanan, dan Perikanan",
               "Pertambangan dan Penggalian",
               "Industri Pengolahan",
               "Pengadaan Listrik, Gas, dan Produksi Es",
               "Pengadaan Air, Pengelolaan Sampah, dan Daur Ulang",
               "Konstruksi",
               "Perdagangan Besar dan Eceran",
               "Transportasi dan Pergudangan",
               "Penyediaan Akomodasi dan Makan Minum",
               "Informasi dan Komunikasi",
               "Jasa Keuangan dan Asuransi",
               "Real Estate",
               "Jasa Perusahaan",
               "Administrasi Pemerintahan, Pertahanan, Jaminan Sosial",
               "Jasa Pendidikan",
               "Jasa Kesehatan dan Kegiatan Sosial",
               "Jasa Lainnya"),
    normalized_BL = c(0.997043195, 0.956822041, 1.956575237, 1.562104266, 0.701229011, 0.813871009, 1.272608826,
                      1.031756771, 0.835533371, 1.105050254, 0.948889544, 0.863157588, 1.016866096, 0.714978613,
                      0.714208512, 0.735188252, 0.774117415),
    normalized_FL = c(0.841134062, 0.84551283, 1.056226561, 1.375032459, 0.976020113, 1.100694998, 0.908881314,
                      1.000870825, 1.027196089, 1.063418194, 0.870625684, 0.845672189, 1.081028865, 0.993177121,
                      0.966019538, 1.058199044, 0.990290115),
    dampak = c(1.05487637724, 0.00167364397, 0.07880801952, 0.00832364987, 0.00010738680, 0.00159046248,
               0.02723836674, 0.01534638171, 0.00227010834, 0.00256172648, 0.00728023519, 0.00145790012,
               0.00437718649, 0.00016787144, 0.00009684447, 0.00073124461, 0.00303590344),
    relevance_score = numeric(17)
  )

  # Menentukan skor relevansi berdasarkan event_id
  sektor_data$relevance_score <- switch(
    as.character(event_id),
    "1" = c(0.8, 0.7, 0.5, 0.4, 0.6, 0.9, 0.7, 0.6, 1.0, 0.5, 0.7, 0.8, 0.7, 0.8, 0.6, 0.9, 0.8),  # Event MotoGP
    "2" = c(0.7, 0.5, 0.8, 0.6, 0.4, 0.7, 0.8, 0.6, 0.9, 0.7, 0.8, 0.7, 0.6, 0.8, 0.7, 0.7, 0.9),  # Konferensi Bisnis Internasional
    "3" = c(0.9, 0.6, 0.8, 0.5, 0.6, 0.8, 0.7, 0.9, 1.0, 0.6, 0.7, 0.8, 0.7, 0.8, 0.7, 0.8, 0.9),  # Pameran Produk Lokal
    "4" = c(0.5, 0.3, 0.7, 0.5, 0.4, 0.7, 0.8, 0.6, 0.9, 0.5, 0.7, 0.8, 0.6, 0.7, 0.6, 0.8, 0.9),  # Festival Musik dan Seni
    "5" = c(0.6, 0.8, 0.5, 0.7, 0.6, 0.9, 0.7, 0.8, 1.0, 0.8, 0.6, 0.8, 0.7, 0.8, 0.9, 0.7, 0.8),  # Pekan Olahraga Nasional (PON)
    "6" = c(0.8, 0.7, 0.9, 0.6, 0.7, 0.8, 0.9, 0.8, 0.9, 0.7, 0.8, 0.9, 0.7, 0.6, 0.8, 0.7, 0.8),  # Karnaval Budaya dan Tradisi
    "7" = c(0.6, 0.5, 0.7, 0.8, 0.6, 0.9, 0.8, 0.7, 1.0, 0.8, 0.6, 0.7, 0.8, 0.7, 0.9, 0.8, 0.9),  # Workshop Teknologi dan Inovasi
    "8" = c(0.7, 0.6, 0.7, 0.8, 0.5, 0.8, 0.6, 0.9, 1.0, 0.7, 0.9, 0.8, 0.8, 0.7, 0.8, 0.7, 0.9),  # Festival Kuliner Nusantara
    "9" = c(0.7, 0.8, 0.9, 0.6, 0.8, 0.7, 0.8, 0.6, 1.0, 0.9, 0.7, 0.7, 0.8, 0.7, 0.8, 0.7, 0.9),  # Event Maraton Internasional
    "10" = c(0.8, 0.6, 0.7, 0.5, 0.7, 0.8, 0.7, 0.9, 1.0, 0.6, 0.7, 0.8, 0.9, 0.6, 0.8, 0.7, 0.8),  # Pameran Pendidikan dan Beasiswa
    "11" = c(0.6, 0.5, 0.6, 0.7, 0.6, 0.7, 0.8, 0.8, 0.9, 0.7, 0.6, 0.7, 0.7, 0.7, 0.7, 0.8, 0.9),  # Pertunjukan Teater dan Tari Tradisional
    "12" = c(0.8, 0.6, 0.7, 0.5, 0.8, 0.7, 0.8, 0.7, 1.0, 0.6, 0.7, 0.8, 0.7, 0.8, 0.6, 0.9, 0.8),  # Expo Properti dan Real Estate
    "13" = c(0.7, 0.5, 0.7, 0.6, 0.5, 0.7, 0.8, 0.7, 0.9, 0.6, 0.8, 0.7, 0.7, 0.6, 0.9, 0.8, 0.7),  # Pameran Kendaraan Elektrik
    "14" = c(0.9, 0.8, 0.7, 0.5, 0.6, 0.9, 0.7, 0.9, 1.0, 0.8, 0.7, 0.9, 0.8, 0.8, 0.7, 0.8, 0.9),  # Festival Film dan Dokumenter
    "15" = c(0.8, 0.6, 0.5, 0.6, 0.7, 0.8, 0.6, 0.8, 0.9, 0.7, 0.8, 0.7, 0.7, 0.6, 0.9, 0.8, 0.7),  # Pameran Buku dan Literasi
    "16" = c(0.7, 0.5, 0.7, 0.8, 0.6, 0.7, 0.8, 0.6, 1.0, 0.6, 0.8, 0.8, 0.7, 0.8, 0.6, 0.8, 0.8),  # Event Balapan Sepeda (Tour de XYZ)
    "17" = c(0.9, 0.6, 0.8, 0.5, 0.7, 0.8, 0.7, 0.6, 1.0, 0.7, 0.8, 0.7, 0.9, 0.6, 0.8, 0.9, 1.0),  # Simposium Lingkungan dan Keberlanjutan
    "18" = c(0.5, 0.6, 0.9, 0.7, 0.6, 0.8, 0.7, 0.8, 1.0, 0.9, 0.7, 0.8, 0.8, 0.6, 0.7, 0.8, 0.9),  # Festival Laut dan Pariwisata Bahari
    "19" = c(0.7, 0.8, 0.6, 0.5, 0.8, 0.7, 0.6, 0.9, 0.8, 0.9, 0.7, 0.8, 0.7, 0.8, 0.9, 0.8, 0.7),  # Pasar Malam dan UMKM Lokal
    "20" = c(0.6, 0.5, 0.8, 0.9, 0.7, 0.8, 0.7, 0.9, 1.0, 0.8, 0.7, 0.8, 0.7, 0.8, 0.9, 0.9, 0.9),   # Konser Amal dan Penggalangan Dana
    stop("ID event tidak valid. Harap masukkan event_id antara 1 dan 19.")
  )

  # threshold similarity
  impacted_sectors <- sektor_data[sektor_data$relevance_score >= 0.8, ]
  return(impacted_sectors)
}
