# Main descriptive pLDDT comparison for 3,334 matched genes and 10,002 structures

library(ggplot2)

input_file <- file.path("supplementary", "tables", "master_table.tsv")
output_dir <- file.path("supplementary", "figures")
dir.create(output_dir, recursive = TRUE, showWarnings = FALSE)

main_data <- read.delim(
  input_file,
  header = TRUE,
  sep = "\t",
  stringsAsFactors = FALSE
)

required_columns <- c("unique_id", "gene", "category", "plddt_mean")
missing_columns <- setdiff(required_columns, names(main_data))
if (length(missing_columns) > 0) {
  stop("Missing required columns: ", paste(missing_columns, collapse = ", "))
}

main_data <- main_data[
  main_data$category %in% c("FSM", "NIC", "NNC"),
]
main_data$category <- factor(
  main_data$category,
  levels = c("FSM", "NIC", "NNC")
)
main_data$plddt_mean <- as.numeric(main_data$plddt_mean)

category_counts <- table(main_data$category)
n_genes <- length(unique(main_data$gene))
n_structures <- nrow(main_data)

print(category_counts)
cat("Unique genes:", n_genes, "\n")
cat("Protein structures:", n_structures, "\n")

if (
  n_genes != 3334 ||
  n_structures != 10002 ||
  any(category_counts != 3334)
) {
  warning("The input does not match the expected balanced 3,334-gene dataset.")
}

category_means <- aggregate(
  plddt_mean ~ category,
  data = main_data,
  FUN = mean
)
category_means$mean_label <- sprintf(
  "Mean = %.2f",
  category_means$plddt_mean
)
print(category_means)

set.seed(42)

p <- ggplot(
  main_data,
  aes(
    x = category,
    y = plddt_mean,
    colour = category,
    fill = category
  )
) +
  geom_hline(
    yintercept = 70,
    linetype = "dashed",
    linewidth = 0.7,
    colour = "grey40"
  ) +
  geom_boxplot(
    width = 0.55,
    alpha = 0.22,
    outlier.shape = NA,
    colour = "black",
    linewidth = 0.8
  ) +
  geom_point(
    position = position_jitter(
      width = 0.17,
      height = 0,
      seed = 42
    ),
    size = 0.75,
    alpha = 0.22
  ) +
  geom_text(
    data = category_means,
    aes(x = category, y = 98, label = mean_label),
    inherit.aes = FALSE,
    colour = "black",
    size = 4.2,
    fontface = "bold"
  ) +
  scale_colour_manual(
    values = c(
      "FSM" = "#4C78A8",
      "NIC" = "#F58518",
      "NNC" = "#54A24B"
    )
  ) +
  scale_fill_manual(
    values = c(
      "FSM" = "#4C78A8",
      "NIC" = "#F58518",
      "NNC" = "#54A24B"
    )
  ) +
  scale_y_continuous(
    limits = c(0, 103),
    breaks = seq(0, 100, 10)
  ) +
  labs(
    title = "Mean pLDDT across SQANTI3 isoform categories",
    subtitle = paste0(
      format(n_genes, big.mark = ","),
      " genes | ",
      format(n_structures, big.mark = ","),
      " protein structures"
    ),
    x = "Transcript category",
    y = "Mean pLDDT",
    caption = "Dashed line indicates the pLDDT = 70 confidence threshold"
  ) +
  theme_classic(base_size = 14) +
  theme(
    legend.position = "none",
    plot.title = element_text(face = "bold", size = 18, hjust = 0.5),
    plot.subtitle = element_text(size = 13, hjust = 0.5),
    axis.title = element_text(face = "bold", size = 14),
    axis.text = element_text(size = 12),
    plot.caption = element_text(hjust = 0, size = 10)
  )

print(p)

ggsave(
  file.path(output_dir, "Figure_3_main_10002_structures_pLDDT.png"),
  plot = p,
  width = 8,
  height = 7,
  dpi = 600
)

ggsave(
  file.path(output_dir, "Figure_3_main_10002_structures_pLDDT.pdf"),
  plot = p,
  width = 8,
  height = 7
)

