#1st:ordinal factor assignment

workers <- c("ziad", "kam", "kam", "ziad", "kheili ziad")
workersSpeedFac <- factor(x=workers,
                  levels = c("k", "z", "khz"),
                  labels= c("kam", "ziad", "kheili ziad"),
                  ordered = TRUE)

workers[2]> workers[5]

#second:

# sort data frame by diameter column



solarSystem <- data.frame(name = c("mercury", "venus", "earth", "mars", "jupiter",
                                   "satrun", "uranus", "neptune"),
                          type = c(rep(c("terrestrial", "gas"), each = 4)),
                          diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883),
                          rotation = c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67),
                          hasRing = rep(c(F, T), each = 4)
)


sortedDFAsc <- solarSystem[order(solarSystem$diameter),]
sortedDFAsc1 <- solarSystem[order(solarSystem[,"diameter"]), ]


sortedDFDesc <- solarSystem[order(-solarSystem$diameter),]


#3rd:
#find shelly
#insert year:1980

name <- "The shining"
cast <- c(" Jack Nicolson", "Shelly Duvall", "Danny Liord")
review <- data.frame(sourcee = rep("IMDB", 3),
                     score = c("4", "5", "4.5"),
                     comment = c("Brilliant", "Horror Movie", "Masterpiece"))
movie <- list(name, cast, review)

names(movie) <- c("name", "cast", "review")

movie

#find Shelly
movie$cast[2]

#insert 
movie$year <- 1980
