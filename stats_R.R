# Sample data
impressions <- 16468027
clicks <- 5947563
industry_ctr <-  0.1743  # Industry average CTR
significance_level <- 0.05

# Perform proportion test
result <- prop.test(x = clicks, n = impressions, p = industry_ctr, alternative = "greater")

# Extract p-value from the test result
p_value <- result$p.value

# Output the test result
print(result)

# Compare p-value to significance level
if (p_value < significance_level) {
  cat("Reject the null hypothesis. The new campaign's CTR is significantly different from the industry average.\n")
} else {
  cat("Fail to reject the null hypothesis. There is insufficient evidence to conclude that the new campaign's CTR is significantly different from the industry average.\n")
}
