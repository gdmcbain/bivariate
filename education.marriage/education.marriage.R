# reproducing §10.6 ‘Contingency tables’ of Hoel (1962)

# exposing a 4% error from to rounding the expected counts

# cf. "It will be found that χ² = 20.7." (p. 255) where we get 19.943.

tbl <- read.table("education.marriage.tab")
expected <- rowSums(tbl) %*% t(colSums(tbl)) / sum(tbl)
chisq0 <- sum((tbl - expected)^2 / expected)
print(c("Raw χ² = ", chisq0))
expected.rounded <- round(expected)
chisq0.rounding <- sum((tbl - expected.rounded)^2 / expected.rounded)
print(c("χ² with rounding = ", chisq0.rounding))
chisq.test(tbl)
