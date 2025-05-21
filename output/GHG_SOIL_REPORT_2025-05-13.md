---
title: "GHG Soil Daily Analysis Report"
author: "Asritha Polu"
date: "May 13, 2025"
output:
  pdf_document:
    toc: true
    number_sections: true
    latex_engine: pdflatex
    keep_md: true
    extra_dependencies: ["booktabs", "longtable", "caption", "float", "wrapfig", "colortbl", "xcolor", "multirow"]
    includes:
      in_header: preamble.tex

knitr:
  opts_chunk:
    echo: false     
    warning: false  
    message: false 
    results: 'hide' 
    fig.show: 'asis' 
---



## 1. Load and Process Data


```
## Number of rows in final_data: 101
```
## 2.Checking Valid & Invalid
\begin{table}[!h]

\caption{\label{tab:check-invalid}Summary of Invalid or Missing Rows}
\centering
\begin{tabular}[t]{>{}l|r|r}
\hline
Row Type & Count & Percentage (\%)\\
\hline
\textbf{\cellcolor{gray!6}{Valid Row}} & \cellcolor{gray!6}{100} & \cellcolor{gray!6}{100}\\
\hline
\multicolumn{3}{l}{\textsuperscript{a} 'Has -9999 Only' indicates rows with placeholder values (-9999), but no other missing data.}\\
\end{tabular}
\end{table}

```
## Rows after filtering missing and -9999 values: 100
```


## 3. Sensor Failures

\begin{table}[!h]

\caption{\label{tab:sensor-failures}Monthly Summary of Rows with -9999 in Specific Columns}
\centering
\begin{tabular}[t]{>{}l|r|r|r|r}
\hline
MonthYear & TotalRows & RowsWith\_One\_Column & RowsWith\_Multiple\_Columns & RowsWith\_All\_Columns\\
\hline
\textbf{\cellcolor{gray!6}{2025-04}} & \cellcolor{gray!6}{100} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{0}\\
\hline
\end{tabular}
\end{table}

## 4. Time Gap Categorization & Flagging

```
## [1] DateTime     TimeDiff_min GapCategory  TimeGapFlag 
## <0 rows> (or 0-length row.names)
```

## 5. Summary & Visualization


```
## [1] "Skewness of TimeDiff_min: NaN"
```

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/summary-1.pdf)<!-- --> 


## 6. R2 Analysis 
\begin{table}[!h]

\caption{\label{tab:r2 analysis}Summary of R² Values for CO2 Flux (FCO2)}
\centering
\begin{tabular}[t]{r|r|r|r|r}
\hline
Total Records & R² >= 0.75 & R² < 0.75 & Percentage >= 0.75 & Percentage < 0.75\\
\hline
\cellcolor{gray!6}{100} & \cellcolor{gray!6}{100} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{100} & \cellcolor{gray!6}{0}\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/r2 analysis-1.pdf)<!-- --> 
## 7. CV Analysis 

\begin{table}

\caption{\label{tab:cv analysis}Summary of CO2 Flux CV Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO2 Flux CV Flag & Count & Percentage\\
\hline
Acceptable & 83 & 83\\
\hline
Issue & 1 & 1\\
\hline
Plausible & 16 & 16\\
\hline
\end{tabular}
\end{table}

\begin{table}

\caption{\label{tab:cv analysis}Summary of N2O Flux CV Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
N2O Flux CV Flag & Count & Percentage\\
\hline
Acceptable & 31 & 31\\
\hline
Issue & 50 & 50\\
\hline
Plausible & 19 & 19\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/cv analysis-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/cv analysis-2.pdf)<!-- --> 
# CO2 and N2O flux CVs are classified as follows: **Ideal** (\(< 0.5\)), **Acceptable** (\(0.5 - 2\)), **Plausible** (\(2 - 3\)), and **Issue** (\(> 3\)), based on the level of variability in the measurements.

## 8. Flux Control

\begin{table}

\caption{\label{tab:flux-quality-control}Summary of CO2 Flux Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO Flux Flag & Count & Percentage\\
\hline
Very Low (<100) & 100 & 100\\
\hline
\end{tabular}
\end{table}

\begin{table}

\caption{\label{tab:flux-quality-control}Summary of N2O Flux Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
NO Flux Flag & Count & Percentage\\
\hline
Below Detection (<0.01) & 22 & 22\\
\hline
Negative & 36 & 36\\
\hline
Plausible & 42 & 42\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/flux-quality-control-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-13_files/figure-latex/flux-quality-control-2.pdf)<!-- --> 

# CO2 flux flags are classified as **Missing**, **Negative (< 0)**, **Very Low (< 100)**, **Plausible (100 - 4000)**, and **Extremely High (> 4000)**, with units in **mg C m<sup>-2</sup> day<sup>-1</sup>.  

# N2O flux flags are classified as **Missing**, **Negative (< 0)**, **Below Detection (< 0.01)**, **Plausible (0.01 - 5)**, and **Extremely High (> 5)**, with units in **mg N m<sup>-2</sup> day<sup>-1</sup>.




