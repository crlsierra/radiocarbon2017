
rcps=read.csv("~/Repos/radiocarbon2017/assets/data/C14RCPscenarios.csv")

matplot(rcps[,1],rcps[,2:5],type="l",lty=1,col=1:4, xlab="Year", ylab="Atmospheric radiocarbon in Delta14C (per mil)", bty="n")
abline(h=0,lty=2)


years=seq(1901,2009,by=0.5)
LitterInput=100
k=c(k1=1/2, k2=1/10, k3=1/50)
C0=c(100,500,1000)

# Bind IntCal13 with Hua2013 NH Zone 1
ad=bind.C14curves(prebomb=IntCal13,postbomb=Hua2013$NHZone1,time.scale="AD")

rcp2.6=rcps[rcps[,1]>2009,1:2]
names(rcp2.6)<-colnames(ad[,1:2])

Atm2.6=rbind(ad[,1:2],rcp2.6)

prl2.6=ThreepParallelModel14(
  t=Atm2.6$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  gam1=0.6,
  gam2=0.2,
  inputFc=Atm2.6
)

a21=0.9*k[1] #90% from fast to intermediate pool
a32=0.4*k[2] #40 from intermediate to slow pool

srs2.6=ThreepSeriesModel14(
  t=Atm2.6$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  a21=a21,
  a32=a32,
  inputFc=Atm2.6
)


a12=0.4*k[2]
a23=0.7*k[3]

fdbk2.6=ThreepFeedbackModel14(
  t=Atm2.6$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  a21=a21,
  a12=a12,
  a32=a32,
  a23=a23,
  inputFc=Atm2.6
)

# Parallel model
P.R14m=getF14R(prl2.6)
P.C14m=getF14C(prl2.6)
P.C14t=getF14(prl2.6)

# Series model
S.R14m=getF14R(srs2.6)
S.C14m=getF14C(srs2.6)
S.C14t=getF14(srs2.6)

# Feedback model
F.R14m=getF14R(fdbk2.6)
F.C14m=getF14C(fdbk2.6)
F.C14t=getF14(fdbk2.6)


# Plot 2.6
par(mfrow=c(3,2), mar=c(5,5,1,1),cex.lab=1.25)
plot(Atm2.6,
     type="l",
     xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),
     xlim=c(1940,2100)
)
matlines(Atm2.6$Year.AD, P.C14t, col=4, lwd=1:3, lty=1)
legend(
  "topright",
  c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
  lty=rep(1,4),
  col=c(1,4,4,4),
  lwd=c(1,1,2,3),
  bty="n"
)

plot(Atm2.6,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm2.6$Year.AD,P.C14m,col=4)
lines(Atm2.6$Year.AD,P.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")

plot(Atm2.6,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
matlines(Atm2.6$Year.AD, S.C14t, col=4, lty=1, lwd=1:3)
legend("topright",c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
       lty=rep(1,4),col=c(1,4,4,4),lwd=c(1,1,2,3),bty="n")

plot(Atm2.6,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm2.6$Year.AD,S.C14m,col=4)
lines(Atm2.6$Year.AD,S.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")

plot(Atm2.6,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
matlines(Atm2.6$Year.AD, F.C14t, col=4, lty=1, lwd=1:3)
legend("topright",c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
       lty=rep(1,4),col=c(1,4,4,4),lwd=c(1,1,2,3),bty="n")

plot(Atm2.6,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm2.6$Year.AD,F.C14m,col=4)
lines(Atm2.6$Year.AD,F.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")


###### 8.5
rcp8.5=rcps[rcps[,1]>2009,c(1,5)]
names(rcp8.5)<-colnames(ad[,1:2])

Atm8.5=rbind(ad[,1:2],rcp8.5)

prl8.5=ThreepParallelModel14(
  t=Atm8.5$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  gam1=0.6,
  gam2=0.2,
  inputFc=Atm8.5
)

srs8.5=ThreepSeriesModel14(
  t=Atm8.5$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  a21=a21,
  a32=a32,
  inputFc=Atm8.5
)

fdbk8.5=ThreepFeedbackModel14(
  t=Atm8.5$Year.AD,
  ks=k,
  C0=C0,
  F0_Delta14C=c(0,0,0),
  In=LitterInput,
  a21=a21,
  a12=a12,
  a32=a32,
  a23=a23,
  inputFc=Atm8.5
)

# Parallel model
P.R14m=getF14R(prl8.5)
P.C14m=getF14C(prl8.5)
P.C14t=getF14(prl8.5)

# Series model
S.R14m=getF14R(srs8.5)
S.C14m=getF14C(srs8.5)
S.C14t=getF14(srs8.5)

# Feedback model
F.R14m=getF14R(fdbk8.5)
F.C14m=getF14C(fdbk8.5)
F.C14t=getF14(fdbk8.5)


# Plot 8.5
par(mfrow=c(3,2), mar=c(5,5,1,1),cex.lab=1.25)
plot(Atm8.5,
     type="l",
     xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),
     xlim=c(1940,2100)
)
matlines(Atm8.5$Year.AD, P.C14t, col=4, lwd=1:3, lty=1)
legend(
  "topright",
  c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
  lty=rep(1,4),
  col=c(1,4,4,4),
  lwd=c(1,1,2,3),
  bty="n"
)

plot(Atm8.5,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm8.5$Year.AD,P.C14m,col=4)
lines(Atm8.5$Year.AD,P.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")

plot(Atm8.5,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
matlines(Atm8.5$Year.AD, S.C14t, col=4, lty=1, lwd=1:3)
legend("topright",c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
       lty=rep(1,4),col=c(1,4,4,4),lwd=c(1,1,2,3),bty="n")

plot(Atm8.5,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm8.5$Year.AD,S.C14m,col=4)
lines(Atm8.5$Year.AD,S.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")

plot(Atm8.5,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
matlines(Atm8.5$Year.AD, F.C14t, col=4, lty=1, lwd=1:3)
legend("topright",c("Atmosphere", "Pool 1", "Pool 2", "Pool 3"),
       lty=rep(1,4),col=c(1,4,4,4),lwd=c(1,1,2,3),bty="n")

plot(Atm8.5,type="l",xlab="Year",
     ylab=expression(paste(Delta^14,"C ","(\u2030)")),xlim=c(1940,2100))
lines(Atm8.5$Year.AD,F.C14m,col=4)
lines(Atm8.5$Year.AD,F.R14m,col=2)
legend("topright",c("Atmosphere","Bulk SOM", "Respired C"),
       lty=c(1,1,1), col=c(1,4,2),bty="n")
par(mfrow=c(1,1))

####
up=matrix(c(0.6,0.2,0.2),ncol=1)
u=matrix(c(1,0,0), ncol=1)
Ap=diag(-k)
As=Ap; As[2,1]=a21; As[3,2]=a32
Af=As; Af[1,2]=a12; Af[2,3]=a23

tau=seq(0,500)

Page=systemAge(A=Ap,u=up,a=tau)
Sage=systemAge(A=As,u=u,a=tau)
Fage=systemAge(A=Af,u=u,a=tau)

plot(tau,Page$systemAgeDensity,type="l", xlim=c(0,300))
lines(tau,Sage$systemAgeDensity,col=2)
lines(tau,Fage$systemAgeDensity,col=4)
abline(v=c(Page$meanSystemAge, Sage$meanSystemAge,Fage$meanSystemAge),lty=2, col=c(1,2,4))

Ptt=transitTime(A=Ap,u=up,a=tau)
Stt=transitTime(A=As,u=u,a=tau)
Ftt=transitTime(A=Af,u=u,a=tau)

plot(tau,Ptt$transitTimeDensity, type="l", xlim=c(0,100))
lines(tau,Stt$transitTimeDensity, col=2)
lines(tau,Ftt$transitTimeDensity, col=4)
abline(v=c(Ptt$meanTransitTime, Stt$meanTransitTime, Ftt$meanTransitTime), lty=2, col=c(1,2,4))

# 10 times faster rates
Page10=systemAge(A=1.1*Ap,u=up,a=tau)
Sage10=systemAge(A=1.1*As,u=u,a=tau)
Fage10=systemAge(A=1.1*Af,u=u,a=tau)

plot(tau,Page10$systemAgeDensity,type="l", xlim=c(0,300))
lines(tau,Sage10$systemAgeDensity,col=2)
lines(tau,Fage10$systemAgeDensity,col=4)
abline(v=c(Page10$meanSystemAge, Sage10$meanSystemAge,Fage10$meanSystemAge),lty=2, col=c(1,2,4))

Ptt10=transitTime(A=1.1*Ap,u=up,a=tau)
Stt10=transitTime(A=1.1*As,u=u,a=tau)
Ftt10=transitTime(A=1.1*Af,u=u,a=tau)

plot(tau,Ptt10$transitTimeDensity, type="l", xlim=c(0,100))
lines(tau,Stt10$transitTimeDensity, col=2)
lines(tau,Ftt10$transitTimeDensity, col=4)
abline(v=c(Ptt10$meanTransitTime, Stt10$meanTransitTime, Ftt10$meanTransitTime), lty=2, col=c(1,2,4))

