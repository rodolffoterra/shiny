library(tidyverse)
library(ggplot2)


df <- read_csv('dados/dataset.csv')



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
    geom_histogram(bins = 15, fill = "blue",  color = 'black', alpha = 0.3) +
    scale_y_continuous(limits = c(0, 2000)) +
    labs (x = xlab, y = 'Count') +
    theme_classic()
  return(out)
}


    
    
    





