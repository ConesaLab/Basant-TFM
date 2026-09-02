delete all
load models/rank02_ENSG00000147687_FSM_B056395.pdb, rank02_ENSG00000147687_FSM_B056395
load models/rank02_ENSG00000147687_NIC_B060317.pdb, rank02_ENSG00000147687_NIC_B060317
hide everything
show cartoon
color cyan, rank02_ENSG00000147687_FSM_B056395
color orange, rank02_ENSG00000147687_NIC_B060317
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank02_ENSG00000147687_NIC_B060317, rank02_ENSG00000147687_FSM_B056395
orient
zoom
png ../../supplementary/figures/pymol/top20/rank02_ENSG00000147687_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
