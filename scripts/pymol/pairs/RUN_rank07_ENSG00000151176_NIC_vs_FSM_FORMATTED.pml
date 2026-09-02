delete all
load models/rank07_ENSG00000151176_FSM_B028514.pdb, rank07_ENSG00000151176_FSM_B028514
load models/rank07_ENSG00000151176_NIC_B051150.pdb, rank07_ENSG00000151176_NIC_B051150
hide everything
show cartoon
color cyan, rank07_ENSG00000151176_FSM_B028514
color orange, rank07_ENSG00000151176_NIC_B051150
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank07_ENSG00000151176_NIC_B051150, rank07_ENSG00000151176_FSM_B028514
orient
zoom
png ../../supplementary/figures/pymol/top20/rank07_ENSG00000151176_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
