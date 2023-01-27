#Import and Labeling
rt_df <- read.csv("data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, ordered = FALSE, levels = c("A", "B"),labels = c("Control", "Experimental"))
rt_df$gender<- factor(rt_df$gender, ordered = FALSE, levels = c("M", "F", "N"), labels = c("Male", "Female", "Nonbinary"))

#Analysis
mean_rt <- mean(rt_df$rt)

