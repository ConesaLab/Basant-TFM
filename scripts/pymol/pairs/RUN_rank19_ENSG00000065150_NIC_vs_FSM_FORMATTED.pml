delete all
load models/rank19_ENSG00000065150_FSM_B012086.pdb, rank19_ENSG00000065150_FSM_B012086
load models/rank19_ENSG00000065150_NIC_B086671.pdb, rank19_ENSG00000065150_NIC_B086671
hide everything
show cartoon
color cyan, rank19_ENSG00000065150_FSM_B012086
color orange, rank19_ENSG00000065150_NIC_B086671
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank19_ENSG00000065150_NIC_B086671, rank19_ENSG00000065150_FSM_B012086
orient
zoom
png ../../supplementary/figures/pymol/top20/rank19_ENSG00000065150_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
