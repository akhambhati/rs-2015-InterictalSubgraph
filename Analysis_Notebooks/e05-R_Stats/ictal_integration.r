library(lme4)
library(MuMIn)
library(car)

print('Reading Data')
dat <- read.csv('./subgraph_integration.csv')
dat <- dat[dat$Model == 'Real_Cluster',]

cat('\n\n\n\nReal ~ Distance\n')
model = aov(D2C ~ Epoch + Error(Subject/Epoch), data=dat)
print(summary(model))

with(dat, pairwise.t.test(x=D2C, g=Epoch, p.adjust.method="none", alternative="greater"))

