# reproducing §17.3 "Testing independence" of Kirk (1978, table 17.3-3)

tbl <- read.table("uni.income.tab")
chisq.test(tbl)	# cf. χ² = 17.978 (p. 339), but R gives 14.178 Hmm.

# There are gross errors in Table 17.3-3 though: the total number of
# alumni of medium-sized universities is given as 73 whereas
# sum(tbl[,"medium"]) = 11 + 40 + 15 = 66 and the total number in the
# highest income bracket is given as 41 whereas sum(tbl["high",]) = 15
# + 15 + 4 = 34.  Both are seven high, so Kirk's computation can be
# recovered by increasing the number of high-income earning alumni of
# medium-sized universities from 15 to 22.  This latter number is
# actually evidient in the second last row of the table of
# observations and expectations.

tbl["high", "medium"] <- tbl["high", "medium"] + 7
chisq.test(tbl)	# Ah.
