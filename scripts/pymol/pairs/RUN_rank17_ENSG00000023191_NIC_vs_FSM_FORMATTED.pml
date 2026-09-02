delete all
load models/rank17_ENSG00000023191_FSM_B077574.pdb, rank17_ENSG00000023191_FSM_B077574
load models/rank17_ENSG00000023191_NIC_B031520.pdb, rank17_ENSG00000023191_NIC_B031520
hide everything
show cartoon
color cyan, rank17_ENSG00000023191_FSM_B077574
color orange, rank17_ENSG00000023191_NIC_B031520
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank17_ENSG00000023191_NIC_B031520, rank17_ENSG00000023191_FSM_B077574
orient
zoom
png ../../supplementary/figures/pymol/top20/rank17_ENSG00000023191_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
