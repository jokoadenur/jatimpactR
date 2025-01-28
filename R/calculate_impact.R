#' Hitung Dampak Ekonomi Berdasarkan Data
#'
#' Fungsi ini menghitung dampak ekonomi berdasarkan data yang diberikan. Dampak dihitung
#' sebagai perkalian antara skor relevansi dan nilai investasi sektor terkait, dan
#' kemudian menjumlahkan dampak dari semua sektor untuk menghasilkan total dampak.
#'
#' @param data Data frame. Data yang berisi informasi mengenai skor relevansi dan investasi
#'             untuk setiap sektor yang terdampak.
#' \describe{
#'   \item{relevance_score}{Numerik. Skor relevansi untuk sektor terdampak.}
#'   \item{investasi}{Numerik. Nilai investasi yang diprediksi untuk setiap sektor.}
#' }
#' @return Sebuah list yang terdiri dari:
#' \describe{
#'   \item{data}{Data frame. Data yang telah ditambahkan kolom baru 'prediksi_dampak' yang
#'               berisi hasil perhitungan dampak untuk masing-masing sektor.}
#'   \item{total_impact}{Numerik. Total dampak yang dihitung dengan menjumlahkan kolom
#'                       'prediksi_dampak'.}
#' }
#' @examples
#' # Contoh penggunaan fungsi calculate_impact
#' impact_result <- calculate_impact(investment_data)
#' print(impact_result$total_impact)
#' @export
calculate_impact <- function(data) {
  # Menambahkan kolom baru untuk dampak yang dihitung (perkalian antara relevance_score dan investasi)
  data$prediksi_dampak <- data$dampak * data$investasi

  # Menghitung total dampak dengan menjumlahkan kolom prediksi_dampak
  total_impact <- sum(data$prediksi_dampak)

  # Mengembalikan data dengan kolom prediksi_dampak dan total dampak
  return(list(data = data, total_impact = total_impact))
}
