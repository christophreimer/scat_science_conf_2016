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
## ASCAT tandem operation

[columns]

[column=0.5]

* ASCAT tandem phase initiated in Sept. 2012 with the launch of ASCAT-B

* ASCAT-A and B in same sun-synchronous orbit
    * phasing ~48 min. (~half an orbit)

* Phasing suboptimal for ASCAT sensor geometry around the equator
    * ASCAT-A right overlap ASCAT-B left swath
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


## Soil Moisture Processing @ TU Wien

\begin{figure}
\includegraphics[width=0.65\textwidth]{./figures/warp_processing.png}
\end{figure}

\begin{center}
\textbf{optimal solution to use both sensors for MP.}

\newline

\textcolor{red}{\textbf{What do we have to consider in MP estimation?}}
\end{center}

## ASCAT-B Level 1b calibration status

* Soil moisture retrieval requires long-term stability
* Instrument monitoring over Rainforests
    * Amazon, Congo and Indonesia Rainforest
* Gamma model vs. TU Wien model (2nd order polynomial)

[columns]

[column=0.4]

\begin{figure}
\includegraphics[width=.99\textwidth]{./figures/Backscatter_Models.png}
\caption{a) ERS-2 ESCAT b) MetOp-A ASCAT}
\end{figure}

[column=0.6]  

\begin{figure}
\includegraphics[width=.99\textwidth]{./figures/metop_b_ascat_calibration.png}
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

* TU Wien SM retrieval is a physically motivated semi-empirical change detection method
* Calibration of model parameters (MP) required to separate different backscatter contributions
    * MP estimation is based on "inter-annual" time series analysis
* Comparison of MP derived from
    * ASCAT-A (2007 - 2015)
    * ASCAT-B (2013 - 2015)
    * ASCAT-AB (2007- 2015)

[column=0.6]  

\begin{figure}
\includegraphics[width=.75\textwidth]{./figures/warp.png}
\end{figure}

[/columns]


## Estimated Standard Deviation (ESD)

* Backscatter noise estimate for SM error model
* Estimated using: $\delta = \sigma^{0}_{fore} - \sigma^{0}_{aft}$

$$ESD\left(\sigma^{\circ}\right) = \frac{SD\left[\delta\right]}{\sqrt{2}}$$

\vspace{.2cm}

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/esd_difference_GPI1229539.png}
\end{figure}

## Azimuth normalisation coefficients

* Account for azimuthal anisotropy effects in backscatter
* 12 azimuth observation configurations (3 x beams, 2 x swath, 2 x overpasses)
* Difference to statistically expected backscatter
    * 2nd order polynomial

\begin{figure}
\includegraphics[width=.6\textwidth]{./figures/azimuth_difference_GPI1263245.png}
\end{figure}

## Incidence angle normalisation (Slope)

* Inc. angle behaviour modelled via 2nd order Taylor polynomial
* Slope $\sigma^{\prime}$ = first derivative of inc. angle behaviour

$$\sigma^{\circ}\left(\theta,t\right) =
\sigma^{\circ}\left(\theta_{ref}, t\right) +
\sigma^{\prime}\left(\theta_{ref},
t\right)\left(\theta-\theta_{ref}\right) +
\frac{1}{2}\cdot\sigma^{\prime\prime}\left(\theta_{ref},
t\right)\left(\theta-\theta_{ref}\right)^{2}$$

\begin{figure}
\includegraphics[width=.8\textwidth]{./figures/slope_difference_GPI765861.png}
\end{figure}

## Daily Slope estimation

* Make use of LLR for lope estimation over time
    * critical parameter $\Rightarrow$ time window length
* Bias in Slope due to bias in azimuth norm.
    * identical temporal behaviour of ASCAT-A / ASCAT-B

\begin{figure}
\includegraphics[width=.75\textwidth]{./figures/daily_slope_estimates_GPI765861.png}
\end{figure}

## Dry/Wet reference

* Representing the driest and wettest observed soil moisture condition.

\begin{center}
$m_{s}\left(t\right) = \frac{\sigma^{\circ}\left(\theta_{ref},t\right) -
\sigma^{\circ}_{dry}\left(\theta_{ref},t\right)}{\sigma^{\circ}_{wet}\left(\theta_{ref},t\right) -
\sigma^{\circ}_{dry}\left(\theta_{ref},t\right)} \qquad
[\text{degree of saturation}]$
\end{center}

\begin{figure}
\includegraphics[width=.8\textwidth]{./figures/norm_sigma_dry_wet_GPI815573.png}
\end{figure}



## Validation with respect to in-situ soil moisture
* What is the impact on the final SM retrievals?
    * Validation of three ASCAT SM products
* ISMN in-situ data
    * 32 networks with 789 stations in total
    * Sensor depths: 0 – 0.10m
* Data Manipulation
    * Masking for snow, soil temperature, Freeze/Thaw state
    * Min / Max scaling of ASCAT to in-situ soil moisture
    * Temporal collocation with 8h time window


## In-situ validation results per network

\begin{figure}
\includegraphics[height=0.8\textheight,keepaspectratio]{./figures/boxplot_ISMNnetwork_ASCAT.png}
\end{figure}

## In-situ validation results global summary

\begin{figure}
\includegraphics[height=0.8\textheight,keepaspectratio]{./figures/boxplot_ISMN_ASCAT_all_latitude.png}
\end{figure}

## Soil Moisture Validation ERA-interim

\begin{figure}
\includegraphics[width=.9\textwidth]{./figures/ASCAT_ERAINT_maps_crop.png}
\end{figure}
\begin{center}
\textbf{Negative impact over desert regions.}
\end{center}

## Conclusion

* Tandem scenario of ASCAT result in a mean revisit time of less than 16 h globally. 

* Inter-calibration of ASCAT-A and ASCAT-B critical for SM retrieval
    * A 0.1 dB difference will introduce a bias of about 3% in soil moisture 

* Impact of tandem phase scenario on model parameter estimation
    * Good agreement with latest MPs in general
    * Sensitivity of model parameters are different
    * Account for correlations in ASCAT-A/B, by applying a weighting in the MP estimation

* In-situ validation indicates neutral impact
* Validation against ERA-interim
    * Overall neutral impact
    * Desert regions are exceptions
