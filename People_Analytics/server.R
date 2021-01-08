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
library(googleVis)



####################

# Server

server <- function(input, output) {
  
  output$box1 <- renderValueBox({
    valueBox(
      
      paste(round(length(which(df$Gender == input$Gender)) / nrow(df) * 100, digits = 2),"%"), paste("Number of Sex workers:",input$Gender), icon = icon("venus-mars"),
      color = "teal"
    )
    
  })
  

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
  
  
  output$grafic_p1_c1_l2 <- renderPlotly ({
  
    box_salary <- ggplot(data = subset(df, !is.na(Gender)), aes(Gender, MonthlyIncome) ) +
      geom_boxplot(fill = c('pink', 'lightblue')) + 
      labs(x = "Gender", y = "Monthly Income", title = "Monthly Salary \nBetween Genders") +
      scale_fill_hue(c=45, l=80) +
      theme_classic()
    ggplotly(box_salary)
  
  
  })
  
  
  output$gauge <- renderPlotly({
    
    data <- df[df$Gender == input$Gender, ]
    
    c <- data.frame(categoria = c(levels(as.factor(data$EducationField))),
                    perct = as.vector(table(data$EducationField)))
    
    fig <- plot_ly() 
    
    fig <- fig %>% add_pie(hole = 0.6, data = c, labels = c$categoria, values = c$perct)
    
    fig <- fig %>% layout(title = paste("Sex:",input$Gender,"    Category:",input$Category), showlegend = F,
                          yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    fig
    
    
  })
 
  
  
}


