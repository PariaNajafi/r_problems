# Nominal, ordinal
#categorical data are not continous
#continuous data could be categorical, like age, income, height
#that examples were ordinal categories

gender <- c("M", "F", "M", "F" , "M", "M")
factor(x =gender)


gender <- c("M", "F", "M", "F" , "M", "M")
factor(x =gender, levels = c("M", "F"))

#levels order was according to alphabet but we change it.
#representative sample must represent all varies of society.
# in society we had some snails that they are unisex.
gender <- c("M", "F", "M", "F" , "M", "M")
factor(x =gender, levels = c("M", "F", "U"))

#data must map levels.
gender <- c("M", "F", "M", "F" , "M", "M")
factor(x =gender, levels = c("A", "B", "C"))


gender <- c("M", "F", "M", "F" , "M", "M")
genderFac <- factor(x =gender,
                    levels = c("M", "F", "U"),
                    labels = c("Male", "Female", "Unisex")
)
genderFac


# ordinal factor

#brick klin


temp <- c("vl", "l", "m","h", "m")

tempFac <- factor(x=temp,
                  levels = c("vl", "l", "m","h", "vh"),
                  labels= c("veryLow", "low", "mid", "high", "veryHigh"),
                  ordered = TRUE)

tempFac

#slicing
genderFac[1] > genderFac[3]
#able to slice but not compare, data is nominal

tempFac[1] > tempFac[3]
#ordered factor

unclass(tempFac)

unclass(genderFac)

# complex type(container) : Vec, Mat, Fac, Data Frame
#=======================================DF
# Data roll model: Hadley Wickham
# in a table there are various kind of data, each column has its own type.


##Data Frame
#hadley wickham
# ye jens dade dar vec, mat, fac
# har column yek jens
names <- c("Roshanak", "Nima", "Fatemeh")
families <- c("Rezaei", "Mohammadpour", "Zare")
ages <- c(30, 35, 27)
namesDF <- data.frame("name" = names, "family" = families, "age" = ages)
# bacheye matrix va list, hame khavase matrix be joz ye jens,
#dataframe comes from :matrix, list
namesDF[2,2]

namesDF[3, ]

namesDF[, 1]
dim(namesDF)

head(mtcars)
tail(mtcars)
colnames(mtcars)
#paste hamechio beham michasboone
#names() mitunim bedim, pichide mishe
paste("X", 1:10)
paste("X", 1:10, sep = "")
paste(names, families, sep = "-")
paste0(names, families)

paste(1:ncol(mtcars), colnames(mtcars), sep = ": ")


#Divide and Conquer:beshkan be riztar va hal kon
#refactoring: aya karemuno mishe tamiztar nevesht
rownames(mtcars)

head(mtcars, 2)

#str:data structure  
str(namesDF)
#record, field
#observation, variable
str(mtcars)

# float ham dare
# age float va integer ro baham berizim tu ye factor hame float mishan

summary(mtcars)

summary(namesDF)

summary(genderFac)

#EDA: Exploratory Data Analysis
#tahlil ekteshafi dade

rep("A",10)
rep(c("A", "B"), each=3)

length(library()[[2]][,1])

names <- c("mercury", "venus", "earth",  "mars", "jupiter", "saturn", "uranus", "neptune")
type <- c("terrestrail", "terrestrail","terrestrail","terrestrail","gas","gas","gas","gas")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
ring <- c("doesn't have","doesn't have","doesn't have","doesn't have", "has", "has", "has","has")
solarsys  <- data.frame("name" = names, "type" = type, "diameter" = diameter, "rotation" = rotation , "ring" = ring)
solarsys 

solarSystem <- data.frame(name = c("mercury", "venus", "earth", "mars", "jupiter",
                                   "satrun", "uranus", "neptune"),
                          type = c(rep(c("terrestrial", "gas"), each = 4)),
                          diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883),
                          rotation = c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67),
                          hasRing = rep(c(F, T), each = 4)
)


# qotr atarod
solarSystem[1, 3]
#solarSystem[names == "mercury", "diameter"] work in colab not in rsudio, bad answer

filter <- solarSystem [,"name"]== "mercury"
solarSystem[filter, "diameter"]


filter <- solarSystem [,"name"]== "mars"
solarSystem[filter,]

solarSystem[solarSystem[,"name"]=="mars","rotation"]

# chizayi ke az matrix be ert mibare, mesle hamin slicing,
#chizayi ke az list: 
solarSystem$name[1]

solarSystem[solarSystem$name=="mars"]

subset(x = mtcars, cyl == 4 | cyl==6)

subset(x = mtcars, cyl %in% c(4,6) & am == 1 & vs ==1 & gear > 4)

class(subset(x=solarSystem, name=="mercury"))
#khoruji ye dataframe hast

subset(x=solarSystem, name=="mercury")$diameter
subset(x=solarSystem, name=="mercury")[,3]
subset(x=solarSystem, name=="mercury")[,"diameter"]

subset(x=solarSystem, hasRing )

subset(x=solarSystem, !hasRing )
#hasRing is a flag
#insert new column
solarSystem["ring"] <- rep(c("doesn't have", "has"), each=4)
solarSystem

solarSystem[solarSystem[,"ring"] == "has", "name"]

solarSystem[!solarSystem[, "hasRing"], ]
solarSystem[solarSystem[, "hasRing"], ]

solarSystem[!solarSystem$hasRing, ]

#order

a <- c(10,1000, 100)
order(a)

a[order(a)]

rev(x = a[order(a)])

sort(x = a)
sort(x = a, decreasing = TRUE)

#SHRINK SELECTION ctrl+shift+arrow

solarSystem$ring <- NULL
solarSystem

#structured
#semi-structured: email ta ye jayi structured hast,mohtavaye body tu table nmiad.
#unstructured: berahati nmire tu table

# dadeye data frame mostatilie
# zakhire dade qeir mostatili: list: super container 
vec <- 1:10
mat <- matrix(data = 1:12, nrow = 3, ncol = 4)

lst <- list(vec, genderFac, mat, namesDF)
class(lst)

#able to slice list
lst[3]
class(lst[3])
class(lst[[3]])
lst[[3]][2, 3]
lst[[4]][1, 2]

names(lst) <- c("vec","fac",  "mat", "df")

lst$vec[4]
lst$mat[2, 3]

lst$df$family[1]


###functional programming(FP)
#MONOLITIC CODES:not modular, long codes
#object oriented programming(OOP)


"object:
          -attribute
          -method(functionality)

blueprint, qaleb
=
class ----> instance
"

"
inheritance

mainclass:
          -attribute
          -method(functionality)
          
          
subclass(mainclass)
          -attribute(main)
          -method(main)
          -attribute(for itself)
          -method(for itself)
          
"

#r6,s7
# yek farzand mitune chand valed dashte bashe




lst$creatorname <- "Ali sadeghi"

lst$creatorname <- NULL

lst[[5]] <- "Ali sadeghi"

names(lst) # the last one is empty.
names(lst)[5] <- "creatorName"


