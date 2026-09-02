delete all
load models/rank05_ENSG00000177239_FSM_B013152.pdb, rank05_ENSG00000177239_FSM_B013152
load models/rank05_ENSG00000177239_NIC_B036267.pdb, rank05_ENSG00000177239_NIC_B036267
hide everything
show cartoon
color cyan, rank05_ENSG00000177239_FSM_B013152
color orange, rank05_ENSG00000177239_NIC_B036267
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank05_ENSG00000177239_NIC_B036267, rank05_ENSG00000177239_FSM_B013152
orient
zoom
png ../../supplementary/figures/pymol/top20/rank05_ENSG00000177239_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
