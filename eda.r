#!/usr/bin/env Rscript

# Plot a factor all pretty-like
p <- function(x, filename, xlab = '', ...) {
  png(filename, width=1600, height=900, font = 'Helvetica')
  
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

# Public notice dates
# p(w$Public.Notice.Date, 'plots/public_notice_date.png')
.d <- as.data.frame(table(w$Public.Notice.Date))
colnames(.d) <- c('Date', 'Number.of.notices')
.d$Date <- as.Date(.d$Date)
.d$Cumulative.notices <- cumsum(.d$Number.of.notices)

png('plots/public_notice_date.png', width=1600, height=900, pointsize = 18, font = 'Helvetica')
plot(
  Cumulative.notices ~ Date, data = .d,
  xlim = as.Date(c('2012-07-01', '2012-10-01')),
  main = 'When were these notices posted?',
  ylab = 'Cumulative number of public notices',
  sub = 'Point area is the number posted that day.'
  axes = F,
  bg = 1,
  col = 0,
  pch = 21,
  cex = Number.of.notices * 4/5
)
axis(2)
.dates <- as.Date(c('2012-07-01', '2012-07-15', '2012-08-01', '2012-08-15', '2012-09-01', '2012-09-15', '2012-10-01'))
.names <- strftime(.dates, '%B %d')
axis(1, at = .dates, labels = .names)
dev.off()

# print(summary(w[14:18]))
