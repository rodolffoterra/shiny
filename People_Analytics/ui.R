# ui.R

####################
#    Project       #

#    People        #

#   Analytics      #
####################

####################
# Load Package

source("data.R")
library(shinydashboard)
library(ggplot2)
library(plotly)


####################

# ui

ui <- dashboardPage(
  
  
  # Head Dashboar
  ##############################
  dashboardHeader(
    title = "People Analytics"
    
    #End of the dashboardHeader
  ),
  ##############################
  
  
  # Left Dashboar
  
  ##############################
  dashboardSidebar(
    sidebarMenu(
      menuItem("Sex Analysis in the Company", tabName = 'sex',icon = icon("venus-mars")),
      menuItem("Processo de Contratação", tabName = 'hiring_Process', icon = icon("user-tie")),
      menuItem('Salários', tabName = 'salary',  icon = icon('search-dollar'))
               )
    #End of the dashboardSidebar
    ),
    ##############################
  
  
  # Right Dashboar
  
  dashboardBody(
    tabItems(
      
      # Page 1
      tabItem(tabName = 'sex', 
              
              fluidRow(
                
                box(width = 2,
                    status = 'primary', soliHeader = TRUE,
                    selectInput(inputId = 'Gender', label = 'Sex',
                                choices = unique(df$Gender),
                                selected = 1)),
                box(width = 2,
                    status = 'primary', soliHeader = TRUE,
                    selectInput(inputId = 'Category', label = 'categoria',
                                choices = c("Attrition","BusinessTravel",
                                            "Department","Education",
                                            "JobRole","Employee Source"),
                                selected = 1)),

                valueBoxOutput(width = 3, outputId = "box1"),
                valueBoxOutput(width = 3, outputId = "box2"),
                valueBoxOutput(width = 3, outputId = "box3")
              ),
              
              fluidRow(
                box(
                  title = "Histogram", status = "primary", solidHeader = TRUE,
                  plotlyOutput(outputId = 'grafic_p1_c1_l1')),
                
                box(
                  title = "Density", status = "primary", solidHeader = TRUE,
                  plotlyOutput(outputId = 'grafic_p1_c2_l1')),
                
                box(
                  title = "Bar Grap", status = "primary", solidHeader = TRUE,
                  width = 5,
                  plotlyOutput(outputId = 'grafic_p1_c1_l2')),
                
                box(width = 7, 
                    title = "Sector chart", status = "primary", solidHeader = TRUE,
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

