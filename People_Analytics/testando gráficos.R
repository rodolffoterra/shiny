data <- df[df$Gender == 'Male', "Age"]
hist(data$Age)


df$Age <- as.integer(df$Age)

hist(df$Age)



ggplot(df, aes(x = Age)) +
  geom_histogram(bins = 15, fill = "black", color = 'black', alpha = 0.3)
  labs (x = xlab, y = 'Densidade') +
  theme_classic()

  
paste(round(length(which(df$Gender == "Female")) / nrow(df) * 100, digits = 2),"%")



# average time a woman stays in the company


ggplot(data = subset(df, !is.na(Gender)), aes(Gender, AverageTenure, fill = Gender)) +
  geom_boxplot() + 
  theme(legend.position = "none", plot.title = element_text(hjust = 0.5, size = 10)) +
  labs(x = "Gender", y = "Monthly Income", title = "Salário Mensal Entre Gêneros") +
  coord_flip()


]
ggplot(df, aes_string(x='PriorYearsOfExperience', y='AverageTenure')) + 
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



ggplot(data = subset(df, !is.na(Gender)), aes(Gender, MonthlyIncome) ) +
    geom_boxplot(fill = c('pink', 'lightblue')) + 
  labs(x = "Gender", y = "Monthly Income", title = "Monthly Salary \nBetween Genders") +
  scale_fill_hue(c=45, l=80) +
theme_classic()

#########################

data <- df[df$Gender == "Male", ]


c <- data.frame(categoria = c(levels(as.factor(data$EducationField))),
                 perct = as.vector(table(data$EducationField)))

fig <- plot_ly() 

fig <- fig %>% add_pie(hole = 0.6,data = c, labels = c$categoria, values = c$perct,
                       name = "Cut")

fig <- fig %>% layout(title = "Dívida Familiar", showlegend = F,
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig



var <- "7"


plot.pie <- function(df, var, xlab) {
  
  pie_chart <- data.frame(categoria = c(levels(df$var)),
                          perct = as.vector(table(df$var)))
  fig <- plot_ly() 
  
  fig <- fig %>% add_pie(hole = 0.6, data = pie_chart, labels = categoria, values = perct,
                         name = "Cut")
  
  fig <- fig %>% layout(title = "xlab", showlegend = F,
                        yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
  
  fig
  
  return(pie)
}


  plot.pie(df,'EducationField','testando titilo')



















# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")


# Plot the chart.


c <- data.frame(categoria = c(levels(as.factor(df$EducationField))),
                perct = as.vector(table(df$EducationField)))

fig <- plot_ly() 

fig <- fig %>% add_pie(hole = 0.5,data = c, labels = c$categoria, values = c$perct,
                       name = "Cut")

fig <- fig %>% layout(title = "Educação", showlegend = F,
                      yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))

fig


# columns
"Age"                     
"Attrition"               
"BusinessTravel"          
"Department"              
"DistanceFromHome"        
"Education"               
"EducationField"          
"EnvironmentSatisfaction" 
"Gender"                  
"JobInvolvement"          
"JobLevel"                
"JobRole"                 
"JobSatisfaction"         
"MaritalStatus"           
"MonthlyIncome"           
"NumCompaniesWorked"      
"OverTime"                
"PercentSalaryHike"       
"PerformanceRating"       
"RelationshipSatisfaction"
"StockOptionLevel"        
"TotalWorkingYears"       
"TrainingTimesLastYear"   
"WorkLifeBalance" 




# Filter

"Attrition","BusinessTravel","Department","Education","JobRole","Employee Source"


