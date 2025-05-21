library(rmarkdown)
library(knitr)
# Configuration
paths <- list(
  rmd = "/lustre/darse/users/3735/ghgsoilproject/rmds/GHG_SOIL_REPORT.Rmd",
  output_dir = "/lustre/darse/users/3735/ghgsoilproject/output/",
  log_dir = "/lustre/darse/users/3735/ghgsoilproject/logs/"
)

# Create necessary directories if missing
dir.create(paths$output_dir, recursive = TRUE, showWarnings = FALSE)
dir.create(paths$log_dir, recursive = TRUE, showWarnings = FALSE)

# Logging
log_file <- file.path(paths$log_dir, paste0("report_log_", Sys.Date(), ".txt"))

log_message <- function(message) {
  timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
  log_entry <- sprintf("[%s] - %s\n", timestamp, message)
  cat(log_entry, file = log_file, append = TRUE)
}

# Generate Report
tryCatch({
  log_message("=== STARTING REPORT GENERATION ===")
  
  output_file <- file.path(
    paths$output_dir,
    paste0("GHG_SOIL_REPORT_", Sys.Date(), ".pdf")
  )
  
  rmarkdown::render(
    input = paths$rmd,
    output_file = output_file,
    output_format = "pdf_document",
    envir = new.env(),
    quiet = TRUE
  )
  
  log_message("=== Report Rendered Successfully ===")
  
}, error = function(e) {
  log_message(paste("FATAL ERROR:", e$message))
  quit(status = 1)
}, finally = {
  log_message("=== Report Generation Completed ===")
})

