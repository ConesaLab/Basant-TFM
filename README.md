# Basant TFM

## Project overview
This repository contains the analysis scripts, summary tables and supplementary figures produced for Basant’s MSc thesis in Omics Data Analysis at Universitat de Vic – Universitat Central de Catalunya.

The study was conducted in three stages. First, supplied open reading frame (ORF) and predicted nonsense-mediated decay (NMD) annotations were examined for selected transcripts from GAD2, INS and CHGA. A preliminary descriptive comparison was performed using five coding NIC isoforms with available AlphaFold2 mean pLDDT scores: four from CHGA and one from GAD2. INS was inspected at this stage but did not contribute a NIC protein to the ORF/NMD comparison. Second, mean pLDDT distributions were compared among FSM, NIC and NNC protein sequences associated with GAD2, INS and CHGA, providing an exploratory transcript-category comparison across the three selected genes. Third, the main balanced analysis compared AlphaFold2-predicted structural confidence among FSM, NIC and NNC proteins from 3,334 genes. Each gene was represented by one protein from each category, giving 10,002 predicted structures. High-confidence NIC models were subsequently matched with FSM models from the same genes and compared visually using PyMOL.

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
* ColabFold with the AlphaFold2-ptm model; the supplied structure predictions were generated using NVIDIA L40S GPUs on the DRAGO supercomputer at the Spanish National Research Council (CSIC)

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
