#' Ambil Data Investasi atau Konsumsi untuk Sektor Terdampak
#'
#' Fungsi ini meminta input nilai investasi atau konsumsi untuk sektor-sektor yang terdampak
#' dan menambahkannya ke dalam data frame yang diberikan sebagai kolom baru `investasi`.
#'
#' @param impacted_sectors Data frame. Harus mencakup kolom `sektor` (karakter) yang berisi
#'   nama sektor-sektor yang akan dimasukkan prediksi nilai investasi atau konsumsi.
#' @return Data frame. Data frame `impacted_sectors` yang diberikan, dengan tambahan kolom
#'   `investasi` yang berisi nilai investasi atau konsumsi yang diprediksi (dalam juta IDR).
#'
#' @details
#' Fungsi ini akan meminta input dari pengguna untuk memasukkan nilai investasi atau konsumsi
#' yang diprediksi untuk setiap sektor yang tercantum dalam kolom `sektor` pada data frame input.
#' Nilai-nilai ini kemudian akan ditambahkan sebagai kolom baru `investasi`.
#'
#' @examples
#' # Contoh penggunaan:
#' sectors <- data.frame(sektor = c("Pertanian", "Industri", "Pariwisata"))
#' investment_data <- get_investment_data(sectors)
#' head(investment_data)
#'
#' @export
get_investment_data <- function(impacted_sectors) {
  # Menambahkan kolom untuk prediksi nilai investasi/konsumsi pada setiap sektor
  impacted_sectors$investasi <- sapply(impacted_sectors$sektor, function(sektor) {
    # Meminta input nilai investasi/konsumsi untuk setiap sektor
    as.numeric(readline(paste("Prediksi Nilai Investasi/Konsumsi sektor (dalam jutaan Rp) '", sektor, "': ", sep = "")))
  })

  return(impacted_sectors)
}
