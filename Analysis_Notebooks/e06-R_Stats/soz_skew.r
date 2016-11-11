library(lme4)
library(MuMIn)
library(car)


print('Reading Data')
dat = read.csv('./soz_activation.csv')
dat = dat[((dat$New_Cluster_ID==0) | (dat$New_Cluster_ID==5)), ]

mdl = aov(Expr_Skew ~ New_Cluster_ID * Epoch + Error(Subject), data=dat)

print(mdl)
