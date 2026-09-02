delete all
load models/rank16_ENSG00000156017_FSM_B048992.pdb, rank16_ENSG00000156017_FSM_B048992
load models/rank16_ENSG00000156017_NIC_B065229.pdb, rank16_ENSG00000156017_NIC_B065229
hide everything
show cartoon
color cyan, rank16_ENSG00000156017_FSM_B048992
color orange, rank16_ENSG00000156017_NIC_B065229
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank16_ENSG00000156017_NIC_B065229, rank16_ENSG00000156017_FSM_B048992
orient
zoom
png ../../supplementary/figures/pymol/top20/rank16_ENSG00000156017_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
