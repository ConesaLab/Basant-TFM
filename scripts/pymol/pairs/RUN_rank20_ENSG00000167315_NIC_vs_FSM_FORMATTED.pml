delete all
load models/rank20_ENSG00000167315_FSM_B037450.pdb, rank20_ENSG00000167315_FSM_B037450
load models/rank20_ENSG00000167315_NIC_B061556.pdb, rank20_ENSG00000167315_NIC_B061556
hide everything
show cartoon
color cyan, rank20_ENSG00000167315_FSM_B037450
color orange, rank20_ENSG00000167315_NIC_B061556
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank20_ENSG00000167315_NIC_B061556, rank20_ENSG00000167315_FSM_B037450
orient
zoom
png ../../supplementary/figures/pymol/top20/rank20_ENSG00000167315_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
