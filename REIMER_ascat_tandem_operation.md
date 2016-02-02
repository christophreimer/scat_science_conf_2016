---
title: The ASCAT tandem operation scenario and \newline its implications on soil moisture retrievals
subtitle: 
author: Christoph Reimer, Sebastian Hahn, Andreea Plocon and Wolfgang Wagner
date: SCAT Science Conference \newline 3 February 2016
affiliation: TU Wien, Department of Geodesy and Geoinformation, Research Group Remote Sensing E120.1
logo: ./template/tulogo.png
theme: Madrid
fonttheme: structurebold
innertheme: rectangles
fontsize: 10pt
---
## Overview

**Needs to be done**

## ASCAT tandem operation

[columns]

[column=0.5]

* ASCAT tandem phase iniated with launch of ASCAT-B in Sept. 2012

* ASCAT-A and B in same sun-synchronous orbit
    * phasing ~ 48 min. (half an orbit)

* Phasing suboptimal for ASCAT sensor geometry
    * ASCAT-A right interleave ASCAT-B left swath
    * min. revisit times at equator ~ 48 min.

[column=0.5]

\begin{figure}
\includegraphics[width=0.85\textwidth]{./figures/ASCAT_AB_phasing.png}
\caption{Orbit Phasing ASCAT-A and ASCAT-B}
\end{figure}

[/columns]

## Revisit time statistics

\begin{figure}
\includegraphics[width=0.85\textwidth]{./figures/revisit_freq_map_mean.png}
\end{figure}

\begin{figure}
\includegraphics[width=0.85\textwidth]{./figures/revisit_freq_map_min.png}
\end{figure}


## Soil Moisture Retrieval
Flowchart of current approach
Flowchart of (near) future approach
 * optimal solution to use both sensors
 * what are the consequences for mp estimation


## ASCAT-B Level 1b calibration status

[columns]

[column=0.4]

* Inter-calibration with respect to ASCAT-A

\begin{figure}
\includegraphics[width=.8\textwidth]{./figures/CalibrationRefModel1_A.png}
\end{figure}

[column=0.6]

* Long-term trend estimated over different cal. targets
    * Amazon, Congo and Indonesia Rainforest

\begin{figure}
\includegraphics[width=.8\textwidth]{./figures/metop_b_ascat_calibration.png}
\end{figure}

[/columns]



## Calibration induced SM bias
\begin{center}
\textbf{Level 1 calibration bias of 0.1 dB between ASCAT-A and ASCAT-B}
\end{center}

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/metop_b_ssm_cal_bias.png}
\end{figure}



## Soil moisture model parameter estimation

[columns]

[column=0.4]

* TU-Wien soil moisture model
    * physically motivated, semi-empirical change detection
    * model parameters 

[column=0.6]

testafasfddsafds
asfdsafdsaf
asdfdsa

[/columns]

## Static parameter

[columns]

[column=0.4]

**ESD - Backscatter Noise**

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/esd_difference_GPI1813086.png}
\end{figure}

[column=0.6]

**Azimuth Correction**

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/azimuth_difference_GPI1263245.png}
\end{figure}

[/columns]

## Periodic parameter

[columns]

[column=0.4]

**Slope**

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/slope_difference_GPI765861.png}
\end{figure}

[column=0.6]

**Local Slopes**

Image of local slope estimation

[/columns]



## Validation with respect to in-situ soil moisture
* Validation of three ASCAT SSM products
    1. ASCAT- A
    2. ASCAT-B
    3. ASCAT-A and ASCAT-B
* ISMN in-situ data
    * 23 networks with xx stations in total
    * sensor depth
* Validation settings
    * scaling
    * temporal matching
    * 


## In-situ validation results per network

\begin{figure}
\includegraphics[height=0.8\textheight,keepaspectratio]{./figures/boxplot_ISMNnetwork_ASCAT.png}
\end{figure}

## In-situ validation results global summary

\begin{figure}
\includegraphics[height=0.8\textheight,keepaspectratio]{./figures/boxplot_ISMN_ASCAT_all_latitude.png}
\end{figure}

## Soil Moisture Validation ERA-interim

begin{figure}
\includegraphics[width=0.9/textwidth]{./figures/ASCAT_ERAINT_maps.png}
\end{figure}

## Conclusion
