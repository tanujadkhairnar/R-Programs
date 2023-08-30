ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
plot(ages,salary)
plot(salary,ages)

help(plot)
###############

#airquality=read.csv('path/airquality.csv',header=TRUE, sep=",")
#click on import dataset
data()
airquality=datasets::airquality
#top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all cols
dim(airquality)

#to see entire dataset click on airquality dataset name from work
airquality[,c(1,2)] #all row and first two cols
df=airquality[,-6] #excluding 6th col
df
summary(airquality[,1]) #summary statistics for col1
summary(airquality$Temp)

airquality$Wind #display cols names

summary(airquality$Wind) #summary for all cols


#Visualization on airquality
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)


#points and lines
plot(airquality$Wind,type='p') 
plot(airquality$Wind,type = "l")
plot(airquality$Wind,type='b')
help(plot)

plot(airquality$Wind,
     xlab='Ozone Concentration',
     ylab='No of Instances',
     main='Ozone levels in NY city',
     col='red',
     type='l'
     )
plot(airquality,col='red') #plot entire dataset
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#Horizontal bar plot
barplot(airquality$Ozone,
        main='Ozone concentration in air',
        ylab='Ozone levels',
        col='blue',
        horiz=T,   #horizontal variation
        axes=F)
barplot(airquality$Ozone,
        main='Ozone concentration in air',
        ylab='Ozone levels',
        col='blue',
        horiz=F,   #horizontal variation
        axes=T)
barplot(airquality$Ozone,
        main='Ozone concentration in air',
        ylab='Ozone levels',
        col='blue',
        horiz=T,   #horizontal variation
        )
help(barplot)

#Histogram

hist(airquality$Temp)
hist(airquality$Temp,
     main='Solar radiation values in air',
     xlab='solar rad.',
     col='pink',
     border='black')
help(hist)

#single boxplot
help("boxplot")

boxplot(airquality$Temp,
        main='Boxplot',
        col='yellow',
        border='brown',
        horizontal =T)
boxplot.stats(airquality$Temp)$out #outlier values
airquality$Ozone

boxplot(airquality[,1:4],
        main='multiple box plots',
        horizontal = T,
        col='purple')
boxplot.stats(airquality[,1:4])$out

#multiple graphs using partition
#margin of grid (bottom,left,top,right)
#las=labels (1:for horizontal, las:0 for vertical)
#bty=box around the plot(o,n,7,L,C,U)
help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2), las=1, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type='l')
plot(airquality$Wind, type='l')
plot(airquality$Solar.R, type='l')
barplot(airquality$Ozone,
        main='ozone concentration',
        xlab='ozone level',
        col='green',
        horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,1:4])

#considering NA values if cols have na values we cannot find min,max or mean
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm = T) #rm=remove
median(airquality$Ozone)
median(airquality$Ozone, na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

#Variance
var(airquality$Wind)

#std deviation
sd(airquality$Ozone)
sd(airquality$Ozone,na.rm = T)

#skewness
skewness(airquality$Ozone) 
kurtosis(airquality$Ozone)
skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone,na.rm = T)
skewness(airquality[,1:4],na.rm=T)

#density plot
plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm = T))
??density #check kernel density estimation

##hw
e_quakes=datasets::quakes