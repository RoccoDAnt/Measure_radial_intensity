# Measure radial intensity
Measurement and batch plot of radial intensity of circular structure in multichannel images.

This repository contains the code used the analyze the data in the following preprint

[Mechanistic studies of autophagic cargo recruitment and membrane expansion through in vitro reconstitution](https://www.biorxiv.org/content/10.1101/2024.12.24.630225v1.full)
 Wenxin Zhang, Thomas Litschel, Rocco D’Antuono, Colin Davis, Anne Schreiber, Sharon A. Tooze
[https://www.biorxiv.org/content/10.1101/2024.12.24.630225v1.full](https://www.biorxiv.org/content/10.1101/2024.12.24.630225v1.full)

## ImageJ macro - Measurement
The ImageJ macro identify circular structures in the field of view and generates radial lines that are used to obtain intensity measurements.

| ![](https://raw.githubusercontent.com/RoccoDAnt/Measure_radial_intensity/0b26081f0ec708d0984e109061f6ce1052ff671b/docs/Screenshot_radial_analysis_Ch01.png?token=GHSAT0AAAAAAC6R32T7XYMNZ4NRIU76FWECZ5F6KLA) |  ![](https://raw.githubusercontent.com/RoccoDAnt/Measure_radial_intensity/0b26081f0ec708d0984e109061f6ce1052ff671b/docs/Screenshot_radial_analysis_Ch02.png?token=GHSAT0AAAAAAC6R32T7P74IZN547FDKYRUUZ5F6KXA)|
| -----|  ----|
| Radial measurement of Ch 01 | Radial measurement of Ch 01|



## Jupyter notebook - Plot
The Jupyter notebook code concatenates multiple .csv files containing the radial intensity measurements, and plot the average with confidence interval.


| ![](https://raw.githubusercontent.com/RoccoDAnt/Measure_radial_intensity/0b26081f0ec708d0984e109061f6ce1052ff671b/docs/Radial_Analysis_Plot-example.png?token=GHSAT0AAAAAAC6R32T6R4IOB5X7J6CAACOMZ5F6LTQ)    |
| -----|
| Radial measurement of Ch 01 |
