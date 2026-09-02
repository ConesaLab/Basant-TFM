# PyMOL NIC–FSM comparisons

This folder contains the scripts and 40 supplied PDB models used to compare the 20 highest-confidence NIC models with gene-matched FSM models.

## Folder contents

- `models/`: 20 NIC and 20 matched FSM PDB models.
- `pairs/`: one formatted PyMOL script for each gene-matched pair.
- `RUN_ALL_20_BLACK_BACKGROUND.pml`: runs all 20 pair scripts.

## Running the comparisons

1. Change the working directory to `scripts/pymol/`.
2. Open PyMOL 3.1.8.
3. Run:

```text
@RUN_ALL_20_BLACK_BACKGROUND.pml
```

Each script loads one NIC–FSM pair, displays both models as cartoons, colours FSM cyan and NIC orange, aligns NIC to FSM using the default PyMOL `align` command, and exports a 2400 × 1800 pixel image with a black background. Generated images are written to `supplementary/figures/pymol/top20/`.

The comparisons are qualitative. RMSD values and aligned-residue counts were not retained for statistical analysis. Structural differences should not be interpreted as direct proof of altered protein function.

## Licence-watermark note

The six pre-rendered images included with this repository retain the PyMOL evaluation-licence watermark for supervisor review. Before public release or publication, the images should be regenerated using an academic/institutional licence or open-source PyMOL. The watermark should not be cropped out.

