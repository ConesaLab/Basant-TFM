delete all
load models/rank18_ENSG00000112425_FSM_B085039.pdb, rank18_ENSG00000112425_FSM_B085039
load models/rank18_ENSG00000112425_NIC_B090105.pdb, rank18_ENSG00000112425_NIC_B090105
hide everything
show cartoon
color cyan, rank18_ENSG00000112425_FSM_B085039
color orange, rank18_ENSG00000112425_NIC_B090105
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank18_ENSG00000112425_NIC_B090105, rank18_ENSG00000112425_FSM_B085039
orient
zoom
png ../../supplementary/figures/pymol/top20/rank18_ENSG00000112425_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
