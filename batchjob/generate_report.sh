#!/bin/bash
# ================================================
# GHG Report Generator
# ================================================

# 1. Set Library Path (fixes libgfortran.so.5 issue)
export LD_LIBRARY_PATH="/opt/shared/gcc/11.2.0/lib64:/opt/shared/r/4.1.3/lib64:$LD_LIBRARY_PATH"

# 2. Configuration
RSCRIPT="/opt/shared/r/4.1.3/bin/Rscript"
RMD_PATH="/lustre/darse/users/3735/ghgsoilproject/rmds/GHG_SOIL_REPORT.Rmd"
OUTPUT_DIR="/lustre/darse/users/3735/ghgsoilproject/output/"
LOG_DIR="/lustre/darse/users/3735/ghgsoilproject/logs/"
EMAIL_INFO="asritha@udel.edu"

# 3. Create Required Directories if Not Present
mkdir -p "$OUTPUT_DIR" "$LOG_DIR"

# 4. Logging
LOG_FILE="${LOG_DIR}report_log_$(date +%Y-%m-%d).txt"
log() {
    echo "[$(date +'%Y-%m-%d %H:%M:%S')] - $1" >> "$LOG_FILE"
}

# 5. Generate Report
OUTPUT_FILE="${OUTPUT_DIR}GHG_SOIL_REPORT_$(date +%Y-%m-%d).pdf"
log "Starting report generation..."
$RSCRIPT -e "rmarkdown::render('$RMD_PATH', output_file='$OUTPUT_FILE')" >> "$LOG_FILE" 2>&1

# 6. Verify and Email Report
if [ -s "$OUTPUT_FILE" ]; then
    log "SUCCESS: Report generated ($(du -h "$OUTPUT_FILE" | cut -f1))"
    echo "Report attached" | mailx -s "GHG Report $(date +%Y-%m-%d)" -a "$OUTPUT_FILE" "$EMAIL_INFO"
    log "Email sent to $EMAIL_INFO"
    
    # Delete the report after sending the email
    rm -f "$OUTPUT_FILE"
    log "Report deleted after email."
else
    log "ERROR: Report generation failed."
fi

# 7. Final Status
log "Report Generation Completed"

