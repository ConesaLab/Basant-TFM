delete all
load models/rank01_ENSG00000101843_FSM_B075166.pdb, rank01_ENSG00000101843_FSM_B075166
load models/rank01_ENSG00000101843_NIC_B090388.pdb, rank01_ENSG00000101843_NIC_B090388
hide everything
show cartoon
color cyan, rank01_ENSG00000101843_FSM_B075166
color orange, rank01_ENSG00000101843_NIC_B090388
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank01_ENSG00000101843_NIC_B090388, rank01_ENSG00000101843_FSM_B075166
orient
zoom
png ../../supplementary/figures/pymol/top20/rank01_ENSG00000101843_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
