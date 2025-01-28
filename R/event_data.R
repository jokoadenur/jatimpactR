#' Dataset Event
#'
#' Dataset ini berisi informasi tentang berbagai event, termasuk ID unik dan nama event tersebut.
#'
#' @format Sebuah data frame dengan kolom-kolom berikut:
#' \describe{
#'   \item{event_id}{Integer. Identifikasi unik untuk setiap event.}
#'   \item{event_name}{Karakter. Deskripsi nama event, termasuk jenis atau fokusnya.}
#' }
#'
#' @details
#' Dataset ini memberikan contoh data event yang dapat digunakan untuk demonstrasi analisis terkait event
#' atau operasi dalam R. Setiap event memiliki ID unik dan nama deskriptif yang mencakup berbagai kategori
#' seperti olahraga, budaya, bisnis, dan pendidikan. Data ini cocok digunakan untuk berbagai jenis analisis
#' seperti perhitungan dampak event atau pengelompokkan event berdasarkan kategori.
#'
#' @examples
#' # Menampilkan beberapa baris pertama dari dataset
#' head(events)
#'
#' # Memeriksa struktur dataset
#' str(events)
#'
#' # Menyaring event yang berhubungan dengan "Festival"
#' subset(events, grepl("Festival", event_name))
#'
#' @source Sumber data internal
#' @export
events <- data.frame(
  event_id = 1:20,
  event_name = c(
    "Event MotoGP",
    "Konferensi Bisnis Internasional",
    "Pameran Produk Lokal",
    "Festival Musik dan Seni",
    "Pekan Olahraga Nasional (PON)",
    "Karnaval Budaya dan Tradisi",
    "Workshop Teknologi dan Inovasi",
    "Festival Kuliner Nusantara",
    "Event Maraton Internasional",
    "Pameran Pendidikan dan Beasiswa",
    "Pertunjukan Teater dan Tari Tradisional",
    "Expo Properti dan Real Estate",
    "Pameran Kendaraan Elektrik",
    "Festival Film dan Dokumenter",
    "Pameran Buku dan Literasi",
    "Event Balapan Sepeda (Tour)",
    "Simposium Lingkungan dan Keberlanjutan",
    "Festival Laut dan Pariwisata Bahari",
    "Pasar Malam dan UMKM Lokal",
    "Konser Amal dan Penggalangan Dana"
  )
)
