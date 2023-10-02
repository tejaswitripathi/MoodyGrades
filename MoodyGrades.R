moody <- read_csv("moody2023F2-1.csv")
head(moody)
min(moody[moody$Grade=='P',]$Score)
max(moody[moody$Grade=='F',]$Score)
colors <- c('red','blue','cyan','yellow','green', 'orange', 'purple', 'pink')
boxplot(Score~Grade, data=moody, xlab = "Grade", ylab="Score", main="Boxplot of Grade vs Score",col=colors,border="black")
overlap <- moody[moody$Score >= 50 & moody$Score <= 59,]
mosaicplot(overlap$Grade~overlap$Attendance,xlab = 'Grade',ylab = 'Attendance', main = "Mosiac of Grade vs Attendance",col=colors,border="black")
mosaicplot(overlap$Grade~overlap$Row,xlab = 'Grade',ylab = 'Row', main = "Mosiac of Grade vs Row",col=colors,border="black")
mosaicplot(overlap$Grade~overlap$Section,xlab = 'Grade',ylab = 'Section', main = "Mosiac of Grade vs Section",col=colors,border="black")
moodyA <- overlap[overlap$Grade=='F',]
moodyB <- overlap[overlap$Grade=='P',]
table(moodyA$Attendance)
table(moodyB$Attendance)
table(moodyA$Section)
table(moodyB$Section)
