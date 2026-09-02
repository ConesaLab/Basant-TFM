delete all
load models/rank11_ENSG00000196123_FSM_B078095.pdb, rank11_ENSG00000196123_FSM_B078095
load models/rank11_ENSG00000196123_NIC_B055686.pdb, rank11_ENSG00000196123_NIC_B055686
hide everything
show cartoon
color cyan, rank11_ENSG00000196123_FSM_B078095
color orange, rank11_ENSG00000196123_NIC_B055686
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank11_ENSG00000196123_NIC_B055686, rank11_ENSG00000196123_FSM_B078095
orient
zoom
png ../../supplementary/figures/pymol/top20/rank11_ENSG00000196123_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
