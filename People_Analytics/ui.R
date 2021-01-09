# ui.R

####################
#    Project       #

#    People        #

#   Analytics      #
####################

####################
# Load Package

source("data.R")
library(shiny)
library(shinydashboard)
library(ggplot2)
library(plotly)
library(shinythemes)
library(semantic.dashboard)


####################

# ui



ui <- dashboardPage(
  
  # Head Dashboar
  ##############################
  dashboardHeader(
    #title = "People Analytics"
    color = "red", title = "People Analytics", inverted = TRUE,
    
    #End of the dashboardHeader
  ),
  ##############################
  
  
  # Left Dashboar
  
  ##############################
  dashboardSidebar(
    size = "thin", color = "teal",
    
    sidebarMenu(
      tags$h2("People Analytics", style="text-align: center;"),
      menuItem("Gender Analysis", tabName = 'sex',icon = icon("table")),
      menuItem("Processo de Contratação", tabName = 'hiring_Process', icon = icon("computer")),
      menuItem('Salary', tabName = 'salary',  icon = icon('money'))
      
    )
    #End of the dashboardSidebar
  ),
  ##############################
  
  
  # Right Dashboar
  
  dashboardBody(
    
    tabItems(
      #tags$h1("Public Data Set provided bi IBM", style="text-align: center;"),
      
      # Page 1
      tabItem(tabName = 'sex', 
              
              fluidRow(
                
                box(width = 4,
                    title = "For Graph. 1", 
                    color = "red", ribbon = TRUE, title_side = "top right",
                    status = 'primary', soliHeader = TRUE,
                    selectInput(inputId = 'Gender', label = 'Sex',
                                choices = unique(df$Gender),
                                selected = 1)),
                
               valueBox(width = 4,
                  icon = icon("male"),
                  value = tags$p("Male", style = "font-size: 50%;"),
                  subtitle = tags$p("60.08%", style = "font-size: 70;"),
                ),
                
                valueBox(width = 4,
                  value = tags$p("Female", style = "font-size: 50%;"),
                  subtitle = tags$p("39.92%", style = "font-size: 70;"),
                  icon = icon("female")),
                
                
                box(width = 4,
                    title = "For Graph. 4", 
                    color = "red", ribbon = TRUE, title_side = "top right",
                    status = 'primary', soliHeader = TRUE,
                    selectInput(inputId = 'Category', label = 'categoria',
                                choices = c("Attrition","BusinessTravel",
                                            "Department","Education",
                                            "JobRole","Employee Source"),
                                selected = 1))
              ),
              
              fluidRow(
                box(
                  title = "Graph 1", 
                  color = "green", ribbon = TRUE, title_side = "top right",
                  status = "primary", solidHeader = TRUE,
                  plotlyOutput(outputId = 'grafic_p1_c1_l1')),
                
                box(
                  title = "Graph 2", 
                  color = "green", ribbon = TRUE, title_side = "top right",
                  status = "primary", solidHeader = TRUE,
                  plotlyOutput(outputId = 'grafic_p1_c2_l1')),
                
                box(
                  title = "Graph 3", 
                  color = "green", ribbon = TRUE, title_side = "top right",
                  status = "primary", solidHeader = TRUE,
                  width = 5,
                  plotlyOutput(outputId = 'grafic_p1_c1_l2')),
                
                box(width = 11, 
                    title = "Graph 4", 
                    color = "green", ribbon = TRUE, title_side = "top right",
                    status = "primary", solidHeader = TRUE,
                    plotlyOutput(outputId = "gauge")),
              )
              
              
              
      ),
      
      
      
      # Page 2
      tabItem(tabName = 'hiring_Process', "Under Construction - Page 2"),
      
      
      
      # Page 3
      tabItem(tabName = 'salary', "Under Construction - Page 3")
    )
    
    
    #End of the dashboardBody
  )
  ############################## 
  
  
  
  
  
  
  #End of the dashboardPage
)
####################

