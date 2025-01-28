#' jatimpactr untuk Prediksi Dampak Ekonomi
#'
#' Fungsi ini memandu pengguna melalui proses prediksi dampak ekonomi, mulai dari
#' memasukkan ID event, menampilkan sektor terdampak, meminta input nilai investasi,
#' hingga menghitung total prediksi dampak.
#'
#' @return Sebuah list yang terdiri dari:
#' \describe{
#'   \item{impacted_sectors}{Data frame. Informasi sektor-sektor yang terdampak.}
#'   \item{investment_data}{Data frame. Informasi nilai investasi yang diinput oleh pengguna untuk tiap sektor terdampak.}
#'   \item{impact_result}{List. Hasil perhitungan dampak, termasuk total prediksi dampak.}
#' }
#' @examples
#' # Menjalankan fungsi untuk memprediksi dampak ekonomi
#' hasil_akhir <- jatimpactr()
#' print(hasil_akhir)
#' @export
jatimpactr <- function() {
  print("Berikut Daftar Events yang Mungkin terjadi di Wilayah Anda:")
  print(events)
  # Instruksi A: Meminta input event_id dari pengguna
  event_id <- as.numeric(readline("Masukkan id Jenis Event/Momentum: "))

  # Menampilkan sektor yang terdampak untuk event_id yang dimasukkan
  impacted_sectors <- event_impact_by_id(event_id)
  print("Prediksi Sektor terdampak:")
  print(impacted_sectors[, 1])

  # Instruksi B: Meminta nilai investasi untuk setiap sektor terdampak
  investment_data <- get_investment_data(impacted_sectors)

  # Instruksi C: Menghitung prediksi dampak dari investasi yang diinput pengguna
  impact_result <- calculate_impact(investment_data)

  # Menampilkan total dampak
  cat("Total Prediksi Dampak: ", impact_result$total_impact, " Jutaan Rp")
}
