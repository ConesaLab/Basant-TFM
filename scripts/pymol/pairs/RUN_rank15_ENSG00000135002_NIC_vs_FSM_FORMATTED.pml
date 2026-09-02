delete all
load models/rank15_ENSG00000135002_FSM_B096671.pdb, rank15_ENSG00000135002_FSM_B096671
load models/rank15_ENSG00000135002_NIC_B107755.pdb, rank15_ENSG00000135002_NIC_B107755
hide everything
show cartoon
color cyan, rank15_ENSG00000135002_FSM_B096671
color orange, rank15_ENSG00000135002_NIC_B107755
set cartoon_fancy_helices, on
set cartoon_smooth_loops, on
set orthoscopic, on
set ray_shadows, off
set depth_cue, off
set antialias, 2
bg_color black
align rank15_ENSG00000135002_NIC_B107755, rank15_ENSG00000135002_FSM_B096671
orient
zoom
png ../../supplementary/figures/pymol/top20/rank15_ENSG00000135002_NIC_vs_FSM_overlay, width=2400, height=1800, dpi=300, ray=1
