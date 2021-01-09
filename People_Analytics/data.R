library(tidyverse)
library(ggplot2)


df <- read_csv('dataset.csv')


Attrition <- data.frame(categoria = c(levels(as.factor(df$Attrition))),
                        perct = as.vector(table(df$Attrition)))

BusinessTravel <- data.frame(categoria = c(levels(as.factor(df$BusinessTravel))),
                             perct = as.vector(table(df$BusinessTravel)))

Department <-data.frame(categoria = c(levels(as.factor(df$Department))),
                        perct = as.vector(table(df$Department)))

Education <-data.frame(categoria = c(levels(as.factor(df$Education))),
                        perct = as.vector(table(df$Education)))

JobRole <-data.frame(categoria = c(levels(as.factor(df$JobRole))),
                        perct = as.vector(table(df$JobRole)))

Employee_Source <-data.frame(categoria = c(levels(as.factor(df$'Employee Source'))),
                        perct = as.vector(table(df$'Employee Source')))


###############################################################
# List of variables

factor.vars <- c("Attrition","BusinessTravel","Department","Education","JobRole","Employee Source")

###############################################################

# Function to convert variable to factor

to.factor <- function(df, variables){
  for (variable in variables){
    df[[variable]] <- as.factor(paste(df[[variable]]))
  }
  return(df)
}

df <- to.factor(df = df, variables = factor.vars)

###############################################################

##### Atribute Engineering ##### 

# Criamos uma coluna de anos anteriores de experiência para visualizar melhor o 
# perfil de experiência do funcionário.
df$PriorYearsOfExperience <- df$TotalWorkingYears - df$YearsAtCompany

# A estabilidade no emprego (job tenure) é a medida do tempo que um funcionário está empregado 
# por seu empregador atual. A estabilidade no emprego de um funcionário é muito importante e 
# muitas vezes os empregadores consideram a estabilidade no emprego um critério para a contratação 
# de novos funcionários. A permanência no emprego pode ser longa ou curta.

# Criamos um novo recurso de estabilidade média para traçar o perfil de permanência média 
# dos funcionários em empresas anteriores.
df$AverageTenure <- df$PriorYearsOfExperience / df$NumCompaniesWorked

df$AverageTenure[!is.finite(df$AverageTenure)] <- 0



plot.histogram <- function(df, var, xlab, ylab) {
  out <- ggplot(df, aes_string(x = var)) +
    geom_histogram(bins = 15, fill = "blue",  color = 'black', alpha=.4) +
    scale_y_continuous(limits = c(0, 2000)) +
    labs (x = xlab, y = 'Count') 
    # + theme_classic()
  return(out)
}


    
    
    





