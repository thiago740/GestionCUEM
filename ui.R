## Demo - adding icons to menu items in shinydashboard and style them
## Load the required packages

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
                       menuItem("Recepción de Expedientes", tabName = "menu4", icon=icon("modal-window", lib =  "glyphicon")),
                       
                       
                       # using pulse class to rotate icon in 8 steps
                    #   menuItem(" ... ", tabName = "menu5", icon=icon("cog", class = "fa-pulse")),
                       
                       # using border class to add a border to icon
                    #   menuItem("...", tabName = "menu6", icon=icon("cog", class = "fa-border")),
                       
                       ## Add a icon from glyphicon library
                    #   menuItem("HourGlass", tabName = "menu7", icon=icon("hourglass", lib =  "glyphicon")),
                       
                       # a square icon from fontawesome library
                    #   menuItem("BoxStatus", tabName = "menu8", icon = icon("square")),
                       
                       # coloured square icon
                      # menuItem("BoxColor", tabName = "menu9", icon=icon("square", class="mystyle")),
                       tags$style(".mystyle {color:yellow;}")
                       
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
             
             # Tips
             radioButtons("radio1", label = h3("Tips"),
                         choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                         inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value1"))),
             
             
             # Guantes
             radioButtons("radio2", label = h3("Guantes"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3), 
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value2"))),
             
             
             # Algodon
             radioButtons("radio3", label = h3("Algodón"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value3"))),
             
             
             # Papel absorbente
             radioButtons("radio4", label = h3("Papel absorbente"),
                          choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),
                          inline = T, selected = 1), hr(),
             fluidRow(column(3, verbatimTextOutput("value4")))
             
             
             ),
      
      
      # Menu2
      tabItem(tabName = "menu2",
              # Solución fisiologica
              radioButtons("radio21", label = h3("Solución fisiologica"),
                           choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),  
                           inline = T, selected = 1), hr(),
                fluidRow( column(3, verbatimTextOutput("value21"))),
              
              # Alcohol
              radioButtons("radio22", label = h3("Alcohol"),
                           choices = list("Cargado" = 1, "Medio" = 2, "En falta" = 3),  
                           inline = T, selected = 1), hr(),
              fluidRow( column(3, verbatimTextOutput("value22")))
              
              ),
      
      tabItem(tabName = "menu3", p("")),
      tabItem(tabName = "menu4", p(""))
      
      )
    )
  )
)

#server <- function(input, output, session) {
  
  
#}

#shinyApp(ui, server)