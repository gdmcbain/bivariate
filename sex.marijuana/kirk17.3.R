# reproducing S. 17.3 "Testing independence" of Kirk (1978)

# cf. chi^2 = 5.555 (p. 337)

tbl8.7 <- read.table("kirk17.3.tab")
chisq.test(tbl8.7, correct=FALSE)
