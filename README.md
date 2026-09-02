# Basant TFM

## Project overview
This repository contains the analysis scripts, summary tables and supplementary figures produced for Basant’s MSc thesis in Omics Data Analysis at Universitat de Vic – Universitat Central de Catalunya.

The study compared AlphaFold2-predicted structural confidence among proteins derived from full-splice-match (FSM), novel-in-catalog (NIC) and novel-not-in-catalog (NNC) long-read transcript isoforms. The main balanced dataset comprised 3,334 genes, each represented by one FSM, one NIC and one NNC protein, giving 10,002 predicted structures.

The repository also contains materials from:

* The preliminary descriptive ORF/NMD analysis.
* R visualization of mean pLDDT distributions.
* Selection of high-confidence NIC models.
* Gene-matched NIC–FSM structural comparisons in PyMOL.

## Repository contents

* `scripts/R/`: R scripts used for analysis and figure generation.
* `scripts/pymol/`: PyMOL scripts used for NIC–FSM structural comparisons.
* `supplementary/tables/`: Derived summary tables and structural-comparison manifests.
* `supplementary/figures/`: Supplementary plots and NIC–FSM structural images.

## Software

* R version 4.5.3
* PyMOL version 3.1.8
* AlphaFold2-ptm through ColabFold for the supplied structure predictions

## Data provenance

The transcript annotations, ORF/NMD annotations and AlphaFold2 outputs were supplied by the research team. Tianyuan Liu and Nazli Ucar provided assistance with the computational work and preparation of the AlphaFold2 outputs. The downstream R analyses, visualization, candidate selection and PyMOL comparisons were performed as part of the MSc thesis project.

## Author

Basant Hashesh
MSc in Omics Data Analysis
Faculty of Sciences, Technology and Engineering
Universitat de Vic – Universitat Central de Catalunya
Email: basantmohamed.hashesh@uvic.cat

## Availability

This repository is being prepared as the supplementary-material repository for the thesis.
