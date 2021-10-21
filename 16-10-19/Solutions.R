attach(homedata)
Error in attach(homedata) : object 'homedata' not found
> library(Mass)
Error in library(Mass) : there is no package called ‘Mass’
> library(MASS)
Warning message:
package ‘MASS’ was built under R version 3.5.3 
> data(survey)
> ?survey
> str(Smoke)
Error in str(Smoke) : object 'Smoke' not found
> str(survey$Smoke)
 Factor w/ 4 levels "Heavy","Never",..: 2 4 3 2 2 2 2 2 2 2 ...
> attach(survey)
> levels(Smoke)
[1] "Heavy" "Never" "Occas" "Regul"
> sum(Smoke=='Regular',rm.na=T)
[1] NA
> sum(Smoke=='Regular',na.rm=T)
[1] 0
> sum(Smoke=='Regul',na.rm=T)
[1] 17
> lenght(Smoke)
Error in lenght(Smoke) : could not find function "lenght"
> length(Smoke)
[1] 237
> table(Smoke)
Smoke
Heavy Never Occas Regul 
   11   189    19    17 
> prop.table(table(Smoke))
Smoke
     Heavy      Never      Occas      Regul 
0.04661017 0.80084746 0.08050847 0.07203390 
> 17 / 236
[1] 0.0720339
> t=prop.table(table(Smoke))
> t
Smoke
     Heavy      Never      Occas      Regul 
0.04661017 0.80084746 0.08050847 0.07203390 
> str(t)
 'table' num [1:4(1d)] 0.0466 0.8008 0.0805 0.072
 - attr(*, "dimnames")=List of 1
  ..$ Smoke: chr [1:4] "Heavy" "Never" "Occas" "Regul"
> t[1]
     Heavy 
0.04661017 
> t[3]
     Occas 
0.08050847 
> t[4]
    Regul 
0.0720339 
> t['Regul']
    Regul 
0.0720339 
> sum(Sex=='Men' & Smoke=='Regular',na.rm=T)
[1] 0
> table(Sex,Smoke)
        Smoke
Sex      Heavy Never Occas Regul
  Female     5    99     9     5
  Male       6    89    10    12
> t=table(Sex,Smoke)
> sum(Sex=='Male' & Smoke=='Regular',na.rm=T)
[1] 0
> sum(Sex=='Male' & Smoke=='Regul',na.rm=T)
[1] 12
> t=table(Sex,Smoke)
> rm(t)
> t
function (x) 
UseMethod("t")
<bytecode: 0x000001884bd30cf0>
<environment: namespace:base>
> prop.table(t)
Error in sum(x) : invalid 'type' (closure) of argument
> t=table(Sex,Smoke)
> t
        Smoke
Sex      Heavy Never Occas Regul
  Female     5    99     9     5
  Male       6    89    10    12
> prop.table(t)
        Smoke
Sex           Heavy      Never      Occas      Regul
  Female 0.02127660 0.42127660 0.03829787 0.02127660
  Male   0.02553191 0.37872340 0.04255319 0.05106383
> prop.table(t,1)
        Smoke
Sex           Heavy      Never      Occas      Regul
  Female 0.04237288 0.83898305 0.07627119 0.04237288
  Male   0.05128205 0.76068376 0.08547009 0.10256410
> prop.table(t,2)
        Smoke
Sex          Heavy     Never     Occas     Regul
  Female 0.4545455 0.5265957 0.4736842 0.2941176
  Male   0.5454545 0.4734043 0.5263158 0.7058824
> t=table(Smoke)
> pie(t)
> pie(t,col=c('red','green','blue','yellow'))
> ?pie
> ?par
> ??
+ rm(??)
Error: unexpected ')' in:
"??
rm(??)"
> x=5
> x
[1] 5
> ?pie
> pie(rep(1, 24), col = rainbow(24), radius = 0.9)
> barplot(t)
> t
Smoke
Heavy Never Occas Regul 
   11   189    19    17 
> t[c(2,3,4,1)]
Smoke
Never Occas Regul Heavy 
  189    19    17    11 
> t1=t[c(2,3,4,1)]
> barplot(t)
> t=table(Sex,Smoke)
> barplot(t)
> barplot(t,legend=T)
> barplot(t,legend=T,beside=T)
> barplot(t,legend=T)
> t
        Smoke
Sex      Heavy Never Occas Regul
  Female     5    99     9     5
  Male       6    89    10    12
> t2=prop.table(t,2)
> barplot(t2)
> barplot(t2,legwnd=T)
Warning messages:
1: In plot.window(xlim, ylim, log = log, ...) :
  "legwnd" is not a graphical parameter
2: In axis(if (horiz) 2 else 1, at = at.l, labels = names.arg, lty = axis.lty,  :
  "legwnd" is not a graphical parameter
3: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "legwnd" is not a graphical parameter
4: In axis(if (horiz) 1 else 2, cex.axis = cex.axis, ...) :
  "legwnd" is not a graphical parameter
> barplot(t2,legend=T)
Warning messages:
1: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
2: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
3: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
4: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
5: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
6: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
7: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
8: In doTryCatch(return(expr), name, parentenv, handler) :
  "legwnd" is not a graphical parameter
> t2
        Smoke
Sex          Heavy     Never     Occas     Regul
  Female 0.4545455 0.5265957 0.4736842 0.2941176
  Male   0.5454545 0.4734043 0.5263158 0.7058824
> barplot(t2,legend=T)
> t2
        Smoke
Sex          Heavy     Never     Occas     Regul
  Female 0.4545455 0.5265957 0.4736842 0.2941176
  Male   0.5454545 0.4734043 0.5263158 0.7058824
> t2=[c(1,3,4,2)]
Error: unexpected '[' in "t2=["
> t2[c(1,3,4,2)]
[1] 0.4545455 0.5265957 0.4734043 0.5454545
> barplot(t2,legend=T)
> t2
        Smoke
Sex          Heavy     Never     Occas     Regul
  Female 0.4545455 0.5265957 0.4736842 0.2941176
  Male   0.5454545 0.4734043 0.5263158 0.7058824
> t2[,c(1,3,4,2)]
        Smoke
Sex          Heavy     Occas     Regul     Never
  Female 0.4545455 0.4736842 0.2941176 0.5265957
  Male   0.5454545 0.5263158 0.7058824 0.4734043
> barplot(t2)
> barplot(t2,legend=T)
> t2
        Smoke
Sex          Heavy     Never     Occas     Regul
  Female 0.4545455 0.5265957 0.4736842 0.2941176
  Male   0.5454545 0.4734043 0.5263158 0.7058824
> t3=t2[,c(2,3,4,1)]
> barplot(t3)
> barplot(t3,legend=T)
> barplot(t3,legend=T,besides=T)
Warning messages:
1: In plot.window(xlim, ylim, log = log, ...) :
  "besides" is not a graphical parameter
2: In axis(if (horiz) 2 else 1, at = at.l, labels = names.arg, lty = axis.lty,  :
  "besides" is not a graphical parameter
3: In title(main = main, sub = sub, xlab = xlab, ylab = ylab, ...) :
  "besides" is not a graphical parameter
4: In axis(if (horiz) 1 else 2, cex.axis = cex.axis, ...) :
  "besides" is not a graphical parameter
> barplot(t3,legend=T,beside=T)
Warning messages:
1: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
2: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
3: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
4: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
5: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
6: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
7: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
8: In doTryCatch(return(expr), name, parentenv, handler) :
  "besides" is not a graphical parameter
> ?survey
> ?age
No documentation for ‘age’ in specified packages and libraries:
you could try ‘??age’
> ?Age
No documentation for ‘Age’ in specified packages and libraries:
you could try ‘??Age’
> ?Age
No documentation for ‘Age’ in specified packages and libraries:
you could try ‘??Age’
> Age
  [1] 18.250 17.583 16.917 20.333 23.667 21.000 18.833 35.833 19.000 22.333 28.500 18.250 18.750 17.500 17.167
 [16] 17.167 19.333 18.333 19.750 17.917 17.917 18.167 17.833 18.250 19.167 17.583 17.500 18.083 21.917 19.250
 [31] 41.583 17.500 39.750 17.167 17.750 18.000 19.000 17.917 35.500 19.917 17.500 17.083 28.583 17.500 17.417
 [46] 18.500 18.917 19.417 18.417 30.750 18.500 17.500 18.333 17.417 20.000 18.333 17.167 17.417 17.667 18.417
 [61] 20.333 17.333 17.500 19.833 18.583 18.000 30.667 16.917 19.917 18.333 17.583 17.833 17.667 17.417 17.750
 [76] 20.667 23.583 17.167 17.083 18.750 16.750 20.167 17.667 17.167 17.167 17.250 18.000 18.750 21.583 17.583
 [91] 19.667 18.000 19.667 17.083 22.833 17.083 19.417 23.250 18.083 19.083 18.917 17.750 20.833 20.167 17.667
[106] 18.250 17.000 18.500 18.583 17.750 24.167 18.167 21.167 17.917 17.417 20.500 22.917 18.917 18.917 20.083
[121] 17.500 18.250 17.500 17.417 21.000 19.833 17.667 18.083 18.000 18.333 20.000 18.750 19.083 18.500 18.417
[136] 19.167 21.500 19.333 21.417 18.667 17.500 21.083 17.250 19.000 19.167 19.000 23.000 32.667 20.000 20.167
[151] 25.500 18.167 23.500 70.417 43.833 23.583 21.083 44.250 19.667 17.917 18.417 21.167 17.500 29.083 19.917
[166] 18.500 18.167 32.750 17.417 17.333 73.000 18.667 18.500 18.667 17.750 17.250 36.583 23.083 19.250 17.167
[181] 23.417 17.083 17.250 23.833 18.750 21.167 24.667 18.500 20.333 20.083 18.917 27.333 18.917 17.250 18.167
[196] 26.500 17.000 17.167 19.167 17.500 19.250 21.333 18.583 20.167 18.667 17.083 17.417 18.583 19.500 18.500
[211] 17.167 17.250 17.500 20.417 17.083 21.250 19.250 19.333 19.167 18.917 20.917 17.333 18.167 20.750 19.917
[226] 18.667 18.417 17.417 20.333 19.333 18.167 20.750 17.667 16.917 18.583 17.167 17.750
> ?cut
> age=sum(Age,ra.nm=T)
> age
[1] 4829.76
> age=sum(Age<20)
> cut(Age,breaks=c(0,20,25,100))
  [1] (0,20]   (0,20]   (0,20]   (20,25]  (20,25]  (20,25]  (0,20]   (25,100] (0,20]   (20,25]  (25,100] (0,20]  
 [13] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
 [25] (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (25,100] (0,20]   (25,100] (0,20]   (0,20]   (0,20]  
 [37] (0,20]   (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
 [49] (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
 [61] (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
 [73] (0,20]   (0,20]   (0,20]   (20,25]  (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (0,20]  
 [85] (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]  
 [97] (0,20]   (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (20,25]  (0,20]   (0,20]   (0,20]   (0,20]  
[109] (0,20]   (0,20]   (20,25]  (0,20]   (20,25]  (0,20]   (0,20]   (20,25]  (20,25]  (0,20]   (0,20]   (20,25] 
[121] (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
[133] (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (20,25]  (0,20]   (0,20]   (20,25]  (0,20]   (0,20]  
[145] (0,20]   (0,20]   (20,25]  (25,100] (0,20]   (20,25]  (25,100] (0,20]   (20,25]  (25,100] (25,100] (20,25] 
[157] (20,25]  (25,100] (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (25,100]
[169] (0,20]   (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (25,100] (20,25]  (0,20]   (0,20]  
[181] (20,25]  (0,20]   (0,20]   (20,25]  (0,20]   (20,25]  (20,25]  (0,20]   (20,25]  (20,25]  (0,20]   (25,100]
[193] (0,20]   (0,20]   (0,20]   (25,100] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (20,25] 
[205] (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (20,25] 
[217] (0,20]   (0,20]   (0,20]   (0,20]   (20,25]  (0,20]   (0,20]   (20,25]  (0,20]   (0,20]   (0,20]   (0,20]  
[229] (20,25]  (0,20]   (0,20]   (20,25]  (0,20]   (0,20]   (0,20]   (0,20]   (0,20]  
Levels: (0,20] (20,25] (25,100]
> str(Age)
 num [1:237] 18.2 17.6 16.9 20.3 23.7 ...
> table((0,20]))
Error: unexpected ',' in "table((0,"
> a=cut(Age,breaks=c(0,20,25,100))
> a[1:10]
 [1] (0,20]   (0,20]   (0,20]   (20,25]  (20,25]  (20,25]  (0,20]   (25,100] (0,20]   (20,25] 
Levels: (0,20] (20,25] (25,100]
> str(a)
 Factor w/ 3 levels "(0,20]","(20,25]",..: 1 1 1 2 2 2 1 3 1 2 ...
> levels(a)
[1] "(0,20]"   "(20,25]"  "(25,100]"
> a=cut(Age,breaks=c(0,20,25,100),labels=c('Y','M','O'))
> a[1:10]
 [1] Y Y Y M M M Y O Y M
Levels: Y M O
> table(a)
a
  Y   M   O 
174  44  19 
> barplot(a)
Error in barplot.default(a) : 'height' must be a vector or a matrix
> t=table(a)
> barplot(t)
> pie(t)
> t=table(Smoke,a)
> barplot(t)
> barplot(t,legend=T)
> barplot(t,legend=T,beside=T)
> t4=barplot(t,legend=T,beside=T)
> pie(t4)
> t4=barplot(t,legend=T,beside=T)
> t4
     [,1] [,2] [,3]
[1,]  1.5  6.5 11.5
[2,]  2.5  7.5 12.5
[3,]  3.5  8.5 13.5
[4,]  4.5  9.5 14.5
> barplot(t,legend=T)
> t=table(Smoke,a)
> barplot(t)
> barplot(t,legend=T)
> t1=barplot(t,legend=T)
> prop.table(t1)
[1] 0.1228070 0.3333333 0.5438596
> t2=prop.table(t1,2)
Error in margin.table(x, margin) : 'x' is not an array
> t=table(Smoke,a)
> barplot(t)
> barplot(t,legend=T)
> t2=prop.table(t)
> barplot(t2,legend=T)
> t2=prop.table(t,2)
> barplot(t2,legend=T)
> barplot(t2,legend=T,beside=T)
> barplot(t2,legend=T)
> barplot(t2,legend=T,beside=T)
> ?median
> ?quantile
> x=1:10
> mean(x)
[1] 5.5
> quntile(x)
Error in quntile(x) : could not find function "quntile"
> quantile(x)
   0%   25%   50%   75%  100% 
 1.00  3.25  5.50  7.75 10.00 
> summary(x)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
   1.00    3.25    5.50    5.50    7.75   10.00 
> ?quantile
> quantile(x,o.3)
Error in quantile.default(x, o.3) : object 'o.3' not found
> quantile(x,0.3)
30% 
3.7 
> var(x)
[1] 9.166667
> quantile(1)
  0%  25%  50%  75% 100% 
   1    1    1    1    1 
> sd(x)
[1] 3.02765
> mean(Age)
[1] 20.37451
> ?ququantile(Age)
Error in .helpForCall(topicExpr, parent.frame()) : 
  no methods for ‘ququantile’ and no documentation for it as a function
> Quantile(Age)
Error in Quantile(Age) : could not find function "Quantile"
> quantile(Age)
    0%    25%    50%    75%   100% 
16.750 17.667 18.583 20.167 73.000 
> ?survey
> mean(Height)
[1] NA
> mean(Height,ra.nm=T)
[1] NA
> mean(Height,na.rm=T)
[1] 172.3809
> t1=mean(Height,na.rm=T)
> t2=quantile(Height,ra.nm=T)
Error in quantile.default(Height, ra.nm = T) : 
  missing values and NaN's not allowed if 'na.rm' is FALSE
> t2=quantile(Height)
Error in quantile.default(Height) : 
  missing values and NaN's not allowed if 'na.rm' is FALSE
> Height[Sex=='Male']
  [1] 177.80     NA 160.00 165.00 182.88 175.00 167.00     NA     NA 182.88 190.50 177.00 190.50 180.34 180.34
 [16] 184.00     NA 172.72 175.26     NA 167.00 180.00 180.00     NA 190.00 182.50 185.00 171.00 172.00 180.34
 [31] 180.00 170.00 200.00 190.00 170.18 179.00 182.00 171.00     NA 177.80 175.26 187.00 183.00 180.00     NA
 [46] 176.00 185.42     NA 176.50 167.64 179.00 183.00 179.00 190.00 165.00 187.00 170.00 180.00 180.34 190.50
 [61] 185.00 193.04 184.00     NA 177.00 180.00 175.26 180.34 178.50 187.96 178.00 175.26 189.00     NA 182.88
 [76] 170.00 180.00 185.00 187.96 185.42 195.00 172.72 180.34 173.00     NA 187.96 187.00 168.00 191.80 177.00
 [91] 189.00 180.34 182.88 172.72 172.00 170.00 175.00 168.00 165.00 173.00 196.00 179.10 180.00 176.00 154.94
[106] 174.00 179.10 160.00 165.00     NA 165.00 170.00 185.00 188.00 171.00 185.00 185.00 180.34 183.00
> Height[Sex=='Male',na.rm=T]
Error in Height[Sex == "Male", na.rm = T] : 
  incorrect number of dimensions
> mean(Height[Sex=='male'],na.rm=T)
[1] NaN
> summary(Height)
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  150.0   165.0   171.0   172.4   180.0   200.0      28 
> summary(height[Sex=='Male'])
Error in summary(height[Sex == "Male"]) : object 'height' not found
> summary(Height[Sex=='Male'])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  154.9   172.8   180.0   178.8   185.0   200.0      13 
> summary(Height[Sex=='Female'])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
  150.0   162.6   166.8   165.7   170.0   180.3      17 
> sd(Height)
[1] NA
> sd(Height,na.rm=T)
[1] 9.847528
> m=mean(Height,na.rm=T)
> s=sd(Height,na.rm=T
+ s=sd(Height,na.rm=T
Error: unexpected symbol in:
"s=sd(Height,na.rm=T
s"
> s=sd(Height,na.rm=T)
> m
[1] 172.3809
> s
[1] 9.847528
> c=cut(height,breaks=c(m-s,m+s))
Error in cut(height, breaks = c(m - s, m + s)) : 
  object 'height' not found
> c=cut(Height,breaks=c(m-s,m+s))
> table(c)
c
(163,182] 
      143 
> length(Height)
[1] 237
> 143/237
[1] 0.6033755
> 143/(237-28)
[1] 0.6842105
> c=cut(Height,breaks=c(m-2*s,m+2*s))
> table(c)
c
(153,192] 
      202 
> 202/(237-28)
[1] 0.9665072
> c=cut(Height,breaks=c(m-3*s,m+3*s))
> c
  [1] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
 [11] (143,202] <NA>      (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202]
 [21] (143,202] (143,202] (143,202] (143,202] <NA>      <NA>      (143,202] (143,202] <NA>      (143,202]
 [31] <NA>      (143,202] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202]
 [41] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
 [51] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] <NA>      (143,202] (143,202]
 [61] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] <NA>      (143,202] <NA>     
 [71] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
 [81] <NA>      (143,202] <NA>      <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] <NA>     
 [91] (143,202] <NA>      (143,202] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202]
[101] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] <NA>      (143,202] (143,202]
[111] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[121] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[131] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[141] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[151] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202]
[161] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[171] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] <NA>      (143,202]
[181] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[191] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[201] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
[211] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202] <NA>      (143,202] (143,202] (143,202]
[221] (143,202] (143,202] (143,202] (143,202] <NA>      <NA>      (143,202] (143,202] (143,202] (143,202]
[231] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202] (143,202]
Levels: (143,202]
> c=cut(Height,breaks=c(m-3*s,m+3*s))
> table(c)
c
(143,202] 
      209 
> 209/(237-28)
[1] 1
> boxplot(Height)
> boxplot(Height,horizontal=T)
> boxplot(Height,Sex='Male')
> boxplot(Height,Sex='Female')
> boxplot(Height,Sex='Male')
> t1=boxplot(Height[Sex='Male'])
Error in plot.window(xlim = xlim, ylim = ylim, log = log, yaxs = pars$yaxs) : 
  need finite 'ylim' values
In addition: Warning messages:
1: In min(x) : no non-missing arguments to min; returning Inf
2: In max(x) : no non-missing arguments to max; returning -Inf
> t1=boxplot(Height,Sex='Male')
> t2=boxplot(Height[Sex=='Female'],Height[Sex=='Male'])
> boxplot(Height ~ Sex)
> boxplot(Height ~ Smoke)
> hist(Height)
> h=hist(Height)
> str(h)
List of 6
 $ breaks  : int [1:11] 150 155 160 165 170 175 180 185 190 195 ...
 $ counts  : int [1:10] 8 16 29 45 33 30 26 14 6 2
 $ density : num [1:10] 0.00766 0.01531 0.02775 0.04306 0.03158 ...
 $ mids    : num [1:10] 152 158 162 168 172 ...
 $ xname   : chr "Height"
 $ equidist: logi TRUE
 - attr(*, "class")= chr "histogram"
 hist(Height,probability=T)
> hist(Height,probability=T)
> ?survey
> hist(Pulse[Sex='Male'])
Error in hist.default(Pulse[Sex = "Male"]) : invalid number of 'breaks'
> hist(Pulse[Sex=='Male'])
> h1=hist(Pulse[Sex=='Male'])
> h2=hist(Pulse[Sex=='Female'])
> hist(h1,h2)
Error in hist.default(h1, h2) : 'x' must be numeric
> h1
$`breaks`
[1]  30  40  50  60  70  80  90 100 110

$counts
[1]  1  1 12 28 32 16  5  1

$density
[1] 0.001041667 0.001041667 0.012500000 0.029166667 0.033333333 0.016666667 0.005208333 0.001041667

$mids
[1]  35  45  55  65  75  85  95 105

$xname
[1] "Pulse[Sex == \"Male\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
> h2
$`breaks`
[1]  40  50  60  70  80  90 100 110

$counts
[1]  4  4 30 32 16  8  1

$density
[1] 0.004210526 0.004210526 0.031578947 0.033684211 0.016842105 0.008421053 0.001052632

$mids
[1]  45  55  65  75  85  95 105

$xname
[1] "Pulse[Sex == \"Female\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
> hist(h1)
Error in hist.default(h1) : 'x' must be numeric
> h1
$`breaks`
[1]  30  40  50  60  70  80  90 100 110

$counts
[1]  1  1 12 28 32 16  5  1

$density
[1] 0.001041667 0.001041667 0.012500000 0.029166667 0.033333333 0.016666667 0.005208333 0.001041667

$mids
[1]  35  45  55  65  75  85  95 105

$xname
[1] "Pulse[Sex == \"Male\"]"

$equidist
[1] TRUE

attr(,"class")
[1] "histogram"
> h1=hist(Pulse[Sex=='Male'])
> h2=hist(Pulse[Sex=='Female'])
> boxplot(h1,h2)
Error in x[floor(d)] + x[ceiling(d)] : 
  non-numeric argument to binary operator
> boxplot(Pulse[Sex=='Male'],Pulse[Sex=='Female'])
> ?survey
> boxplot(Pulse ~ Sex)
?density
hist(Pulse)
> hist(Pulse,probability=T)
> lines(density(Pulse))
Error in density.default(Pulse) : 'x' contains missing values
> lines(density(Pulse,na.rm=T))
