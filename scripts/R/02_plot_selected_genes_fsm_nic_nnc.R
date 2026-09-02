# Exploratory FSM, NIC and NNC comparison for GAD2, INS and CHGA

library(readxl)
library(ggplot2)

input_file <- file.path(
  "supplementary",
  "tables",
  "selected_genes_protein_sequences.xlsx"
)
output_dir <- file.path("supplementary", "figures")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

selected_genes <- read_excel(input_file, sheet = "Unique_For_Boxplot")

required_columns <- c("category", "code", "protein_length", "mean_plddt")
missing_columns <- setdiff(required_columns, names(selected_genes))
if (length(missing_columns) > 0) {
  stop("Missing required columns: ", paste(missing_columns, collapse = ", "))
}

selected_genes <- selected_genes[
  selected_genes$category %in% c("FSM", "NIC", "NNC"),
]
selected_genes$category <- factor(
  selected_genes$category,
  levels = c("FSM", "NIC", "NNC")
)
selected_genes$mean_plddt <- as.numeric(selected_genes$mean_plddt)

print(table(selected_genes$category))
print(aggregate(mean_plddt ~ category, selected_genes, mean))

set.seed(42)

p <- ggplot(
  selected_genes,
  aes(x = category, y = mean_plddt, fill = category, colour = category)
) +
  geom_boxplot(
    outlier.shape = NA,
    alpha = 0.65,
    width = 0.55,
    colour = "grey25"
  ) +
  geom_jitter(width = 0.15, size = 1.8, alpha = 0.70) +
  scale_fill_manual(
    values = c(
      "FSM" = "#FFD700",
      "NIC" = "#F28E2B",
      "NNC" = "#59A14F"
    )
  ) +
  scale_colour_manual(
    values = c(
      "FSM" = "#E6B800",
      "NIC" = "#F28E2B",
      "NNC" = "#59A14F"
    )
  ) +
  labs(
    title = "Distribution of mean pLDDT scores by transcript category",
    subtitle = paste0(
      "Selected protein sequences from GAD2, INS and CHGA (n = ",
      nrow(selected_genes),
      ")"
    ),
    x = "Transcript structural category",
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
  file.path(output_dir, "Figure_2_selected_genes_FSM_NIC_NNC_pLDDT.png"),
  plot = p,
  width = 8,
  height = 7,
  dpi = 600
)

ggsave(
  file.path(output_dir, "Figure_2_selected_genes_FSM_NIC_NNC_pLDDT.pdf"),
  plot = p,
  width = 8,
  height = 7
)

