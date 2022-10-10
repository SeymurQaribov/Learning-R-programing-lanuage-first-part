#let create matrix
#matrix() function
data<-1:20
A<-matrix(data,4,5)
A
A[2,3]
B<-matrix(data,4,5,byrow=T)# the sequnce according to row
B
# rbind function
r1<-c('a','b','c')
r2<-c('d','e','f')
r3<-c(1,2,3)
shedule<-rbind(r1,r2,r3)
shedule

# cbind function
D<-cbind(r1,r2,r3)
D#opposite of rbind

# Named vector
charlie<- 1:5
charlie

#give name
names(charlie)<-c('a','b','c','d','e')
charlie
charlie['d']

#clean name
names(charlie)<-NULL
charlie

# named matrix
tep.vec<-rep(c('a','B','Zz'),each=3)
tep.vec
#each use for create order of each value, liek to value=a and the order of value is a,a,a,a,a....
K<-matrix(tep.vec,3,3)
K

rownames(K)<-c('how','are','you')
colnames(K)<-c('1','2','3')
K
K[1,2]
K['how','2']# the same result with K[1,2]

rownames(K)<-NULL
K



# new section 



Seasons <- c("2005","2006","2007","2008","2009","2010","2011","2012","2013","2014")


Players <- c("KobeBryant","JoeJohnson","LeBronJames","CarmeloAnthony","DwightHoward","ChrisBosh","ChrisPaul","KevinDurant","DerrickRose","DwayneWade")




KobeBryant_MP <- c(3277,3140,3192,2960,2835,2779,2232,3013,177,1207)
JoeJohnson_MP <- c(3340,2359,3343,3124,2886,2554,2127,2642,2575,2791)
LeBronJames_MP <- c(3361,3190,3027,3054,2966,3063,2326,2877,2902,2493)
CarmeloAnthony_MP <- c(2941,2486,2806,2277,2634,2751,1876,2482,2982,1428)
DwightHoward_MP <- c(3021,3023,3088,2821,2843,2935,2070,2722,2396,1223)
ChrisBosh_MP <- c(2751,2658,2425,2928,2526,2795,2007,2454,2531,1556)
ChrisPaul_MP <- c(2808,2353,3006,3002,1712,2880,2181,2335,2171,2857)
KevinDurant_MP <- c(1255,1255,2768,2885,3239,3038,2546,3119,3122,913)
DerrickRose_MP <- c(1168,1168,1168,3000,2871,3026,1375,0,311,1530)
DwayneWade_MP <- c(2892,1931,1954,3048,2792,2823,1625,2391,1775,1971)
#Matrix
MinutesPlayed <- rbind(KobeBryant_MP, JoeJohnson_MP, LeBronJames_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, ChrisPaul_MP, KevinDurant_MP, DerrickRose_MP, DwayneWade_MP)
rm(KobeBryant_MP, JoeJohnson_MP, CarmeloAnthony_MP, DwightHoward_MP, ChrisBosh_MP, LeBronJames_MP, ChrisPaul_MP, DerrickRose_MP, DwayneWade_MP, KevinDurant_MP)
colnames(MinutesPlayed) <- Seasons
rownames(MinutesPlayed) <- Players

#Field Goals
MinutesPlayed

#now vizulezation
t(MinutesPlayed)

matplot(t(MinutesPlayed),type="b",pch=15:18,col=(2:8))

?matplot
#now let's creat a legend
legend('bottomleft',inset=0.01,legend<0.5,xjust=0,
       title='Prof.seymur', legend=Players,pch=15:18,col=(1:4.6),horiz =F )
?legend


