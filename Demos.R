

# Hello World!

hello <- function( name )
{
  sprintf("Hello %s", name );
}

hello("Raul")


# Demonstrations of R functionality
help(demo)


demo(package = .packages(all.available = TRUE))

demo(graphics)


# Getting help
help()

help(par)


# Vectors: 

myVector1 <- c(1, 2, 3, 56, 42, 31)

myVector1

myVector1[4]

myVector1[4] -> Pos4

Pos4 <- 4

myVector1[4] <- Pos4

myVector1

myVector2 <- c(1, 1, 1, 1, 1, 1)
myVector3 <- c(3, 3, 3)
myVector4 <- c(10, 100)

myVector1 + myVector2

myVector1 + myVector3

myVector1 + myVector4

# Sequences:

mySeq1 = 1:10

mySeq1

10:1

mySeq2 = seq(from=1, to=5)

mySeq2

mySeq1 + mySeq2

mySeq3 = seq(-1, 1, by=.1) 
mySeq3

# Visalizing data

plot(mySeq3)

help(plot)
help(par)

barplot(mySeq3)

barplot(mySeq3, col=c(1,2,3,4,5))

# Boolean 

mySeq3 == mySeq1

mySeq3 == mySeq3

1 & 1

1 & 0 

0 | 1

1 & !1

length(myVector1) == length(myVector2)
length(myVector1) == length(myVector3)

# Matrices

myMatrix1 <- 1:40
dim(myMatrix1) <- c(2, 2, 10)
dim(myMatrix1)
myMatrix1[1,2,4]
myMatrix1[2,,]
myMatrix1[,1,]
myMatrix1[,,6]

help(cbind)
help(rbind)

# Playing around, discovering

points <- seq(-1,1,by=.1)
values <- dnorm(points)
plot(points, values, type="l")

values2 <- pnorm(points)
plot(points, values2, type="l")

values3 <- rnorm(points)
plot(points, values3, type="l")


hist(values2)
hist(values3)


if (1 == 1) print("hola") else print("adios")

if (1 != 1) print("hola") else print("adios")

for (x in 1:5) { print(x) }

x <- 1
while (x < 6) { print(x); x <- x+1 }

x <- 5
repeat
{
  print(x);
  x <- x-1
  if (x == 0) break;
}

  
