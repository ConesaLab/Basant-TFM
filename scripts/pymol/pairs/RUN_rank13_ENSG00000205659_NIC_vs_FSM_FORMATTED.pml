delete all
load models/rank13_ENSG00000205659_FSM_B097846.pdb, rank13_ENSG00000205659_FSM_B097846
load models/rank13_ENSG00000205659_NIC_B106899.pdb, rank13_ENSG00000205659_NIC_B106899
hide everything
show cartoon
color cyan, rank13_ENSG00000205659_FSM_B097846
color orange, rank13_ENSG00000205659_NIC_B106899
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank13_ENSG00000205659_NIC_B106899, rank13_ENSG00000205659_FSM_B097846
orient
zoom
png ../../supplementary/figures/pymol/top20/rank13_ENSG00000205659_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
