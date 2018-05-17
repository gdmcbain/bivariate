# reproducing §17.3 "Testing independence" of Kirk (1978)

tbl8.7 <- read.table("sex.marijuana.tab")
chisq.test(tbl8.7, correct=FALSE)  # cf. χ² = 5.555 (p. 337)
