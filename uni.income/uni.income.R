# reproducing S. 17.3 "Testing independence" of Kirk (1978)

# cf. chi^2 = 17.978 (p. 339)

tbl <- read.table("uni.income.tab")
chisq.test(tbl, correct=FALSE)	# But R gives 14.178 Hmm.
