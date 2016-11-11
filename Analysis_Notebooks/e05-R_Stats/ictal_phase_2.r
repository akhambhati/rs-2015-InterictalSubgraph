library(lme4)
library(MuMIn)
library(car)

print('Reading Data')
dat <- read.csv('./ictal_phase.csv')

model <- aov(D2C ~ Sz_Type + Error(Subject), data=dat)
print(summary(model))

with(dat, pairwise.t.test(x=D2C, g=Sz_Type, p.adjust.method="none", alternative="less"))
