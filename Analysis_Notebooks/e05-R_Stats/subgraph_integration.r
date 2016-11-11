library(lme4)
library(MuMIn)
library(car)

print('Reading Data')
dat <- read.csv('./subgraph_integration.csv')

cat('\n\n\n\nReal ~ Distance\n')
model = aov(D2C ~ Model + Error(Subject/Model), data=dat)
print(summary(model))

with(dat, pairwise.t.test(x=D2C, g=Model, p.adjust.method="none", alternative="greater"))
