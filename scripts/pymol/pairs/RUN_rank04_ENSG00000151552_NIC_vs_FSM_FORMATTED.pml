delete all
load models/rank04_ENSG00000151552_FSM_B070002.pdb, rank04_ENSG00000151552_FSM_B070002
load models/rank04_ENSG00000151552_NIC_B086344.pdb, rank04_ENSG00000151552_NIC_B086344
hide everything
show cartoon
color cyan, rank04_ENSG00000151552_FSM_B070002
color orange, rank04_ENSG00000151552_NIC_B086344
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank04_ENSG00000151552_NIC_B086344, rank04_ENSG00000151552_FSM_B070002
orient
zoom
png ../../supplementary/figures/pymol/top20/rank04_ENSG00000151552_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
