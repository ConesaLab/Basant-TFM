delete all
load models/rank12_ENSG00000006459_FSM_B104314.pdb, rank12_ENSG00000006459_FSM_B104314
load models/rank12_ENSG00000006459_NIC_B061333.pdb, rank12_ENSG00000006459_NIC_B061333
hide everything
show cartoon
color cyan, rank12_ENSG00000006459_FSM_B104314
color orange, rank12_ENSG00000006459_NIC_B061333
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank12_ENSG00000006459_NIC_B061333, rank12_ENSG00000006459_FSM_B104314
orient
zoom
png ../../supplementary/figures/pymol/top20/rank12_ENSG00000006459_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
