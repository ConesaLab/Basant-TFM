# Preliminary descriptive comparison of coding NIC isoforms by predicted NMD status

library(ggplot2)

output_dir <- file.path("supplementary", "figures")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

orf_nmd <- data.frame(
  isoform = c(
    "PB.17850.169",
    "PB.17850.1572",
    "PB.17850.539",
    "PB.17850.945",
    "PB.6021.1127"
  ),
  gene = c("CHGA", "CHGA", "CHGA", "CHGA", "GAD2"),
  protein_length = c(305, 328, 204, 425, 129),
  group = c(
    "ORF + NMD",
    "ORF without NMD",
    "ORF without NMD",
    "ORF without NMD",
    "ORF without NMD"
  ),
  mean_plddt = c(51.2324, 57.1972, 63.2004, 56.6695, 92.3258)
)

orf_nmd$group <- factor(
  orf_nmd$group,
  levels = c("ORF + NMD", "ORF without NMD")
)

set.seed(42)

p <- ggplot(orf_nmd, aes(x = group, y = mean_plddt, fill = group)) +
  geom_boxplot(outlier.shape = NA, alpha = 0.75, width = 0.5) +
  geom_jitter(
    aes(colour = group),
    width = 0.10,
    size = 3,
    alpha = 0.85
  ) +
  scale_fill_manual(
    values = c(
      "ORF + NMD" = "#D55E00",
      "ORF without NMD" = "#0072B2"
    )
  ) +
  scale_colour_manual(
    values = c(
      "ORF + NMD" = "#D55E00",
      "ORF without NMD" = "#0072B2"
    )
  ) +
  labs(
    title = "Mean pLDDT scores: ORF + NMD vs ORF without NMD",
    subtitle = "Five coding NIC isoforms from CHGA and GAD2",
    x = "Predicted NMD group",
    y = "Mean pLDDT"
  ) +
  theme_classic(base_size = 14) +
  theme(
    legend.position = "none",
    plot.title = element_text(hjust = 0.5),
    plot.subtitle = element_text(hjust = 0.5)
  )

print(p)

ggsave(
  file.path(output_dir, "Figure_1_ORF_NMD_pLDDT.png"),
  plot = p,
  width = 8,
  height = 5,
  dpi = 600
)

ggsave(
  file.path(output_dir, "Figure_1_ORF_NMD_pLDDT.pdf"),
  plot = p,
  width = 8,
  height = 5
)

