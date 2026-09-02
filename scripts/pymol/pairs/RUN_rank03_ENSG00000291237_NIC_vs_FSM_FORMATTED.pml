delete all
load models/rank03_ENSG00000291237_FSM_B076371.pdb, rank03_ENSG00000291237_FSM_B076371
load models/rank03_ENSG00000291237_NIC_B090382.pdb, rank03_ENSG00000291237_NIC_B090382
hide everything
show cartoon
color cyan, rank03_ENSG00000291237_FSM_B076371
color orange, rank03_ENSG00000291237_NIC_B090382
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank03_ENSG00000291237_NIC_B090382, rank03_ENSG00000291237_FSM_B076371
orient
zoom
png ../../supplementary/figures/pymol/top20/rank03_ENSG00000291237_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
