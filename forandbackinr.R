
attach(dataset11)
fitstart=lm(y1~1,data=dataset11)
print(fitstart)
summary(fitstart)
fitall=lm(y1~.,data=dataset11)
print(fitall)
summary(fitall)
step(fitstart,direction = "forward",scope = formula(fitall))
step(fitall,direction = "backward")
step(fitstart,direction = "both",scope = formula(fitall))

