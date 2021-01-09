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
      
      paste(round(length(which(df$Gender == input$Gender)) / nrow(df) * 100, digits = 2),"%"),
      paste("Number of Sex workers:",input$Gender), 
      icon = icon("venus-mars"),
      color = "teal"
    )
    
  })
  

    output$grafic_p1_c1_l1 <- renderPlotly ({
    
    data <- df[df$Gender == input$Gender, ]
    plot <- plot.histogram(data, "Age", "Age")
    
    if (input$Gender =="Female")
      plot <- plot +
      geom_histogram( bins = 15, fill = "red",  color = 'black', alpha=.4)
    ggplotly(plot)
    
    
  })
  
  
  output$grafic_p1_c2_l1 <- renderPlotly ({
    
    dens <- ggplot(df, aes(x=Age, color=Gender, fill=Gender)) + 
      geom_histogram(aes(y=..density..), alpha=0.5, 
                     position="identity")+
      geom_density(show.legend = FALSE, alpha=.4) 
      # + theme_classic()
    ggplotly(dens)
    
    
  })
  
  
  output$grafic_p1_c1_l2 <- renderPlotly ({
  
    box_salary <- ggplot(data = subset(df, !is.na(Gender)), aes(Gender, MonthlyIncome) ) +
      geom_boxplot(alpha=.4, fill = c('pink', 'lightblue')) + 
      labs(x = "Gender", y = "Monthly Income", 
           title = "Monthly Salary \nBetween Genders") +
      scale_fill_hue(c=45, l=80) 
      # + theme_classic()
    ggplotly(box_salary)
  
  
  })
  
  
  output$gauge <- renderPlotly({
    

    fig <- plot_ly() 
    
    if(input$Category == "Attrition") {
      
      fig <- fig %>% add_pie(hole = 0.6, data = Attrition, 
                             labels = levels(as.factor(Attrition[,1])), 
                             values = levels(as.factor(Attrition[,2])))
      
    } else if (input$Category == "BusinessTravel") {
      
      fig <- fig %>% add_pie(hole = 0.6, data = BusinessTravel, 
                             labels = levels(as.factor(BusinessTravel[,1])), 
                             values = levels(as.factor(BusinessTravel[,2])))
      
      
    } else if (input$Category == "Departament") {
      fig <- fig %>% add_pie(hole = 0.6, data = Department, 
                                  labels = levels(as.factor(Department[,1])), 
                                  values = levels(as.factor(Department[,2])))
      
    } else if (input$Category == "Education") {
      fig <- fig %>% add_pie(hole = 0.6, data = Education, 
                             labels = levels(as.factor(Education[,1])), 
                             values = levels(as.factor(Education[,2])))
      
    
    } else if (input$Category == "JobRole") {
      fig <- fig %>% add_pie(hole = 0.6, data = JobRole, 
                           labels = levels(as.factor(JobRole[,1])), 
                           values = levels(as.factor(JobRole[,2])))
    
    } else if (input$Category == 'Employee Source') {
    fig <- fig %>% add_pie(hole = 0.6, data = Employee_Source, 
                         labels = levels(as.factor(Employee_Source[,1])), 
                         values = levels(as.factor(Employee_Source[,2])))
  
    } else 
      fig <- fig %>% add_pie(hole = 0.6, data = Department, 
                             labels = levels(as.factor(Department[,1])), 
                             values = levels(as.factor(Department[,2])))
    
    return(fig)
    
    
    
    fig <- fig %>% layout(title = "Category: Job Role", showlegend = F,
                          yaxis = list(showgrid = FALSE, zeroline = FALSE, showticklabels = FALSE))
    
    fig
    
    
  })
 

}


