# Basant TFM

## Project overview

This repository contains the analysis scripts, supporting tables and supplementary figures produced for Basant Hashesh's MSc thesis in Omics Data Analysis at Universitat de Vic – Universitat Central de Catalunya.

The project investigated whether proteins derived from full-splice-match (FSM), novel-in-catalog (NIC) and novel-not-in-catalog (NNC) long-read transcript isoforms showed comparable AlphaFold2-predicted structural confidence. Mean predicted local distance difference test (pLDDT) was used as a screening measure of model confidence.

The study was conducted in three stages:

1. Supplied open reading frame (ORF) and predicted nonsense-mediated decay (NMD) annotations were examined for selected transcripts from **GAD2**, **INS** and **CHGA**. A preliminary descriptive comparison used five coding NIC isoforms with available mean pLDDT values: four from CHGA and one from GAD2.
2. Mean pLDDT distributions were compared among 153 FSM, NIC and NNC protein sequences associated with GAD2, INS and CHGA. This selected-gene dataset contained 15 FSM, 55 NIC and 83 NNC sequences.
3. The main balanced analysis compared 3,334 genes, each represented by one FSM, one NIC and one NNC protein, giving 10,002 predicted structures. High-confidence NIC models were subsequently matched with FSM models from the same genes and compared qualitatively in PyMOL.

In the main dataset, FSM proteins had a slightly higher mean pLDDT (74.20) than NIC (72.44) and NNC (71.85) proteins. The distributions overlapped extensively, and many NIC and NNC proteins achieved confidence scores comparable with FSM proteins. These findings support prioritising high-confidence novel isoforms for further experimental investigation rather than dismissing them solely because they are unannotated.

## Repository structure

- `scripts/R/`: R scripts for the three pLDDT analyses and figures.
- `scripts/pymol/`: PyMOL scripts and the 40 PDB models used for the top-20 gene-matched NIC–FSM comparisons.
- `supplementary/tables/`: Supplied and derived tables needed to reproduce the analyses.
- `supplementary/figures/`: Thesis figures, the selected six NIC–FSM examples and a location for regenerated top-20 images.

Each folder contains a README file describing its contents and use.

## Software and computational environment

- R version 4.5.3
- R packages: `ggplot2` and `readxl`
- PyMOL version 3.1.8
- ColabFold with the AlphaFold2-ptm model for the supplied structure predictions
- NVIDIA L40S GPUs on the DRAGO supercomputer at the Spanish National Research Council (CSIC)

## Reproducing the figures

Run the R scripts from the repository root so that their relative input and output paths resolve correctly:

```bash
Rscript scripts/R/01_plot_orf_nmd.R
Rscript scripts/R/02_plot_selected_genes_fsm_nic_nnc.R
Rscript scripts/R/03_plot_main_10002_structures.R
```

For the PyMOL comparisons, change to `scripts/pymol/`, open PyMOL and run:

```text
@RUN_ALL_20_BLACK_BACKGROUND.pml
```

## Data provenance and contributions

The SQANTI3 transcript classifications, ORF/NMD annotations, selected protein datasets and AlphaFold2 outputs were supplied by the research team. Tianyuan Liu and Nazli Ucar provided computational assistance and preparation of the AlphaFold2 outputs. Basant Hashesh performed the downstream R comparisons and visualisations, selected the structural examples and carried out the qualitative PyMOL comparisons.

## Interpretation and scope

pLDDT measures confidence in AlphaFold2-predicted local structure. It is useful for screening and prioritising protein models, but it does not by itself demonstrate translation, thermodynamic stability, biological function or antigenicity. The PyMOL overlays are qualitative illustrations; alignment RMSD values were not retained for statistical analysis.

## Temporary figure note

The current PyMOL images retain the evaluation-licence watermark, as agreed for supervisor review. Before public release or final publication, these images should be re-exported using an academic/institutional licence or open-source PyMOL. The watermark should not be removed by cropping.

## Author

**Basant Hashesh**  
MSc in Omics Data Analysis  
Faculty of Sciences, Technology and Engineering  
Universitat de Vic – Universitat Central de Catalunya  
Email: basantmohamed.hashesh@uvic.cat

## Availability

This repository is currently maintained as a private supplementary-material repository within the ConesaLab GitHub organisation. Public visibility and the final reuse licence should be confirmed by the research group before release.

