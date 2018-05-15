# reproducing §10.6 ‘Contingency tables’ of Hoel (1962)

# cf. χ² = 12.6 (p. 255)
tbl <- read.table("education.marriage.tab")
tbl
chisq.test(t(tbl), correct=FALSE) # But R gives 19.943
