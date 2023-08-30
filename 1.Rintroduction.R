"Hello R"
'Hello World'
Hello world
#comment

#Display nos
5
5 10 20 #will raise error
#to execute ctrl+enter, alt+enter
#variable name should be without quotation

name1="Tanuja"
name1

name2="Dadaji"
name3="Khairnar"
name3

age= 25
age
x=21
x
Name
num="20"
age=age+5
age

num=num+5
4*8

text="Excellent"
paste("ExcelR is",text) #concatenate/combine text using paste() function
paste('Students are',text)
paste('my name is',name1)
#assign same value to multiple variables in one line
var1 = var2 = var3 = "orange"

#legal variable names
#special symbols=underscore and dot but not starting and ending
myvar='tanuja'
my_var='tanuja'
myVar ='tanuja'
MYVAR= 'tanuja'
myvar2 = 'tanuja'
this.year=2022

#illegal variables name
2myvar='ta'
my-var='ta'
_my_var='ta'
my var='ta'
my_v@var='ta'
TRUE='ta'


#data types in R


#1Numeric/Float-decimal whole +ve -ve
x=10.5
class(x) #function due to ()
class(name1)

#2Integer - whole +ve -ve L
y=1000L  #L at the end means integer
class(y)

#3Character/string
x="R is exciting"
class(x)

#4logical or boolean
x=TRUE #or T, FALSE, F only for assign logical
class(x)
x=F




#comparison Operators
3>5
5>3
5==5 
1!=6 #not equal to
1<>6 #not allowed in R

#Arithmetic operators
x=20
y=3
x+y

x-y

x*y

x/y

x^2

x%%y

x%/%y #integer division

2*pi
2*pi*6378

??Constants
LETTERS
letters
pi
month.abb
month.name

#Assignment operator
x=50
50->x #50 is the value to variable x

#builtin math functions
max(25,78,10)
min(2,10,3)
sqrt(25)
abs(-4.5) #negative becomes positive 

#Data Structures: Vectors, DataFrames
#Homogeneous vectors
#vector of strings
#for vectors c function is used ie concatenate or combine function
fruits=c("Banana","Apple","Orange","Strawberry")
class(fruits)
#vector of numbers
numbers=c(1,2,3)
n2=c(T,F,TRUE,FALSE)
class(n2)
class(numbers)

#Heterogeneous vectors
mix=c(81,5.2,TRUE,"MANGO",5L,F)
class(mix)

#operations on vectors
x=c(2,5,8,4)
y=c(1,9,9,9)
x+y
x*5
(x+y)*5

#sequence
1:10 #1 to 10
1:1000
40:45
seq(1,50,5) #start value, end value, step/increment/decreement
seq(1,50,by=3) #by is keyword= increase by 3
seq(1,10)# by default increement value is 1
seq(10,1,-2) #for decreement start value should be bigger for negative
seq(10,1,-2)

n1=1.5:6.3
n1

#repetition
rep(45,5) #five times 45 is repeated
rep("Mango",5) #5 times mango repeated

#Random sample
sample(1:50,3) #any 3 nos will be printed randomly between 1 to 50
sample(1:10,200) #repetition
sample(1:10,200,replace=TRUE) #repitition is allowed
sample(c('hp','apple','lenovo'),7,replace = T)
sample(c('hp','apple','lenovo'),2)
##################

#Indexing in R always start with 1
#Indexing/accessing vector elements
x=c(2,5,8,20,10,30,58)
x[7] #x is vector name and go to element 7
x[1]
x[c(4,5)] #to pass more than one element use c function
x[-1] #exclude first element
x[-2] #exclude second index element
x[c(-1,-4)] #to exclude more than one
x[1]=3
x
x[-1]=5 #excluding 1 all elements become 5
x

x[3]=10
x
x[c(1,3)]#1st and 3rd element will be displayed

y=c(1,9,9,9)
y
y<9
y[y<9]=7
y
y[y>7]=10
y
###################

#relational operators with vectors

marks=c(60,70,80,50,90)
marks>50
marks[marks>50]
marks==80
marks[marks==80]
names=c("snehal",'Pooja','vidya','Ganesh')
p1=c('a','b')
'pooja' %in% names #to find pooja in vector names (false due to case sensitive)
'Pooja' %in% names
####################


#slicing
marks
marks[3:7] #will get marks from index 3 to7
marks[4]

marks[3]=99 #replace 3rd with 99
marks

marks[-3]=100 #excluding index no 3 make all element 100
marks
marks[6]=90 #adding 6th element
marks

price=c(2999,449,29,650,2800,192,9384,373,474,4745)
price[2:7]
#select elemts from a vector with condition
price[price>1000]
sort(price) #by default sorting is in ascending order
sort(price,descending=T) #raise an error
help(sort)
sort(price,decreasing=T) #correct command

help(mean)

length(marks)
help(paste)

paste(1:12)
nth=paste(1:12,c('st','nd','rd',rep('th',9))) #combining 1:12 using c and rep 
nth
month.abb
month.name

paste(month.abb,"is the",nth,"month of the year")
#basic functions on vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
mode(price) #gives type of data
help(mode)

#Data frames= it is kind of tabular structure to create u should have same no of elements in both vectors
#slicing data frames
a=c(42,18,91,87,66)
b=c('p','q','r','s','t')

data.frame(a,b)
df=data.frame(a,b) #to store in data section obs=row, col=variable

df1=data.frame(
  Training=c('strength','stamina','other'), #all 3 conditions should have same no of values
  pulse=c(100,150,120),
  duration=c(60,30,45)
)
df1

df1[,1] #all rows, 1st column
df1[2,] #2nd row and all cols
df1[,3]
df1[,]
df1$Training
df2=data.frame(
  height=c(15,16),weight=c(65,72)
)
food=data.frame(name=c('pavbhaji','paneer masala','kaju katli','Butter Chicken','Gulabjamun','Mutton biriyani'),
    type=c('veg','veg','veg','nonveg','veg','nonveg'),
    taste=c('spicy','spicy','sweet','spicy','sweet','spicy'),
    price=c(120,235,420,340,90,315))
food

#rows with food type=veg
food[food$type=='veg',] 

#food names and prices of all nonveg item
food[food$type=='nonveg',c(1,4)]
#or
food[food$type=='nonveg',c('name','price')]

#all spicy food with price less than 300
food[food$taste=='spicy'& food$price<300,]
food[food$taste=='spicy'| food$price<300,]

#Orange, mtcars are built in data set.learn with this dataset
Orange
mtcars

dim(mtcars) #dimension of mtcars gives no of rows and no of cols
nrow(mtcars) #no of rows
ncol(mtcars) #no of cols
str(mtcars) #structure of mtcars- cols names data type and values
#obs means row and variables means cols
summary(mtcars)
help(mtcars) #info of dataset
mtcars$cyl #individual col cyl values
table(mtcars$cyl) #there are 11 cars having 4 cylinders, 7 cars-6cycl, 14 cars-8cyl
#table function gives you unique value
mtcars$gear
table(mtcars$gear)

#USArrests-another dataset
USArrests
help("USArrests")
View(USArrests) #datasets opens in new window in table format

head(USArrests) #by default shows first 6 record
tail(USArrests) #last 6 record
head(USArrests,8)
tail(USArrests,10)

#check all available dataset
data()
