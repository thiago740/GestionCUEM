library(shiny)
library(shinydashboard)

## ui code starts here
ui <- fluidPage(
  dashboardPage(
    dashboardHeader(title = "Sistema de gestión - CUEM", titleWidth = 800), 
    dashboardSidebar("Menu",
                     sidebarMenu(
                       ##1
                       menuItem(" Control de Stock", tabName = "menu1",icon=icon("barcode", lib = "glyphicon")),
                          
                       ## 2
                       menuItem(" Soluciones", tabName = "menu2", icon=icon("filter", lib =  "glyphicon")),
                       
                       ## 3
                       menuItem(" Equipos", tabName = "menu3", icon=icon("scale", lib =  "glyphicon")),
                       
                       ## 4
                       menuItem("Protocolos", tabName = "menu4", icon=icon("modal-window", lib =  "glyphicon")),
    
                       ## 5
                       menuItem("Scripts", tabName = "menu5", icon=icon("modal-window", lib =  "glyphicon"))
                       
    
                      #square icon from fontawesome library
                      #menuItem("BoxStatus", tabName = "menu8", icon = icon("square")),
               
              
                     )
    ),
    
    # Itenes del menu
    dashboardBody(
      tabItems(
      tabItem(tabName = "menu1",
             #Agua destilada
              radioButtons("radio", label = h3("Agua destilada"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),  
                          inline = T, selected = 1), hr(),
             fluidRow( column(3, verbatimTextOutput("value"))),
             
             actionButton("action", label = "Notificar"), hr(),
             fluidRow(column(2, verbatimTextOutput("valueA"))),
             
             
             
             
             # Tips
             radioButtons("radio1", label = h3("Tips"),
                         choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                         inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value1"))),
             
             selectInput("select1", label = NULL, 
                         choices = list("Azul" = 1, "Amarillo" = 2, "5 ml" = 3, "Todos" = 4), 
                         selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("valueS1"))),
             
             actionButton("action1", label = "Notificar"), hr(),
             fluidRow(column(2, verbatimTextOutput("valueA1"))),
             
             
             
             
             # Guantes
             radioButtons("radio2", label = h3("Guantes"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3), 
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value2"))),
             
             selectInput("select2", label = NULL, 
                         choices = list("S" = 1, "M" = 2, "L" = 3, "Todos" = 4), 
                         selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("valueS2"))),
             
             actionButton("action2", label = "Notificar"), hr(),
             fluidRow(column(2, verbatimTextOutput("valueA2"))),
             
             
             
             
             # Algodon
             radioButtons("radio3", label = h3("Algodón"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value3"))),
             
             actionButton("action3", label = "Notificar"), hr(),
             fluidRow(column(2, verbatimTextOutput("valueA3"))),
             
             
             
             
             # Papel absorbente
             radioButtons("radio4", label = h3("Papel absorbente"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value4"))),
             
             actionButton("action4", label = "Notificar"), hr(),
             fluidRow(column(2, verbatimTextOutput("valueA4")))
             
             
             ),
      
      
      # Menu2
      tabItem(tabName = "menu2",
              # Solución fisiologica
              radioButtons("radio21", label = h3("Solución fisiologica"),
                           choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),  
                           inline = T, selected = 1), hr(),
                fluidRow( column(3, verbatimTextOutput("value21"))),
              
              actionButton("action21", label = "Notificar"), hr(),
              fluidRow(column(2, verbatimTextOutput("valueA21"))),
              
              # Alcohol
              radioButtons("radio22", label = h3("Alcohol"),
                           choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),  
                           inline = T, selected = 1), hr(),
              fluidRow( column(3, verbatimTextOutput("value22"))),
              
              actionButton("action22", label = "Notificar"), hr(),
              fluidRow(column(2, verbatimTextOutput("valueA22")))
              
              ),
      
      tabItem(tabName = "menu3", p("")),
      tabItem(tabName = "menu4", p(""))
      
      )
    )
  )
)

#server <- function(input, output, session) {

#output$value <- renderPrint({ input$radio })

#}

#shinyApp(ui, server)
