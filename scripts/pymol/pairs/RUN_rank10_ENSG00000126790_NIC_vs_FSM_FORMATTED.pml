delete all
load models/rank10_ENSG00000126790_FSM_B044224.pdb, rank10_ENSG00000126790_FSM_B044224
load models/rank10_ENSG00000126790_NIC_B088184.pdb, rank10_ENSG00000126790_NIC_B088184
hide everything
show cartoon
color cyan, rank10_ENSG00000126790_FSM_B044224
color orange, rank10_ENSG00000126790_NIC_B088184
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank10_ENSG00000126790_NIC_B088184, rank10_ENSG00000126790_FSM_B044224
orient
zoom
png ../../supplementary/figures/pymol/top20/rank10_ENSG00000126790_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
