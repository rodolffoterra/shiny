data <- df[df$Gender == 'Male', "Age"]
hist(data$Age)


df$Age <- as.integer(df$Age)

hist(df$Age)



ggplot(df, aes(x = Age)) +
  geom_histogram(bins = 15, fill = "black", color = 'black', alpha = 0.3)
  labs (x = xlab, y = 'Densidade') +
  theme_classic()

  
paste(round(length(which(df$Gender == "Female")) / nrow(df) * 100, digits = 2),"%")


]
ggplot(df, aes_string(x='PriorYearsOfExperience', y='MonthlyIncome')) + 
  geom_point()




# Gráfico 3
# x = df[,13]
# grid = df[,c(2,3,4,6,7,9,10,11,14,16.20)]


# Gráfico 4
# pie Home Mulher 

# gráfico 5
p.PriorYearsOfExperience  <- ggplot(dados_rh) + geom_density(aes(AgeStartedWorking))





# Grau de satisfação
# x = satisfação
# y = df[,5,8,14,15,18,21,24,26,27,28]

ggplot(df) + geom_boxplot(aes(Attrition, as.integer(MonthlyIncome)))
ggplot(df) + geom_boxplot(aes(Attrition, as.integer(PercentSalaryHike)))
ggplot(df) + geom_bar(aes(TrainingTimesLastYear, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(BusinessTravel, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(OverTime, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(StockOptionLevel, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(EnvironmentSatisfaction, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(JobSatisfaction, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(JobInvolvement, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(RelationshipSatisfaction, fill = Attrition), position = 'fill')
ggplot(df) + geom_bar(aes(WorkLifeBalance, fill = Attrition), position = 'fill')



p <- ggplot(df) + geom_boxplot(aes(Age, as.integer(MonthlyIncome)))

ggplotly(p)

