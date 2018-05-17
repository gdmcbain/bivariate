# reproducing §8.3 "Testing categorical data with PROC FREQ"

# (Delwiche & Slaughter 2003, pp. 220–221)

tbl <- read.table("buses.tab")
chisq.test(tbl, correct=FALSE)	# cf. χ² = 7.2386, p = 0.0071
chisq.test(tbl)			# cf. χ² = 5.7505, p = 0.0165
