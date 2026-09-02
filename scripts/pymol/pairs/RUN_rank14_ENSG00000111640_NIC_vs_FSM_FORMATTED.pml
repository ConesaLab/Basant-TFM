delete all
load models/rank14_ENSG00000111640_FSM_B057086.pdb, rank14_ENSG00000111640_FSM_B057086
load models/rank14_ENSG00000111640_NIC_B090325.pdb, rank14_ENSG00000111640_NIC_B090325
hide everything
show cartoon
color cyan, rank14_ENSG00000111640_FSM_B057086
color orange, rank14_ENSG00000111640_NIC_B090325
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank14_ENSG00000111640_NIC_B090325, rank14_ENSG00000111640_FSM_B057086
orient
zoom
png ../../supplementary/figures/pymol/top20/rank14_ENSG00000111640_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
