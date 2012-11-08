#!/usr/bin/env Rscript

# Plot a factor all pretty-like
p <- function(x, filename, xlab = '', ...) {
  png(filename, width=1600, height=900)
  
  # Margin
  par(oma = c(10, 0, 0, 0))
  
  plot(
    x,

    # xlab goes below
    xlab = '',
  
    # Perpendicular labels
    las = 2,

    ...
  )
  mtext(xlab, 1, 10)
  
  dev.off()
}

# Load the data.
w <- read.csv('wetlands.csv')

# Parishes
p(
  w$Parish,
  'plots/parish.png',
  main = 'Permit applications by parish',
  ylab = 'Number of permit applications',
  xlab = "Parish"
)

# Project managers
p(
  w$Project.Manager.Name,
  'plots/project_manager.png',
  main = 'Permit applications by project manager',
  ylab = 'Number of permit applications',
  xlab = "Project manager"
)

print(summary(w[14:18]))
