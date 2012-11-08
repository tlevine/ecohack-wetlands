#!/usr/bin/env Rscript

w <- read.csv('wetlands.csv')

png('plots/parish.png', width=1600, height=900)

# Margin
par(oma = c(7, 0, 0, 0))

plot(
  w$Parish,
  main = 'Permit applications by parish',
  xlab = '',
  ylab = 'Number of permit applications',

  # Perpendicular labels
  las = 2
)
mtext("Parish", 1, 7)

dev.off()
