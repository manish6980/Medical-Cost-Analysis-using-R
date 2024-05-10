Insurance <- read_csv("D:/insurance.csv")
Analysis <- Insurance
dim(Analysis)
sum(is.na(Analysis))
sapply(Analysis, class)
str(Analysis)
glimpse(Analysis)

hist(Analysis$age, 
     main = "Distribution of Age",
     xlab = "Age",
     ylab = "Count",
     col = "#236C19",
     border = "Black")

gender_count <- table(Analysis$sex)
colors <- c("#E47692", "#5FC1F5")
pie(gender_count, 
    main = "Gender Distribution",
    col = c("#E47692", "#5FC1F5"),
    labels = paste0(names(gender_count), " (", gender_count, ")"),
    cex = 1,
    radius = 1)

hist(Analysis$bmi, 
     main = "Distribution of BMI",
     xlab = "BMI",
     ylab = "Count",
     col = "#6138CE",
     border = "white")

hist(Analysis$charges,
     main = "Distribution of Charges",
     xlab = "Charges",
     ylab = "Frequency",
     col = "#FCC063")

plot(charges ~ age, data = Analysis,
     main = " Distribution of charge by age",
     xlab = "age",
     ylab = "charges",
     col = "#6138CE")

boxplot(charges ~ sex, data = Analysis,
        main = "Distri. of Charges by Sex",
        xlab = "Sex",
        ylab = "Charges",
        col = c("#E47692", "#5FC1F5"))

boxplot(charges ~ smoker, data = Analysis,
        main = "Distr. of Charges by Smoker",
        xlab = "Smoker",
        ylab = "Charges",
        col = c("#FCC063", "#236C19"))

boxplot(charges ~ region, data = Analysis,
        main = "Distr. of Charges by Region",
        xlab = "Region",
        ylab = "Charges",
        col = c("#236C19", "#6138CE", "#5FC1F5", "#E47692", "#FCC063" ))

