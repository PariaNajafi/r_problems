HarryPotterMovies = matrix(data =c(490.988, 314.4, 
                             299.475, 247.9,
                             309.306, 165.8) , nrow =3, ncol=2, byrow = TRUE)


rownames(HarryPotterMovies) <- c("hp1", "hp2", "hp3")
colnames(HarryPotterMovies) <- c("US", "NUS")

HProwSums <- rowSums(HarryPotterMovies)
HPcolSums <- colSums(HarryPotterMovies)

HPTotalSums <- sum(HarryPotterMovies)


NewHP = cbind(HarryPotterMovies,HProwSums)

NewHP = rbind(NewHP, c(HPcolSums,HPTotalSums))


NewHP