# reproducing 'Chi-squared test of independence'

# http://www.r-tutor.com/elementary-statistics/goodness-fit/chi-squared-test-independence

tbl <- read.table("smoking.exercise.tab")
tbl
chisq.test(t(tbl), correct=FALSE) # cf. χ² = 5.4885 but with warning
chisq.test(cbind(tbl[,"Freq"], tbl[,"None"] + tbl[,"Some"])) # 3.2328

