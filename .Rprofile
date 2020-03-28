# simple helper functions for university assignments

# calculate the class marks from class limits
marks <- function (x) {
	tail((x + c(NA, x[1:length(x) - 1])) / 2, -1)
}

# quantile estimator for grouped data
grouped.quantile <- function (cl, f, qu) {
	n <- sum(f)
	np <- n * qu
	i <- 2
	cf <- c(0)

	for (current in f) {
		cf <- c(cf, cf[i - 1] + current)
		if (cf[i] >= np) {
			break
		}
		i <- i + 1
	}

	lower <- cl[i - 1]
	upper <- cl[i]

	lower + (upper - lower) * (np - cf[i - 1]) / f[i - 1]
}
