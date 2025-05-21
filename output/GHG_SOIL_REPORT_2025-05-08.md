---
title: "GHG Soil Daily Analysis Report"
author: "Asritha Polu"
date: "May 08, 2025"
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
## Number of rows in final_data: 30924
```
## 2.Checking Valid & Invalid
\begin{table}[!h]

\caption{\label{tab:check-invalid}Summary of Invalid or Missing Rows}
\centering
\begin{tabular}[t]{>{}l|r|r}
\hline
Row Type & Count & Percentage (\%)\\
\hline
\textbf{\cellcolor{gray!6}{Has -9999 Only}} & \cellcolor{gray!6}{21416} & \cellcolor{gray!6}{69.3}\\
\hline
\textbf{Valid Row} & 9504 & 30.7\\
\hline
\textbf{\cellcolor{gray!6}{Has -9999 and Missing}} & \cellcolor{gray!6}{3} & \cellcolor{gray!6}{0.0}\\
\hline
\multicolumn{3}{l}{\textsuperscript{a} 'Has -9999 Only' indicates rows with placeholder values (-9999), but no other missing data.}\\
\end{tabular}
\end{table}

```
## Rows after filtering missing and -9999 values: 9504
```
## 3.MonthYear Valid & invalid
\begin{table}[!h]

\caption{\label{tab:Nan-values monthly}Monthly Summary of Invalid or Missing Rows}
\centering
\begin{tabular}[t]{>{}l|l|r|r}
\hline
Month-Year & Row Type & Count & Percentage (\%)\\
\hline
\textbf{\cellcolor{gray!6}{2024-06}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{1958} & \cellcolor{gray!6}{99.8}\\
\hline
\textbf{2024-06} & Has -9999 and Missing & 3 & 0.2\\
\hline
\textbf{\cellcolor{gray!6}{2024-07}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{6557} & \cellcolor{gray!6}{100.0}\\
\hline
\textbf{2024-08} & Has -9999 Only & 6122 & 100.0\\
\hline
\textbf{\cellcolor{gray!6}{2024-09}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{4396} & \cellcolor{gray!6}{100.0}\\
\hline
\textbf{2024-10} & Has -9999 Only & 192 & 100.0\\
\hline
\textbf{\cellcolor{gray!6}{2024-11}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{721} & \cellcolor{gray!6}{12.5}\\
\hline
\textbf{2024-11} & Valid Row & 5031 & 87.5\\
\hline
\textbf{\cellcolor{gray!6}{2024-12}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{1366} & \cellcolor{gray!6}{24.1}\\
\hline
\textbf{2024-12} & Valid Row & 4300 & 75.9\\
\hline
\textbf{\cellcolor{gray!6}{2025-04}} & \cellcolor{gray!6}{Has -9999 Only} & \cellcolor{gray!6}{104} & \cellcolor{gray!6}{37.5}\\
\hline
\textbf{2025-04} & Valid Row & 173 & 62.5\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/Nan-values monthly-1.pdf)<!-- --> 



## 4. Sensor Failures

\begin{table}[!h]

\caption{\label{tab:sensor-failures}Monthly Summary of Rows with -9999 in Specific Columns}
\centering
\begin{tabular}[t]{>{}l|r|r|r|r}
\hline
MonthYear & TotalRows & RowsWith\_One\_Column & RowsWith\_Multiple\_Columns & RowsWith\_All\_Columns\\
\hline
\textbf{\cellcolor{gray!6}{2024-06}} & \cellcolor{gray!6}{1961} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{NA} & \cellcolor{gray!6}{0}\\
\hline
\textbf{2024-07} & 6557 & 4874 & 1683 & 0\\
\hline
\textbf{\cellcolor{gray!6}{2024-08}} & \cellcolor{gray!6}{6122} & \cellcolor{gray!6}{4970} & \cellcolor{gray!6}{1152} & \cellcolor{gray!6}{0}\\
\hline
\textbf{2024-09} & 4396 & 3763 & 633 & 0\\
\hline
\textbf{\cellcolor{gray!6}{2024-10}} & \cellcolor{gray!6}{192} & \cellcolor{gray!6}{168} & \cellcolor{gray!6}{24} & \cellcolor{gray!6}{0}\\
\hline
\textbf{2024-11} & 5752 & 0 & 721 & 0\\
\hline
\textbf{\cellcolor{gray!6}{2024-12}} & \cellcolor{gray!6}{5666} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{1366} & \cellcolor{gray!6}{0}\\
\hline
\textbf{2025-04} & 277 & 0 & 104 & 0\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/sensor-failures-1.pdf)<!-- --> 

## 5. Corelation Matrix

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/corelation matrix-1.pdf)<!-- --> 
## 5. Time Gap Categorization & Flagging

```
##               DateTime TimeDiff_min  GapCategory   TimeGapFlag
## 1  2024-07-12 15:00:41   4720.75000   1 - 5 days Very Long Gap
## 2  2024-07-18 17:00:41   1860.00000   1 - 5 days Very Long Gap
## 3  2024-08-02 11:44:53     92.53333  1 - 6 hours      Long Gap
## 4  2024-08-02 14:00:41     77.36667  1 - 6 hours      Long Gap
## 5  2024-08-07 12:00:41     94.10000  1 - 6 hours      Long Gap
## 6  2024-08-30 17:00:41    514.10000 6 - 12 hours      Long Gap
## 7  2024-09-09 15:00:41    348.90000  1 - 6 hours      Long Gap
## 8  2024-09-09 17:00:41    101.50000  1 - 6 hours      Long Gap
## 9  2024-09-25 18:00:41    585.26667 6 - 12 hours      Long Gap
## 10 2024-09-29 16:07:26   4315.71667   1 - 5 days Very Long Gap
## 11 2024-09-30 11:00:41     94.10000  1 - 6 hours      Long Gap
## 12 2024-11-24 13:00:41    154.20000  1 - 6 hours      Long Gap
## 13 2024-12-12 15:00:42    394.21667 6 - 12 hours      Long Gap
## 14 2024-12-17 16:00:42    120.00000  1 - 6 hours      Long Gap
## 15 2024-12-19 14:00:41    274.90000  1 - 6 hours      Long Gap
## 16 2025-04-14 15:00:51    136.70000  1 - 6 hours      Long Gap
```

## 6. Summary & Visualization


```
## [1] "Skewness of TimeDiff_min: 45.61"
```

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/summary-1.pdf)<!-- --> 

## 7. Monthly Trends & Power Outages

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/monthly-trends-1.pdf)<!-- --> 




## 8. R2 Analysis 
\begin{table}[!h]

\caption{\label{tab:r2 analysis}Summary of R² Values for CO2 Flux (FCO2)}
\centering
\begin{tabular}[t]{r|r|r|r|r}
\hline
Total Records & R² >= 0.75 & R² < 0.75 & Percentage ≥ 0.75 & Percentage < 0.75\\
\hline
\cellcolor{gray!6}{9504} & \cellcolor{gray!6}{7669} & \cellcolor{gray!6}{1835} & \cellcolor{gray!6}{80.7} & \cellcolor{gray!6}{19.3}\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/r2 analysis-1.pdf)<!-- --> 
## 9. CV Analysis 

\begin{table}

\caption{\label{tab:cv analysis}Summary of CO2 Flux CV Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO2 Flux CV Flag & Count & Percentage\\
\hline
Acceptable & 2165 & 22.8\\
\hline
Issue & 4430 & 46.6\\
\hline
Plausible & 2909 & 30.6\\
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
Acceptable & 163 & 1.7\\
\hline
Issue & 9296 & 97.8\\
\hline
Plausible & 45 & 0.5\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/cv analysis-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/cv analysis-2.pdf)<!-- --> 

## 10. Flux Control

\begin{table}

\caption{\label{tab:flux-quality-control}Summary of CO2 Flux Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO Flux Flag & Count & Percentage\\
\hline
Very Low (<100) & 7669 & 100\\
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
Below Detection (<0.01) & 760 & 9.9\\
\hline
Extremely High (>5) & 4 & 0.1\\
\hline
Negative & 693 & 9.0\\
\hline
Plausible & 6212 & 81.0\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/flux-quality-control-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/flux-quality-control-2.pdf)<!-- --> 

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/flux anlysis monthly-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/flux anlysis monthly-2.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-08_files/figure-latex/flux anlysis monthly-3.pdf)<!-- --> 

