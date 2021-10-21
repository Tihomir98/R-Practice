library(MASS)
Warning message:
package ‘MASS’ was built under R version 3.5.3 
> attach(homedata)
Error in attach(homedata) : object 'homedata' not found
> data(survey)
> ?survey
> attach(survey)
> library(homedata)
Error in library(homedata) : there is no package called ‘homedata’
> h = hist(Height)
> str(h)
List of 6
 $ breaks  : int [1:11] 150 155 160 165 170 175 180 185 190 195 ...
 $ counts  : int [1:10] 8 16 29 45 33 30 26 14 6 2
 $ density : num [1:10] 0.00766 0.01531 0.02775 0.04306 0.03158 ...
 $ mids    : num [1:10] 152 158 162 168 172 ...
 $ xname   : chr "Height"
 $ equidist: logi TRUE
 - attr(*, "class")= chr "histogram"
> h $ breaks
 [1] 150 155 160 165 170 175 180 185 190 195 200
> min(Height)
[1] NA
> min(Height,na.rm=T)
[1] 150
> max(Height,na.rm=T)
[1] 200
> br=seq(150,200,2)
> br
 [1] 150 152 154 156 158 160 162 164 166 168 170 172 174 176 178 180 182 184 186 188 190 192 194 196 198 200
> h= hist(Height,breaks=br)
> h= hist(Height,breaks=br,col='red')
> h= hist(Height,breaks=br,col=rainbow(10))
> h= hist(Height,breaks=br,col=rainbow(15))
> h= hist(Height,breaks=br,col=rainbow(20))
> h= hist(Height,breaks=br,col=rainbow(25))
> h= hist(Height)
> h= hist(Height,xlim = c(0,200))
> ?xlim
> h= hist(Height,xlim = c(0,200),ylim=c(0,60))
> h= hist(Height,xlim = c(50,170))
> h= hist(Height)
> boxplot(Height)
> boxplot(Height~Sex)
> h= hist(Height)
> h
$`breaks`
 [1] 150 155 160 165 170 175 180 185 190 195 200

$counts
 [1]  8 16 29 45 33 30 26 14  6  2

$density
 [1] 0.007655502 0.015311005 0.027751196 0.043062201 0.031578947 0.028708134 0.024880383 0.013397129 0.005741627
[10] 0.001913876

$mids
 [1] 152.5 157.5 162.5 167.5 172.5 177.5 182.5 187.5 192.5 197.5

$xname
[1] "Height"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
> lines(h$mids,h$counts)
> lines(c(150,h$mids,200),c(0,h$counts,0),col='red')
> lines( density(Height,na.rm=T))
> hist(Height,probability=T)
> lines( density(Height,na.rm=T))
> density(Height,na.rm=T)

Call:
	density.default(x = Height, na.rm = T)

Data: Height (209 obs.);	Bandwidth 'bw' = 3.045

       x               y            
 Min.   :140.9   Min.   :7.140e-06  
 1st Qu.:157.9   1st Qu.:1.364e-03  
 Median :175.0   Median :1.159e-02  
 Mean   :175.0   Mean   :1.463e-02  
 3rd Qu.:192.1   3rd Qu.:2.672e-02  
 Max.   :209.1   Max.   :4.172e-02  
> d=density(Height,na.rm=T)
> str(d)
List of 7
 $ x        : num [1:512] 141 141 141 141 141 ...
 $ y        : num [1:512] 8.54e-06 9.77e-06 1.12e-05 1.28e-05 1.46e-05 ...
 $ bw       : num 3.04
 $ n        : int 209
 $ call     : language density.default(x = Height, na.rm = T)
 $ data.name: chr "Height"
 $ has.na   : logi FALSE
 - attr(*, "class")= chr "density"
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
 split.screen(c(2,2))
[1] 1 2 3 4
> boxplot(Height)
> screen(2)
> hist(Height)
> close.screen()
[1] 1 2 3 4
> close.screen(all.screens=T)
> hist(Height)
> hist[Height[Sex=='Male']]
Error in hist[Height[Sex == "Male"]] : 
  object of type 'closure' is not subsettable
> hist(Height[Sex=='Male'])
> hist(Height[Sex=='Female'])
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> lines(c(150,h$mids,200),c(0,h$counts,0),col='red')
> h=hist(Height)
> lines(h$mids,h$counts)
> lines(c(150,h$mids,200),c(0,h$counts,0),col='red')
> lines( density(Height,na.rm=T))
> hist(Height,probability=T)
> lines( density(Height,na.rm=T))
> density(Height,na.rm=T)

Call:
	density.default(x = Height, na.rm = T)

Data: Height (209 obs.);	Bandwidth 'bw' = 3.045

       x               y            
 Min.   :140.9   Min.   :7.140e-06  
 1st Qu.:157.9   1st Qu.:1.364e-03  
 Median :175.0   Median :1.159e-02  
 Mean   :175.0   Mean   :1.463e-02  
 3rd Qu.:192.1   3rd Qu.:2.672e-02  
 Max.   :209.1   Max.   :4.172e-02  
> d=density(Height,na.rm=T)
> d

Call:
	density.default(x = Height, na.rm = T)

Data: Height (209 obs.);	Bandwidth 'bw' = 3.045

       x               y            
 Min.   :140.9   Min.   :7.140e-06  
 1st Qu.:157.9   1st Qu.:1.364e-03  
 Median :175.0   Median :1.159e-02  
 Mean   :175.0   Mean   :1.463e-02  
 3rd Qu.:192.1   3rd Qu.:2.672e-02  
 Max.   :209.1   Max.   :4.172e-02  
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> h=hist(Height~Sex)
Error in hist.default(Height ~ Sex) : 'x' must be numeric
> h=hist(Height)
> lines( density(Height[Sex=='Male'],na.rm=T))
> h=hist(Height[Sex=='Male'])
> lines( density(Height[Sex=='Male'],na.rm=T))
> lines(h$mids,h$counts)
> h=hist(Height[Sex=='Male'])
> lines(h$mids,h$counts)
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> lines( density(Height[Sex=='Male'],na.rm=T))
> h=hist(Height[Sex=='Male'])
> hist(Height[Sex=='Male'],probability=T)
> lines(density(Height[Sex=='Male'],na.rm=T))
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> h1=hist(Height[Sex=='Female'])
> hist(Height[Sex=='Female'],probability=T)
> lines(density(Height[Sex=='Female'],na.rm=T))
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> split.screen()
[1] FALSE
> split.screen(2)
Error in seq.int(0, 1, length.out = nc + 1) : 
  'length.out' must be a non-negative number
> split.screen(c(1,2))
[1] 1 2
> screen(1)
> h=hist(Height[Sex=='Male'])
> hist(Height[Sex=='Male'],probability=T)
> lines(density(Height[Sex=='Male'],na.rm=T))
> lines(c(150,h$mids,200),c(0,h$density,0),col='red')
> screen(2)
> h1=hist(Height[Sex=='Female'])
> hist(Height[Sex=='Female'],probability=T)
> close.screen(all.screens=T)
> split.screen(c(1,2))
[1] 1 2
> screen(1)
> h1=hist(Height[Sex=='Male'],probability=T)
> lines(density(Height[Sex=='Male'],na.rm=T))
> lines(c(150,h1$mids,200),c(0,h1$density,0),col='red')
> screen(2)
> h2= hist(Height[Sex=='Female'],probability=T)
> lines(density(Height[Sex=='Female'],na.rm=T))
> lines(c(150,h2$mids,200),c(0,h2$density,0),col='red')
> close.screen(all.screens=T)
> plot(Pulse,Height)
> cor(Pulse,height,na.rm=T)
Error in cor(Pulse, height, na.rm = T) : unused argument (na.rm = T)
> cor(Pulse,Height,na.rm=T)
Error in cor(Pulse, Height, na.rm = T) : unused argument (na.rm = T)
> ?cor
> is.na(Pulse)[1:20]
 [1] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
[19]  TRUE FALSE
> nna=!(is.na(Pulse)|is.na(Height))
> cor(Pulse[nna],Height[nna])
[1] -0.08394058
> x=runif(100,0,10)
> y=2*x+1
> plot(x,y)
> cor(x,y)
[1] 1
> y=-3*x+1
> plot(x,y)
> cor(x,y)
[1] -1
> y=-3*x+1+rnorm(100)
> plot(x,y)
> cor(x,y)
[1] -0.9921972
> y=-3*x+1+5*rnorm(100)
> plot(x,y)
> cor(x,y)
[1] -0.8577431
> ?survey
> plot(Height,Wr.Hnd)
> library(UsingR)
Loading required package: HistData
Loading required package: Hmisc
Loading required package: lattice
Loading required package: survival
Loading required package: Formula
Loading required package: ggplot2

Attaching package: ‘Hmisc’

The following objects are masked from ‘package:base’:

    format.pval, units


Attaching package: ‘UsingR’

The following object is masked from ‘package:survival’:

    cancer

Warning messages:
1: package ‘UsingR’ was built under R version 3.5.3 
2: package ‘HistData’ was built under R version 3.5.3 
3: package ‘Hmisc’ was built under R version 3.5.3 
4: package ‘survival’ was built under R version 3.5.3 
5: package ‘Formula’ was built under R version 3.5.2 
6: package ‘ggplot2’ was built under R version 3.5.3 
> attach(homedata)
> plot(homedata)
> plot(y1970,y2000)
> plot(survey)
abline(lm(y2000 ~ y1970))
> plot(y1970,y2000)
> abline(lm(y2000 ~ y1970))
> lm(y2000 ~ y1970)

Call:
lm(formula = y2000 ~ y1970)

Coefficients:
(Intercept)        y1970  
 -1.040e+05    5.258e+00  

> summary(lm(y2000 ~ y1970))

Call:
lm(formula = y2000 ~ y1970)

Residuals:
    Min      1Q  Median      3Q     Max 
-416665  -36308     809   34372  536605 

Coefficients:
              Estimate Std. Error t value Pr(>|t|)    
(Intercept) -1.040e+05  2.337e+03  -44.51   <2e-16 ***
y1970        5.258e+00  3.147e-02  167.07   <2e-16 ***
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 58000 on 6839 degrees of freedom
Multiple R-squared:  0.8032,	Adjusted R-squared:  0.8032 
F-statistic: 2.791e+04 on 1 and 6839 DF,  p-value: < 2.2e-16

> identify(y1970,y2000)
[1]  220 1064 2048
> plot(y1970,y2000)
> abline(lm(y2000 ~ y1970))
> identify(y1970,y2000,2)
[1] 3532 3549
> plot(y1970,y2000)
> identify(y1970,y2000,n=2)
[1]  220 3087
> y2000[3087]
[1] 943800
> boxplot(homedata)
> plot(y1970,y2000)
> ?anscomble
No documentation for ‘anscomble’ in specified packages and libraries:
you could try ‘??anscomble’
> ?anscombe
> plot(anscombe)
> anscombe
   x1 x2 x3 x4    y1   y2    y3    y4
1  10 10 10  8  8.04 9.14  7.46  6.58
2   8  8  8  8  6.95 8.14  6.77  5.76
3  13 13 13  8  7.58 8.74 12.74  7.71
4   9  9  9  8  8.81 8.77  7.11  8.84
5  11 11 11  8  8.33 9.26  7.81  8.47
6  14 14 14  8  9.96 8.10  8.84  7.04
7   6  6  6  8  7.24 6.13  6.08  5.25
8   4  4  4 19  4.26 3.10  5.39 12.50
9  12 12 12  8 10.84 9.13  8.15  5.56
10  7  7  7  8  4.82 7.26  6.42  7.91
11  5  5  5  8  5.68 4.74  5.73  6.89
> mid=c(mean(x,y),[1:4])
Error: unexpected '[' in "mid=c(mean(x,y),["
> ?mean
> mean(x,y,na,rm=T)
Error in mean.default(x, y, na, rm = T) : object 'na' not found
> mean(x1,y1)
Error in mean.default(x1, y1) : object 'y1' not found
> split.screen(c(2,2))
[1] 1 2 3 4
> screen(1)
> plot(x1,y1)
Error in xy.coords(x, y, xlabel, ylabel, log) : object 'y1' not found
> close.screen(all.screens=T)
> summary(x1,y1)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    1.25    1.50    1.50    1.75    2.00 
> summary(x2,y2)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   3.00    3.25    3.50    3.50    3.75    4.00 
> summary(x3,y3)
Error in summary(x3, y3) : object 'x3' not found
> summary(x4,y4)
Error in summary(x4, y4) : object 'x4' not found
> summary(x1,y2)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    1.25    1.50    1.50    1.75    2.00 
> summary(x2,y1)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   3.00    3.25    3.50    3.50    3.75    4.00
 ?plot
> summary(x1,y1)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    1.25    1.50    1.50    1.75    2.00 
> summary(x1,y2)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    1.25    1.50    1.50    1.75    2.00 
> summary(x2,y1)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   3.00    3.25    3.50    3.50    3.75    4.00 
> summary(x2,y2)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   3.00    3.25    3.50    3.50    3.75    4.00 
> ?summary
> ?abline
> attach(anscombe)
The following objects are masked _by_ .GlobalEnv:

    x1, x2

The following objects are masked from anscombe (pos = 3):

    x1, x2, x3, x4, y1, y2, y3, y4

> plot(x3,y3)
> abline(lm(y3~x3))
> identify(x3,y3)
[1] 3
> abline(lm(y3~x3[-3]))
Error in model.frame.default(formula = y3 ~ x3[-3], drop.unused.levels = TRUE) : 
  variable lengths differ (found for 'x3[-3]')
> plot(x3[3],y3)
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  'x' and 'y' lengths differ
> plot(x1,y1)
Error in xy.coords(x, y, xlabel, ylabel, log) : 
  'x' and 'y' lengths differ
> plot(x3,y3)
> 
> abline(lm(y3~x3))
> identify(x3,y3)
[1] 3
> plot(x3[-3],y3[-3])
> abline(lm(y3[-3]-x3[-3]))
Error in formula.default(object, env = baseenv()) : invalid formula
> abline(lm(y3[-3]~x3[-3]))
> plot(x3,y3)
> abline(lm(y3~x3))
> identify(x3,y3)
[1] 3
> plot(x3[-3],y3[-3])
> abline(lm(y3[-3]~x3[-3]))
> x[-c(2,5)]
 [1] 1.0803936 0.3136808 4.0587876 4.7520712 3.9185423 1.7335926 8.6436062 0.7637795 3.8516750 4.4636698 5.7728395
[12] 7.7853646 6.0944535 5.9313006 5.1094214 6.6656928 3.4119208 8.3325448 5.1783106 2.2006687 4.3427848 6.8740794
[23] 9.5533492 0.1286333 7.5869279 5.6104740 0.3782279 5.0466428 5.4149993 5.9800261 4.8092785 3.9951457 7.2891036
[34] 8.1540353 9.5297638 8.8392369 2.5712006 7.9920001 0.5181763 5.8487035 1.2313632 3.7123939 2.1580482 4.3240052
[45] 7.3214090 9.6330412 2.7724224 0.9525395 0.8213387 3.1550653 3.7325659 5.1231449 0.3126046 4.6398819 1.6441408
[56] 3.8619161 2.2195873 9.1051011 5.9557976 8.1827156 7.6258145 3.2352460 1.6745270 1.2418144 8.9618440 5.4322999
[67] 0.2194569 6.9992626 7.6248153 2.6045210 8.9823476 2.9108891 5.5173700 9.2052828 4.4728274 9.7779680 9.5053367
[78] 9.5716932 4.0183652 6.3158324 7.3869412 9.0964844 4.5326381 0.1126186 9.6063958 0.5027403 7.0469097 0.8421085
[89] 1.6938630 4.0387065 2.5708592 1.0925404 1.1008715 3.6304666 9.1918597 9.2672101 9.2317543 4.9020338
> ?read.csv
> getwd()
[1] "C:/Users/Tihomir/Documents"
> ?setwd
> setwd('D:\FMI\Bachelor\Informatics\Elective Courses\Софтуер за Научни Изчисления\2019 - R Studio\22.10.19')
Error: '\F' is an unrecognized escape in character string starting "'D:\F"
> setwd('D:/FMI/Bachelor/Informatics/Elective Courses/Софтуер за Научни Изчисления/2019 - R Studio/22.10.19')
> getwd()
[1] "D:/FMI/Bachelor/Informatics/Elective Courses/Софтуер за Научни Изчисления/2019 - R Studio/22.10.19"
> f=read.read.csv('Cdata.txt',headre=T)
Error in read.read.csv("Cdata.txt", headre = T) : 
  could not find function "read.read.csv"
> f=read.read.csv('Cdata.txt',header=T)
Error in read.read.csv("Cdata.txt", header = T) : 
  could not find function "read.read.csv"
> f=read.read.csv('Cdata.txt',header=T,sep=':')
Error in read.read.csv("Cdata.txt", header = T, sep = ":") : 
  could not find function "read.read.csv"
> f=read.read.csv('Cdata.txt',header=T,sep=';',dec='.')
Error in read.read.csv("Cdata.txt", header = T, sep = ";", dec = ".") : 
  could not find function "read.read.csv"
> f=read.read.csv2('Cdata.txt',header=T,sep=';',dec='.')
Error in read.read.csv2("Cdata.txt", header = T, sep = ";", dec = ".") : 
  could not find function "read.read.csv2"
> f=read.csv2('Cdata.txt',header=T,sep=';',dec='.')
> f$X
  [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27
 [28]  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
 [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72  73  74  75  76  77  78  79  80  81
 [82]  82  83  84  85  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
> f=read.csv('Cdata.txt',header=T,sep=';',dec='.')
> f$x
  [1] 4.0613348 4.2534654 3.7572709 1.2406144 1.6108035 1.6236860 4.3472272 1.6232178 3.7049141 4.3594433
 [11] 1.6801227 2.0314732 1.1792144 2.6272087 0.8992664 3.0914256 2.5169616 2.0107610 1.7050968 2.8817481
 [21] 4.7992336 3.5691583 4.5482897 3.4178554 3.1946053 2.9563804 2.2578962 0.5385711 2.3923274 3.2634794
 [31] 3.9259672 3.0667817 4.0406186 2.7171976 4.3758884 2.8820955 3.8005971 1.8651170 2.2595821 3.1343354
 [41] 0.8399244 3.0382505 3.7438522 3.4349175 3.2050839 1.4765302 1.8115633 2.5098443 3.3906615 3.8241007
 [51] 3.1543455 3.5405358 1.7232054 4.7761463 3.7276424 2.5299844 1.6940690 3.9719148 3.6240636 2.4219719
 [61] 2.1959582 2.7411348 1.0028628 2.6789436 2.9809373 3.2115426 3.9262966 3.9956034 4.9726060 3.8449830
 [71] 2.2805447 2.2634712 2.6698131 2.0757818 3.6977714 2.7019946 3.9335617 3.2765667 4.0257318 3.8095437
 [81] 2.3942385 3.0516666 3.6067491 4.9400083 3.2111656 3.5421676 1.4224082 3.1188784 1.8306661 2.9850752
 [91] 3.6373394 3.3201393 3.1088291 2.9315684 3.8226363 1.5614255 1.9540121 2.4152623 3.4071969 3.7516488
> str(f)
'data.frame':	100 obs. of  3 variables:
 $ X: int  1 2 3 4 5 6 7 8 9 10 ...
 $ x: num  4.06 4.25 3.76 1.24 1.61 ...
 $ y: num  5.52 7.08 5.64 1.28 2.17 ...
