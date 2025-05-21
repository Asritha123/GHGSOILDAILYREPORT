---
title: "GHG Soil Daily Analysis Report"
author: "Asritha Polu"
date: "May 21, 2025"
output:
  pdf_document:
    toc: true
    number_sections: true
    latex_engine: pdflatex
    keep_md: true
    extra_dependencies: ["booktabs", "caption", "float", "wrapfig", "colortbl", "xcolor", "multirow"]
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
## Number of rows in final_data: 277
```
## Checking Valid & Invalid
\begin{table}[!h]

\caption{\label{tab:check-invalid}Summary of Invalid or Missing Rows}
\centering
\begin{tabular}[t]{>{}l|r|r}
\hline
Row Type & Count & Percentage (\%)\\
\hline
\textbf{\cellcolor{gray!6}{Valid Row}} & \cellcolor{gray!6}{173} & \cellcolor{gray!6}{62.7}\\
\hline
\textbf{Has -9999 Only} & 103 & 37.3\\
\hline
\multicolumn{3}{l}{\textsuperscript{a} 'Has -9999 Only' indicates rows with placeholder values (-9999), but no other missing data.}\\
\end{tabular}
\end{table}

```
## Rows after filtering missing and -9999 values: 173
```

## PreviousDay Average Fluxes
\begin{table}[!h]

\caption{\label{tab:previous-flux}Mean FN2O and FCO2 Fluxes for 2025-04-14 and 2025-04-15}
\centering
\begin{tabular}[t]{>{}r|r|r|r|l}
\hline
FN2O & FCO2 & FN2O Count & FCO2 Count & Date\\
\hline
\textbf{\cellcolor{gray!6}{-0.016}} & \cellcolor{gray!6}{3.181} & \cellcolor{gray!6}{176} & \cellcolor{gray!6}{72} & \cellcolor{gray!6}{Previous Day}\\
\hline
\textbf{0.011} & 3.037 & 101 & 101 & Present Day\\
\hline
\end{tabular}
\end{table}
Table shows **previous/present days average fluxes** for **FCO2 (mg C m\(^-2\) day\(^-1\))** and **FN2O (mg N m\(^-2\) day\(^-1\))**.

## Sensor Failures

\begin{table}[!h]

\caption{\label{tab:multiple-rows}Monthly Summary of Rows with -9999 in Specific Columns}
\centering
\begin{tabular}[t]{>{}l|r|r|r|r}
\hline
MonthYear & TotalRows & RowsWith\_One\_Column & RowsWith\_Multiple\_Columns & RowsWith\_All\_Columns\\
\hline
\textbf{\cellcolor{gray!6}{2025-04}} & \cellcolor{gray!6}{276} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{103} & \cellcolor{gray!6}{0}\\
\hline
\end{tabular}
\end{table}
## Time Gap Categorization & Flagging

```
##              DateTime TimeDiff_min GapCategory TimeGapFlag
## 1 2025-04-14 15:00:51        136.7 1 - 6 hours    Long Gap
```

## Summary & Visualization


```
## [1] "Skewness of TimeDiff_min: NaN"
```

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-21_files/figure-latex/summary-1.pdf)<!-- --> 



## R2 Analysis 

\begin{table}[!h]

\caption{\label{tab:r2 analysis}Summary of R² Values for CO2 Flux (FCO2)}
\centering
\begin{tabular}[t]{r|r|r|r|r}
\hline
Total Records & R² >= 0.75 & R² < 0.75 & Percentage >= 0.75 & Percentage < 0.75\\
\hline
\cellcolor{gray!6}{173} & \cellcolor{gray!6}{173} & \cellcolor{gray!6}{0} & \cellcolor{gray!6}{100} & \cellcolor{gray!6}{0}\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-21_files/figure-latex/r2 analysis-1.pdf)<!-- --> 

## CV Analysis 
\begin{table}

\caption{\label{tab:cv-analysis}Summary of CO2 Flux CV Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO2 Flux CV Flag & Count & Percentage\\
\hline
Acceptable & 149 & 86.1\\
\hline
Issue & 3 & 1.7\\
\hline
Plausible & 21 & 12.1\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-21_files/figure-latex/cv-analysis-1.pdf)<!-- --> 
# CO2 flux CVs are classified as follows: **Ideal** (\(< 0.5\)), **Acceptable** (\(0.5 - 2\)), **Plausible** (\(2 - 3\)), and **Issue** (\(> 3\)), based on the level of variability in the measurements.

## Flux Control

\begin{table}[!h]

\caption{\label{tab:flux-quality-control}Summary of CO2 Flux Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
CO Flux Flag & Count & Percentage\\
\hline
\cellcolor{gray!6}{Very Low (<100)} & \cellcolor{gray!6}{173} & \cellcolor{gray!6}{100}\\
\hline
\end{tabular}
\end{table}

\begin{table}[!h]

\caption{\label{tab:flux-quality-control}Summary of N2O Flux Flags}
\centering
\begin{tabular}[t]{l|r|r}
\hline
NO Flux Flag & Count & Percentage\\
\hline
\cellcolor{gray!6}{Below Detection (<0.01)} & \cellcolor{gray!6}{32} & \cellcolor{gray!6}{18.5}\\
\hline
Negative & 87 & 50.3\\
\hline
\cellcolor{gray!6}{Plausible} & \cellcolor{gray!6}{54} & \cellcolor{gray!6}{31.2}\\
\hline
\end{tabular}
\end{table}

![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-21_files/figure-latex/flux-quality-control-1.pdf)<!-- --> ![](/lustre/darse/users/3735/ghgsoilproject/output/GHG_SOIL_REPORT_2025-05-21_files/figure-latex/flux-quality-control-2.pdf)<!-- --> 
CO2 flux flags are classified as **Missing**, **Negative (< 0)**, **Very Low (< 100)**, **Plausible (100 - 4000)**, and **Extremely High (> 4000)**, with units in **mg C m<sup>-2</sup> day<sup>-1</sup>.

N2O flux flags are classified as **Missing**, **Negative (< 0)**, **Below Detection (< 0.01)**, **Plausible (0.01 - 5)**, and **Extremely High (> 5)**, with units in **mg N m<sup>-2</sup> day<sup>-1</sup>.

