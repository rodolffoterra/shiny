# Serve.R

####################
#    Project       #

#    People        #

#   Analytics      #
####################

####################
# Load Package

source("data.R")
library(shiny)
library(ggplot2)
library(plotly)


####################

# Server

server <- function(input, output) {
  
  
  output$grafic_p1_c1_l1 <- renderPlotly ({
    
    data <- df[df$Gender == input$Gender, ]
    plot <- plot.histogram(data, "Age", "Age")
    
    if (input$Gender =="Female")
      plot <- plot +
      geom_histogram(bins = 15, fill = "red",  color = 'black', alpha = 0.3)
    ggplotly(plot)
    
    
  })
  
  
  output$grafic_p1_c2_l1 <- renderPlotly ({
    
    dens <- ggplot(df, aes(x=Age, color=Gender, fill=Gender)) + 
      geom_histogram(aes(y=..density..), alpha=0.5, 
                     position="identity")+
      geom_density(alpha=.2, show.legend = FALSE) 
    ggplotly(dens)
    
    
  })
  
  
  
}


