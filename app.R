###########################

# Data Scientist: Rodolfo #     

# Date: 12 / 29 / 2020    #


# Negotiating Profile     #

###########################


library(shiny)
library(ggplot2)
library(shinythemes)
library(shinyWidgets)



y<-c(2,1,9,9,3,9,3,7,7,4,9,2,1)
x<-c(7,4,3,3,8,3,4,7,3,8,3,6,4)
paises<-c('Africa do Sul',
          'Alemanha',
          'Brasil',
          'China',
          'Espanha',
          'Estados Unidos',
          'Franca',
          'India',
          'Italia',
          'Japao',
          'Mexico',
          'Reino Unido',
          'Russia')
country <- data.frame(paises, x, y)


country$estilo <- ifelse(country$x < 5 & country$y >5,'Catalisados',
                         ifelse(country$x < 5 & country$y <5,'Controladores',
                                ifelse(country$x > 5 & country$y >5,'Apoiador',
                                       'Analítico')))



#################################################################


ui <- fluidPage(theme = shinythemes::shinytheme("cerulean"),
                
                
                # Page 1
                
                
                navbarPage(
                    # theme = "cerulean",  # <--- To use a theme, uncomment this
                    "Perfil do Negociador",
                    tabPanel("Pesquisa",
                             sidebarPanel(
                                 tags$h3("Sobre mim:", style = "color: black;"),
                                 tags$h3(""),
                                 tags$h5("Rodolfo Terra, ciêntista de Dados, economista. Iniciou a sua carreira de cientista de dados atuando em uma 
                                        startup da Flórida, com projetos relacionado a imigração brasileiros para os Estados Unidos, desenvolvendo modelos de classificação de perfil de pessoas com maiores possibilidade para serem aprovados e os principais motivos que os vistão são negados, utilizando inteligência artificial.", style = "color: black", align = "justify"), 
                                 tags$h5("Realizou projetos tambem vontado para o mercado imobiliário 
                                        da Florida (Real Stad). Trabalho com web scrap, clusterização, análise preditiva, geolocalização, API e hoje é um apaixonado por aplicacao Shiny", style = "color: black", align = "justify"),
                                 tags$h3(""),
                                 tags$h5("Conheça outros porjetos ja realiazado:", style = "color: black;"),
                                 tags$a("www.rodolfoterra.com", href="https://www.rodolfoterra.com"),
                                 tags$h3(""),
                                 tags$a("Download do Curriculo", href="https://6ae6c5ca-2b99-4a80-ac55-9ecca33acf8a.filesusr.com/ugd/1aff31_bd4986f6cc8348299b81d7e8b957dde7.pdf"),
                                 
                                 
                                 
                             ), # sidebarPanel
                             
                             mainPanel(
                                 h1("Características do Comportamento", style = "color: black", align = "center"),
                                 
                                 h4("O método adotado consiste na aplicação de 20 perguntas
sobre as características que mais se enquadram no perfil do negociador analisado", style = "color: black", align = "center"),
                                 
                                 
                                 # Perguntas
                                 
                                 # eixo x
                                 fluidRow(
                                     column(4, 
                                            h4("Dominante ou Condescendente", align = "center", style = "color: black"),
                                            h4(''),
                                            prettyRadioButtons(
                                                inputId = "a1",
                                                label = '1) Qual das duas opções?',
                                                choices = c("Toma Iniciativa ou " = 0, 
                                                            "Espera ser Solicitado"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a2",
                                                label = '2) Qual das duas opções?',
                                                choices = c('Falante ou ' = 0, 
                                                            " Quieto"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a3",
                                                label = '3) Qual das duas opções?',
                                                choices = c('Comunica-se com rapidez ou ' = 0, 
                                                            " Comunica-se com ponderação"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a4",
                                                label = '4) Qual das duas opções?',
                                                choices = c('Desafiador ou ' = 0, 
                                                            " Encorajador"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a5",
                                                label = '5) Qual das duas opções?',
                                                choices = c('Direto ou ' = 0, 
                                                            " Sutil"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a6",
                                                label = '6) Qual das duas opções?',
                                                choices = c('Faz afirmações ou ' = 0,
                                                            " Faz perguntas"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a7",
                                                label = '7) Qual das duas opções?',
                                                choices = c('Ativo ' = 0, 
                                                            " Reativo"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a8",
                                                label = '8) Qual das duas opções?',
                                                choices = c('Toma decissões rápidas ou ' = 0, 
                                                            " Toma decisões analisadas"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a9",
                                                label = '9) Qual das duas opções?',
                                                choices = c('Aparenta Confiança ou ' = 0, " Aparenta dúvidas"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            ),
                                            prettyRadioButtons(
                                                inputId = "a10",
                                                label = '10) Qual das duas opções?',
                                                choices = c('Sentido de Urgência ou ' = 0, " Sentido de paciência"= 1),
                                                inline = TRUE, 
                                                status = "danger",
                                                fill = TRUE
                                            )
                                     ),
                                     
                                     # Eixo Y
                                     
                                     fluidRow(
                                         column(4, offset = 2,
                                                h4("Informal ou Formal", align = "center", style = "color: black"),
                                                h4(''),
                                                prettyRadioButtons(
                                                    inputId = "b1",
                                                    label = '1) Qual das duas opções?',
                                                    choices = c('Espontânio ou ' = 1, 
                                                                " Autocontrolador"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b2",
                                                    label = '2) Qual das duas opções?',
                                                    choices = c('Impulsivo ou ' = 1, 
                                                                " Autodisciplinado"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b3",
                                                    label = '3) Qual das duas opções?',
                                                    choices = c('Expressa Sentimento ou ' = 1, 
                                                                " Oculta sentimento"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b4",
                                                    label = '4) Qual das duas opções?',
                                                    choices = c('Brincalhão ou ' = 1, 
                                                                " Retraído"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b5",
                                                    label = '5) Qual das duas opções?',
                                                    choices = c('Parece acessível ou ' = 1, 
                                                                " Parece incacessível"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b6",
                                                    label = '6) Qual das duas opções?',
                                                    choices = c('Orientado para pessoas ou ' = 1, 
                                                                " Orientado para resultado"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                
                                                prettyRadioButtons(
                                                    inputId = "b7",
                                                    label = '7) Qual das duas opções?',
                                                    choices = c('Caloroso ou ' = 1, 
                                                                " Impassível"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b8",
                                                    label = '8) Qual das duas opções?',
                                                    choices = c('Orientado para o macro ou ' = 1, 
                                                                " Orientado para o micro"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b9",
                                                    label = '9) Qual das duas opções?',
                                                    choices = c('Improvisador ou ' = 1, 
                                                                " Organizador"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                ),
                                                prettyRadioButtons(
                                                    inputId = "b10",
                                                    label = '10) Qual das duas opções?',
                                                    choices = c('Aproxima-se ou ' = 1, 
                                                                " Mantém distância"= 0),
                                                    inline = TRUE, 
                                                    status = "danger",
                                                    fill = TRUE
                                                )
                                                
                                         ))),
                                 
                                 actionButton("submitbutton", "Enviar", 
                                              class = "btn btn-primary", align = "center"),
                                 
                                 h4("Após enviar, entre na página RESULTADO,", 
                                    style = "color: red;", align = "center"),
                                 
                                 h4("no menu dessa página para saber o seu perfil",
                                    style = "color: red;", align = "center"),
                                 
                                 
                             ) # mainPanel
                             
                    ),
                    
                    
                    # Page 2
                    
                    tabPanel("Resultado", 
                             
                             mainPanel(
                                 tags$label(h3('Você é um:', style = "color: black;")),
                                 verbatimTextOutput("txtout"),
                                 verbatimTextOutput('contents'),
                                 tableOutput('tabledata'), # Prediction results table
                                 plotOutput('plot'),
                                 tags$label(h3('Orientação:', style = "color: black;")),
                                 verbatimTextOutput("guidance"),
                                 tags$label(h3('Aspectos Positivos:', style = "color: black;")),
                                 verbatimTextOutput("txtpositive"),
                                 
                                 tags$label(h5('Para obter apoio:', style = "color: black;")),
                                 verbatimTextOutput("txtsupport"),
                                 
                                 
                                 tags$label(h5('Valoriza:', style = "color: black;")),
                                 verbatimTextOutput("txtvalues"),  
                                 
                                 tags$label(h3('Aspectos Negativos:', style = "color: black;")),
                                 verbatimTextOutput("txtnegatives"),
                                 
                                 tags$label(h5('Sob Tensão:', style = "color: black;")),
                                 verbatimTextOutput("txttension"),
                                 
                                 tags$label(h5('Precisa Aprender:', style = "color: black;")),
                                 verbatimTextOutput("txtlearn"), 
                                 
                                 tags$label(h3('Atenção para o seguinte:', style = "color: black;")),
                                 verbatimTextOutput("txtattention"), 
                                 
                                 tags$label(h3('Aspectos a Explorar:', style = "color: black;")),
                                 verbatimTextOutput("txtexplore"),
                                 
                             )
                             
                             
                             
                    ),
                    
                    
                    # Page 3
                    
                    tabPanel("Estilo de Outros paises", 
                             
                             mainPanel(
                                 plotOutput('plot2'),
                                 DT::dataTableOutput("mytable")),
                             
                             
                    )
                    
                ) # navbarPage
) # fluidPage




server <- function(input,output){
    
    
    output$distPlot <- renderPlot({
        
        ggplot(country, aes(x=x, y=y)) +
            geom_point(color = 'steelblue4', size=5) +
            theme_classic()+
            xlim(0,10) + ylim(0,10) +
            labs(x = NULL,
                 y = NULL,
                 title = 'Perfil Comportamental') + 
            geom_hline(yintercept=5, linetype="dashed", color = "gray") +
            geom_vline(xintercept = 5, linetype="dashed",color = "gray")   +
            ggplot2::annotate('text', x = 0.5, y = 5.5, label = "CATALIZADOR") + 
            ggplot2::annotate('text', x = 9.5, y = 5.5, label = "APOIADOR") + 
            ggplot2::annotate('text', x = 0.5, y = 0.3, label = "CONTROLADOR") + 
            ggplot2::annotate('text', x = 9.5, y = 0.3, label = "ANALÍTICO") + 
            ggplot2::annotate('text', x = country[1,2]+0.3, y = country[1,3]-0.2, label = country[1,1]) + 
            ggplot2::annotate('text', x = country[2,2]-0.3, y = country[2,3]+0.2, label = country[2,1]) + 
            ggplot2::annotate('text', x = country[3,2]-0.4, y = country[3,3]-0.2, label = country[3,1]) + 
            ggplot2::annotate('text', x = country[4,2]+0.3, y = country[4,3]+0.3, label = country[4,1]) + 
            ggplot2::annotate('text', x = country[5,2]+0.3, y = country[5,3]-0.2, label = country[5,1])+ 
            ggplot2::annotate('text', x = country[6,2]+0.7, y = country[6,3]-0.2, label = country[6,1])+ 
            ggplot2::annotate('text', x = country[7,2]+0.3, y = country[7,3]-0.2, label = country[7,1])+ 
            ggplot2::annotate('text', x = country[8,2]+0.3, y = country[8,3]-0.2, label = country[8,1])+ 
            ggplot2::annotate('text', x = country[9,2]+0.3, y = country[9,3]-0.2, label = country[9,1])+ 
            ggplot2::annotate('text', x = country[10,2]+0.3, y = country[10,3]-0.2, label = country[10,1])+ 
            ggplot2::annotate('text', x = country[11,2]-0.3, y = country[11,3]+0.5, label = country[11,1])+ 
            ggplot2::annotate('text', x = country[12,2]-0.3, y = country[12,3]-0.2, label = country[12,1])+ 
            ggplot2::annotate('text', x = country[13,2]+0.3, y = country[13,3]-0.2, label = country[13,1]) + 
            theme(axis.text.y=element_blank(),axis.text.x=element_blank())
        
        
    })
    
    
    
    
    
    
    
    observeEvent(input$submitbutton,{
        output$plot <- renderPlot({
            A <- as.integer(input$a1) + as.integer(input$a2) +
                as.integer(input$a3) + as.integer(input$a4) +
                as.integer(input$a5) + as.integer(input$a6) +
                as.integer(input$a7) + as.integer(input$a8) +
                as.integer(input$a9) + as.integer(input$a10)
            
            B <- as.integer(input$b1) + as.integer(input$b2) +
                as.integer(input$b3) + as.integer(input$b4) +
                as.integer(input$b5) + as.integer(input$b6) +
                as.integer(input$b7) + as.integer(input$b8) +
                as.integer(input$b9) + as.integer(input$b10)
            
            
            cart <- data.frame(x= A,
                               y = B)
            
            print(cart$x,cart$y)
            
            Sys.sleep(1.5)
            ggplot(cart, aes(x=x, y=y)) +
                geom_point(color = 'steelblue4', size=10) +
                theme_classic()+
                xlim(0,10) + ylim(0,10) +
                labs(x = NULL,
                     y = NULL,
                     title = 'Perfil Comportamental') + 
                geom_hline(yintercept=5, linetype="dashed", color = "gray") +
                geom_vline(xintercept = 5, linetype="dashed",color = "gray")+
                ggplot2::annotate('text', x = 2, y = 9, label = "CATALIZADOR") + 
                ggplot2::annotate('text', x = 8, y = 9, label = "APOIADOR") + 
                ggplot2::annotate('text', x = 2, y = 1, label = "CONTROLADOR") + 
                ggplot2::annotate('text', x = 8, y = 1, label = "ANALÍTICO") + 
                theme(axis.text.y=element_blank(),axis.text.x=element_blank())
            
            
        })})
    
    
    output$txtout <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'CATALIZADOR',
               ifelse(A < 5 & B <5,'CONTROLADOR',
                      ifelse(A > 5 & B >5,'APOIADOR',
                             'ANALÍTICO')))
        
        
    })
    
    
    output$guidance <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Ideias \nChave para argumentação: **DESSE MODO PODEMOS FAZER MELHOR**',
               ifelse(A < 5 & B <5,'Resultado \nChave para argumentação: **É UMA VITÓRIA SUA**',
                      ifelse(A > 5 & B >5,'Relacionamento \nChave para argumentação: **JUNTOS PODEREMOS**',
                             'Segurança \nChave para argumentação: **TEM UMA LÓGICA, DÁ MAIOR ORDENAÇÃO**')))
        
        
    })
    
    
    
    #########################################################
    
    
    output$txtpositive <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Criativo, entusiasmado, estimulante, persuasivo.',
               ifelse(A < 5 & B <5,'Decidido, eficiente, rápido, objetivo, assume riscos.',
                      ifelse(A > 5 & B >5,'Amável, compreensivo, joga no time, bom ouvinte, prestativo.',
                             'Sério, organizado, paciente, cuidadoso, controlado.')))
        
        
    })
    
    output$txtsupport <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Usa habilidades sociais, usa ideias novas, persuade.',
               ifelse(A < 5 & B <5,'Confia na eficiência, em trabalho feito em tempo e hora. ',
                      ifelse(A > 5 & B >5,'Faz amizades, trabalha para o grupo, busca harmonia.',
                             'Mantém-se a par do que acontece, conhece o trabalho, especializa-se.')))
        
        
    })
    
    output$txtvalues <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Cumprimentos recebidos (elogios), reconhecimento.',
               ifelse(A < 5 & B <5,'Resltados, cumprimentos de metas.',
                      ifelse(A > 5 & B >5,'Atenção que recebe, ser aceito pelas pessoas.',
                             'Segurança, maior garantia.')))
        
        
    })
    
    output$txtnegatives <- renderText({
        
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Superficial, exclusivista, impulsino, inconstante, difícil de crer.',
               ifelse(A < 5 & B <5,'Exigente, crítico, impaciente, insensível, mandão.',
                      ifelse(A > 5 & B >5,'Perde tempo fingindo, evita conflito, é levado na conversa.',
                             'Ideciso, detalhista, teimoso, perfeccionista, protelador.')))
        
        
    })
    
    output$txttension <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Fala muito rápido, agita-se e explode.',
               ifelse(A < 5 & B <5,'Ameaça, impõem, torna-se tirânico.',
                      ifelse(A > 5 & B >5,'Finge concordar, não se manifesta.',
                             'Cala-se, retira-se ou evita conflito.')))
        
        
    })
    
    output$txtlearn <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'Autyodisciplina e moderação.',
               ifelse(A < 5 & B <5,'Humildade, escutar os outros.',
                      ifelse(A > 5 & B >5,'Autodeterminação e fixar metas.',
                             'Tomar decisões mais rápidas.')))
        
        
    })
    
    output$txtattention <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'- Divide as informações relevantes; \n- Tende a não cumprir o quie promete; \n- Impulsivo; \n- Necessita ser reconhecido com ótimo, único;',
               ifelse(A < 5 & B <5,'- É muito franco, diz o que pensa e sente; \n- tem dificuldade em conviver com diferenças individuais; \n- Apressado; \n- Necessira realizarn atingirmetas, cumprir e dever;',
                      ifelse(A > 5 & B >5,'- Aceita bem diferenças individuais; \n- Nem sempre diz realmente o que pensa; \n- É lento; \n- Necessita ser aceito, ser amigo;',
                             '- Cumpre o que promete; \n- Esconde o jog, não revela o que sabe; \n- Protelador, adia tudo; \n- Necessita nde segurança, certeza, minimizar riscos;')))
        
        
    })
    
    output$txtexplore <- renderText({
        
        A <- as.integer(input$a1) + as.integer(input$a2) +
            as.integer(input$a3) + as.integer(input$a4) +
            as.integer(input$a5) + as.integer(input$a6) +
            as.integer(input$a7) + as.integer(input$a8) +
            as.integer(input$a9) + as.integer(input$a10)
        
        B <- as.integer(input$b1) + as.integer(input$b2) +
            as.integer(input$b3) + as.integer(input$b4) +
            as.integer(input$b5) + as.integer(input$b6) +
            as.integer(input$b7) + as.integer(input$b8) +
            as.integer(input$b9) + as.integer(input$b10)
        
        ifelse(A < 5 & B >5,'- Facilidade; \n- Rapidez; \n- Exclusividade; \n- Inovação;',
               ifelse(A < 5 & B <5,'- Ganhar; \n- Tempo; \n- Dinheiro; \n- Atingir resultados; \n- Vencer os outros; \n- Simplicidade;',
                      ifelse(A > 5 & B >5,'- Bom relacionamento; \n- Ausencia de conflito; \n- Assistencia; \n- Apoio; \n- Satisfação dos outros; \n- Interesse grupla;',
                             '- Todos os dados disponíveis; \n- Pesquisas, certezas; \n- Decisão segura; \n- Alternativas para análise; \n- sistematização, ordenação;')))
        
        
    })
    
    
    
    output$plot2<-renderPlot({
        ggplot(country,aes(x=x,y=y))+
            geom_point(color = 'steelblue4', size=5) + 
            theme_classic()+
            xlim(0,10) + ylim(0,10) +
            labs(x = NULL,
                 y = NULL,
                 title = 'Perfil Comportamental') + 
            geom_hline(yintercept=5, linetype="dashed", color = "gray") +
            geom_vline(xintercept = 5, linetype="dashed",color = "gray")   +
            ggplot2::annotate('text', x = 0.5, y = 5.5, label = "CATALIZADOR", color = "red") + 
            ggplot2::annotate('text', x = 9.5, y = 5.5, label = "APOIADOR", color = "red") + 
            ggplot2::annotate('text', x = 0.5, y = 0.3, label = "CONTROLADOR", color = "red") + 
            ggplot2::annotate('text', x = 9.5, y = 0.3, label = "ANALÍTICO", color = "red") + 
            theme(plot.title = element_text(hjust = 0, size = 18)) + 
            theme(axis.text.y=element_blank(),axis.text.x=element_blank())+ 
            ggplot2::annotate('text', x = country[1,2]+0.5, y = country[1,3]-0.35, label = country[1,1]) + # África do Sul
            ggplot2::annotate('text', x = country[2,2]-0.4, y = country[2,3]+0.4, label = country[2,1]) + # Alemanha
            ggplot2::annotate('text', x = country[3,2]-0.4, y = country[3,3]-0.35, label = country[3,1]) +  # Brasil
            ggplot2::annotate('text', x = country[4,2]+0.4, y = country[11,3]+0.35, label = country[4,1]) + # Chine
            ggplot2::annotate('text', x = country[5,2]+0.6, y = country[5,3]-0.1, label = country[5,1])+ # Espanha
            ggplot2::annotate('text', x = country[6,2]+0.85, y = country[6,3]-0.35, label = country[6,1])+  # Estados Unidos
            ggplot2::annotate('text', x = country[7,2]+0.3, y = country[7,3]-0.35, label = country[7,1])+  # França
            ggplot2::annotate('text', x = country[8,2]+0.3, y = country[8,3]-0.35, label = country[8,1])+ #India
            ggplot2::annotate('text', x = country[9,2]+0.3, y = country[9,3]-0.35, label = country[9,1])+ # Itália
            ggplot2::annotate('text', x = country[10,2]+0.4, y = country[10,3]-0.1, label = country[10,1])+ #Japão
            ggplot2::annotate('text', x = country[11,2]-0.4, y = country[11,3]+0.35, label = country[11,1])+ # Mexico
            ggplot2::annotate('text', x = country[12,2], y = country[12,3]+0.4, label = country[12,1])+ # Reino Unido
            ggplot2::annotate('text', x = country[13,2]+0.4, y = country[13,3]-0.35, label = country[13,1]) # Russia
    },
    height = 400,width = 600)}



shinyApp(ui, server)