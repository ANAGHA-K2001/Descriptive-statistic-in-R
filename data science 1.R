vec1 <- c(45,2,3)
vec2 = c(1,2,3,4)

var<- vec1[1:3]
var<- vec1[1:4]
vec1[c(1,3)]
vector <- rep(1,10) #repeated 1 t10 times
seq <-seq(2,6)  #seq of integers bwt 2 nd 6
seq1 <-seq(4,20, by=4) #evey 4th integer bwt 4 nd 30

x <- c(2,0,0,4)
y <- c(1,9,9,9)
x + y   #sum of elements
x*4  #multiplies elements
sqrt(x) 
seq(1,10)
x[1]  # select the first element
x[-1] # exclude the first element
x[c(-1,-2)]  # exclude the1st nd 2nd element
x[1]<-3 ;x    # replace  1st element
x[-1]<-5 ; x  # replaces all elements other than 1st elt
y < 9  #compares each element returns t or f
y[4] =1
y[y<9] = 2 #edits the elt marked as true in index vector
y
df<-data.frame(x=1:3,y=c("4","A","C"),z=rep(1,3))
df[1:3,c(1,3)]
df[1:3,1:2]

airquality <- datasets::airquality

head(airquality)
tail(airquality,10)
airquality[50:60,c(1,2)]
df <- airquality[,-6]

summary(airquality[,c(4,5)])

airquality$Ozone
airquality$Wind
airquality$Temp
airquality$Solar.R

summary(airquality$Wind)
summary(airquality$Month)
summary(airquality)

plot(airquality$Wind)
plot(airquality$Temp,airquality$Ozone,type = "l")
plot(airquality$Wind ,type = "l")  # line chart
plot(airquality$Wind ,type = "b") #line chart with scatter plot
plot(airquality) #scatter matrix
plot(airquality$Ozone,xlab = 'ozone concentration',
     ylab = 'No of instances', main ='ozone levels in NY city',
     col = 'blue', type = 'l')

#horizontal bar plot
barplot(airquality$Ozone, main ='ozone concentration in  air',
        ylab = 'ozone levels',col = 'blue',horiz = T,axes = T )


#histogram 
hist(airquality$Temp)
hist(airquality$Temp,
     main = 'Solar Radiation value in air',
     xlab = 'solar rad',col = 'blue')

#box plot
boxplot(airquality$Wind,main='box plot')
boxplot.stats(airquality$Wind)$out  #out represent outliers

boxplot.stats(airquality$Ozone)$out

#multiple boxplot
boxplot(airquality[,1:4],main = 'Multiple')

--------------------------
  
par(mfrow=c(3,3),mar=c(2,5,2,1),las=0, bty="o")

plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone, main ='ozone concentration in  air',
        ylab = 'ozone levels',col = 'blue',horiz = T,axes = T )
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4], main = "Multiple Box Plots")

#for practice
e_quakes<- datasets::quakes
sd(airquality$Ozone,na.rm = T )
#var
#skewness
#kurtosis
#Density plot

head(e_quakes)
tail(e_quakes,10)

summary(e_quakes[,c(4,5)])
e_quakes$lat
e_quakes$long
e_quakes$mag
e_quakes$stations
summary(e_quakes$lat)
summary(e_quakes$long)
summary(e_quakes$mag)
summary(e_quakes$stations)
plot(e_quakes)
plot(e_quakes$stations)
plot(e_quakes$lat)
plot(e_quakes$long)
plot(e_quakes$depth)
plot(e_quakes$mag)
plot(e_quakes$mag,type="l")
plot(e_quakes$long,type="b")

barplot(e_quakes$long, main ='longitude',
        ylab = 'longitude',col = 'red',horiz = T,axes = T )

hist(e_quakes$lat)
hist(e_quakes$long)
hist(e_quakes$mag)
hist(e_quakes$depth)
hist(e_quakes$stations)

boxplot(e_quakes$lat)
boxplot(e_quakes$long, main = "box plot")
boxplot(e_quakes$mag)
boxplot(e_quakes$stations)$out
boxplot(e_quakes[,0:5],main="multiple")
