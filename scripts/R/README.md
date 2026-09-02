# R scripts

The scripts reproduce the three descriptive pLDDT analyses reported in the thesis. They were prepared for R 4.5.3 and should be run from the repository root.

## Requirements

```r
install.packages(c("ggplot2", "readxl"))
```

## Scripts

### `01_plot_orf_nmd.R`

Creates the preliminary descriptive comparison of five coding NIC isoforms grouped by predicted NMD status. The five values are declared directly in the script.

Outputs:

- `supplementary/figures/Figure_1_ORF_NMD_pLDDT.png`
- `supplementary/figures/Figure_1_ORF_NMD_pLDDT.pdf`

### `02_plot_selected_genes_fsm_nic_nnc.R`

Reads `supplementary/tables/selected_genes_protein_sequences.xlsx` and compares FSM, NIC and NNC protein sequences associated with GAD2, INS and CHGA.

Outputs:

- `supplementary/figures/Figure_2_selected_genes_FSM_NIC_NNC_pLDDT.png`
- `supplementary/figures/Figure_2_selected_genes_FSM_NIC_NNC_pLDDT.pdf`

### `03_plot_main_10002_structures.R`

Reads `supplementary/tables/master_table.tsv`, verifies the balanced category counts, calculates category means and creates the main 10,002-structure plot.

Outputs:

- `supplementary/figures/Figure_3_main_10002_structures_pLDDT.png`
- `supplementary/figures/Figure_3_main_10002_structures_pLDDT.pdf`

These scripts perform descriptive analysis only. They do not implement MSA-depth or protein-length-adjusted statistical models.

