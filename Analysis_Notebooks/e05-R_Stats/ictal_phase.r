library(lme4)
library(MuMIn)
library(car)

print('Reading Data')
dat <- read.csv('./ictal_phase.csv')

model1 = lmer(D2C ~ 1 + (1 | Subject), data=dat, REML=FALSE)
model3 = lmer(D2C ~ Sz_Mass + (1 | Subject), data=dat, REML=FALSE)

print(anova(model1, model3))

print(summary(model3))
print(coef(model3))
print(r.squaredGLMM(model3))

