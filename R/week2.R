#Import and Labeling
rt_df <- read.csv("data/week2.csv", header = TRUE)
rt_df$condition <- factor(rt_df$condition, ordered = FALSE, levels = c("A", "B"),labels = c("Control", "Experimental"))
rt_df$gender<- factor(rt_df$gender, ordered = FALSE, levels = c("M", "F", "N"), labels = c("Male", "Female", "Nonbinary"))

#Analysis
mean_rt <- mean(rt_df$rt)
rt_f_df <- subset(rt_df, subset = rt_df$gender == "Female")
hist(rt_f_df$rt)
datasets <- list(rt_df, rt_f_df)
datasets[[1]][,2]
