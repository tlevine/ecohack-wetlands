#!/usr/bin/env Rscript

w <- read.csv('wetlands.csv')
pdf('parish.pdf', width=35, height=10)
plot(
  w$Parish,
  main = 'Permit applications by parish',
  ylab = 'Parish',
  xlab = 'Number of permit applications'
)
dev.off()
