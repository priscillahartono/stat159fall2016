library(shiny)

Advertising <- read.csv('Advertising.csv')

ui <- fluidPage(
  headerPanel('Media vs. Sales Scatterplot'),
  sidebarPanel(
    selectInput('xcol', 'Media choice:', choices = c("TV", "Radio", "Newspaper"))
  ),
  mainPanel(
    plotOutput('plot1')
  )
)

server <- function(input, output) {
  
  selectedData <- reactive({
    Advertising[, input$xcol]
  })
  
  output$plot1 <- renderPlot({
    plot(selectedData(), Advertising$Sales, main = "Media vs. Sales")
    abline(lm(Advertising$Sales~selectedData()))
  })
  
}

shinyApp(ui = ui, server = server)



