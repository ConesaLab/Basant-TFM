delete all
load models/rank08_ENSG00000070495_FSM_B057573.pdb, rank08_ENSG00000070495_FSM_B057573
load models/rank08_ENSG00000070495_NIC_B052486.pdb, rank08_ENSG00000070495_NIC_B052486
hide everything
show cartoon
color cyan, rank08_ENSG00000070495_FSM_B057573
color orange, rank08_ENSG00000070495_NIC_B052486
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank08_ENSG00000070495_NIC_B052486, rank08_ENSG00000070495_FSM_B057573
orient
zoom
png ../../supplementary/figures/pymol/top20/rank08_ENSG00000070495_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
