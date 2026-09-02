delete all
load models/rank06_ENSG00000115275_FSM_B057103.pdb, rank06_ENSG00000115275_FSM_B057103
load models/rank06_ENSG00000115275_NIC_B052039.pdb, rank06_ENSG00000115275_NIC_B052039
hide everything
show cartoon
color cyan, rank06_ENSG00000115275_FSM_B057103
color orange, rank06_ENSG00000115275_NIC_B052039
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank06_ENSG00000115275_NIC_B052039, rank06_ENSG00000115275_FSM_B057103
orient
zoom
png ../../supplementary/figures/pymol/top20/rank06_ENSG00000115275_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
