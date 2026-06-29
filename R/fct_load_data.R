.data_path <- function() {
  system.file("extdata", "data", package = "streamfind.data")
}

#' get_mass_spec_files
#'
#' @description Gets full paths of all mass spectrometry files (mzML, mzXML)
#' in the streamfind.data package.
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec"),
    pattern = "\\.(mzML|mzXML)$",
    full.names = TRUE,
    recursive = TRUE
  )
}

#' get_mass_spec_wastewater_files
#'
#' @description Gets full paths of wastewater project TOF-MS files (blanks,
#' influent, and ozonated effluent in positive and negative polarity).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_wastewater_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "wastewater"),
    pattern = "\\.mzML$",
    full.names = TRUE
  )
}

#' get_mass_spec_basic_tof_files
#'
#' @description Gets full paths of basic TOF files (centroid mzML, centroid
#' mzXML, and profile mzML formats).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_basic_tof_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "basic_tof"),
    pattern = "\\.(mzML|mzXML)$",
    full.names = TRUE
  )
}

#' get_mass_spec_basic_orbitrap_files
#'
#' @description Gets full paths of basic Orbitrap files (profile mzML and
#' mzXML formats).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_basic_orbitrap_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "basic_orbitrap"),
    pattern = "\\.(mzML|mzXML)$",
    full.names = TRUE
  )
}

#' get_mass_spec_mrm_files
#'
#' @description Gets full paths of MRM (Multiple Reaction Monitoring) files
#' for estrogens, nitrosamines, and environmental standards.
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_mrm_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "mrm"),
    pattern = "\\.mzML$",
    full.names = TRUE,
    recursive = TRUE
  )
}

#' get_mass_spec_mrm_environment_files
#'
#' @description Gets full paths of MRM environment standards files.
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_mrm_environment_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "mrm", "environment"),
    pattern = "\\.mzML$",
    full.names = TRUE
  )
}

#' get_mass_spec_mrm_estrogens_files
#'
#' @description Gets full paths of MRM estrogens files (negative polarity).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_mrm_estrogens_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "mrm", "estrogens"),
    pattern = "\\.mzML$",
    full.names = TRUE
  )
}

#' get_mass_spec_mrm_nitrosamines_files
#'
#' @description Gets full paths of MRM nitrosamines files (positive polarity).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_mass_spec_mrm_nitrosamines_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "mass_spec", "mrm", "nitrosamines"),
    pattern = "\\.mzML$",
    full.names = TRUE
  )
}

#' get_raman_files
#'
#' @description Gets full paths of Raman spectroscopy .asc files (Bevacizumab
#' drug product and blank measurements).
#'
#' @return A character vector of absolute file paths.
#'
#' @export
get_raman_files <- function() {
  d <- .data_path()
  list.files(
    file.path(d, "raman"),
    pattern = "\\.asc$",
    full.names = TRUE
  )
}

#' get_mass_spec_wastewater_suspects_csv
#'
#' @description Gets the path to the wastewater suspects CSV file containing
#' target compounds for screening.
#'
#' @return A character string with the absolute file path.
#'
#' @export
get_mass_spec_wastewater_suspects_csv <- function() {
  d <- .data_path()
  file.path(d, "mass_spec", "wastewater", "suspects.csv")
}

#' get_mass_spec_wastewater_internal_standards_csv
#'
#' @description Gets the path to the wastewater internal standards CSV file.
#'
#' @return A character string with the absolute file path.
#'
#' @export
get_mass_spec_wastewater_internal_standards_csv <- function() {
  d <- .data_path()
  file.path(d, "mass_spec", "wastewater", "internal_standards.csv")
}

#' get_mass_spec_basic_tof_suspects_csv
#'
#' @description Gets the path to the basic TOF suspects CSV file containing
#' target compounds for screening.
#'
#' @return A character string with the absolute file path.
#'
#' @export
get_mass_spec_basic_tof_suspects_csv <- function() {
  d <- .data_path()
  file.path(d, "mass_spec", "basic_tof", "suspects.csv")
}

#' get_mass_spec_basic_tof_internal_standards_csv
#'
#' @description Gets the path to the basic TOF internal standards CSV file.
#'
#' @return A character string with the absolute file path.
#'
#' @export
get_mass_spec_basic_tof_internal_standards_csv <- function() {
  d <- .data_path()
    file.path(d, "mass_spec", "basic_tof", "internal_standards.csv")
}

#' get_mass_spec_mrm_estrogens_csv
#'
#' @description Gets the path to the MRM estrogens CSV file with target and
#' product m/z values for estrogenic compounds.
#'
#' @return A character string with the absolute file path.
#'
#' @export
get_mass_spec_mrm_estrogens_csv <- function() {
  d <- .data_path()
  file.path(d, "mass_spec", "mrm", "estrogens", "ms_spiked_estrogens.csv")
}
