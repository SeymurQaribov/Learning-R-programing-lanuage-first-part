myfirstvector<-c(9,6,7,8,10)
#checink the type of vector
is.numeric(myfirstvector)
is.integer(myfirstvector)
is.double(myfirstvector)

#let's creat charecter vector
V2<-c('a','b','word')
is.character(V2)
#integer vector
V3<-c(2L,20L,8L)
is.integer(V3)

seq()#sequenc-like(:)
rep()#replicat
seq(1,17)
(1:17)
rep(1,20)
#why seq()-because is more flexible, you can change condition
seq(1,29,3)
#now replicate vector and charecter
rep('a',20)
v4<-c(10,20)
rep(v4,10)




#grabing any charector from vector
V5<-c(10,2,3,4,5)

V5[1]
V5[2]
V5[-1]
V5[-3]
V6<-V5[1:4]
V6
V5[c(1,3,5)]
V5[-1:-3]


x<-rnorm(6)
#let's creat loop
x
for(i in x){
  print(i)
}#this is R spesific proraming loop

for(J in 1:6){
  print(x[J])
}#this is conventional programing loop

#.......second part
N<-100
a<-rnorm(N)
b<-rnorm(N)
#vectorized approach
K<-a*b
#De-vectorized approach
d<-rep(NA,N)#here NA<- we just tipe for creat empty vector
for(i in 1:N){
  d[i]<-a[i]*b[i]
}
d
#vectorize operations is much good

#third part
# ? mark use understaning the operation of function.
# for this reason you put it in front of function.


?sqrt()
sqrt(9)
?seq()
seq(from=5,to=30,length.out=20)
V7<-c('a','b','c','d')
V8<-seq(from=8,to=20,along.with=V7)
sqrt(V8)
paste(V8)
?paste()#change to charcter vector


#fourth part
install.packages('ggplot2')
library(ggplot2)
?ggplot
?qplot
?diamonds
qplot(data=diamonds,carat,price,colour=clarity,facets=.~clarity)

??facets# ?? use for defind understaning things
