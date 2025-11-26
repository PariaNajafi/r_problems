#1st:ordinal factor assignment

workers <- c("ziad", "kam", "kam", "ziad", "kheili ziad")
workersSpeedFac <- factor(x=workers,
                  levels = c("k", "z", "khz"),
                  labels= c("kam", "ziad", "kheili ziad"),
                  ordered = TRUE)

workers[2]> workers[5]

#second:


