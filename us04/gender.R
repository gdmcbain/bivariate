# reproducing S. 8.4.1 "Example 1: Tabular analysis" of Kellstedt &
# Whitten (2008, ch. 8).

# cf. chi^2 = 3.892, p = .048 (p. 144)

tbl8.7 <- read.table("gender.tab") # p. 142
chisq.test(tbl8.7, correct=FALSE)  # p. 144
