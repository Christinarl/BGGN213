#' ---
#' title: "Class05"
#' output: github_document
#' ---






#class 5 data visualization

x <- rnorm(1000)
#How many things are in x
length(x)


mean(x)
sd(x)

summary(x)

boxplot(x)
hist(x)
rug(x)

hist(x, breaks = 3)
hist(x, breaks = 30)

#Section2
weight <- read.table(file="bimm143_05_rstats/bimm143_05_rstats/weight_chart.txt",header=TRUE)

plot(weight$Age, weight$Weight, typ="o", pch=15, 
     ex=1.5, lwd=2, ylim = c(2,10), xlab = "Age (months)", 
     ylab = "Weight (kg)", main = "Baby weight with age")

#Section 2B
mouse <- read.table("bimm143_05_rstats/bimm143_05_rstats/feature_counts.txt", header = TRUE, sep = "\t")           

#or I could use read.delim() function, which sets the
#header and sep values to what I want
read.delim("bimm143_05_rstats/bimm143_05_rstats/feature_counts.txt")

par(mar=c(4,15,4,2))
barplot(mouse$Count, horiz = TRUE, 
        names.arg = mouse$Feature, xlim=c(0,80000), 
        main = "Number of features in the mouse GRCm38 genome", 
        las = 1, col=rainbow(15))


#Section 3A
read.delim("bimm143_05_rstats/bimm143_05_rstats/male_female_counts.txt")

mf <-read.delim("bimm143_05_rstats/bimm143_05_rstats/male_female_counts.txt")

barplot(mf$Count, names.arg=mf$Sample, col=rainbow(nrow(mf)), 
        las=2, ylab="Counts")


barplot(mf$Count, names.arg=mf$Sample, col=c("blue2","purple1", "pink1"), 
        las=2, ylab="Counts")


#Section 3B

read.delim("bimm143_05_rstats/bimm143_05_rstats/up_down_expression.txt")

genes <- read.delim("bimm143_05_rstats/bimm143_05_rstats/up_down_expression.txt")
nrow(genes)
table(genes$State)

plot(genes$Condition1, genes$Condition2, col=genes$State, 
     xlab="Expression condition 1", ylab="Expression condition 2")
palette()

palette(c("blue","gray","red"))
plot(genes$Condition1, genes$Condition2, col=genes$State, 
     xlab="Expression condition 1", ylab="Expression condition 2")
