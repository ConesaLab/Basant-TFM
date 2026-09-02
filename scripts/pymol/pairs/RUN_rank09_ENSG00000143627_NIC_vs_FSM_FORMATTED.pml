delete all
load models/rank09_ENSG00000143627_FSM_B020094.pdb, rank09_ENSG00000143627_FSM_B020094
load models/rank09_ENSG00000143627_NIC_B070942.pdb, rank09_ENSG00000143627_NIC_B070942
hide everything
show cartoon
color cyan, rank09_ENSG00000143627_FSM_B020094
color orange, rank09_ENSG00000143627_NIC_B070942
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank09_ENSG00000143627_NIC_B070942, rank09_ENSG00000143627_FSM_B020094
orient
zoom
png ../../supplementary/figures/pymol/top20/rank09_ENSG00000143627_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
