library(shiny)

wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")


# Define UI ----
ui <- fluidPage(
   sidebarLayout(
      sidebarPanel("MySidebar"),
      mainPanel(
         p("This website will be to help planners assess potential windfarm development
           areas in Cumbria, and achieve a ", strong("balance "), "between different",
           em("interest groups"), "and other users."),
         br(),
         img(src=wfarm)
      )
   )
)

# Define server logic ----
server <- function(input, output) {
   
}

# Run the app ----
shinyApp(ui = ui, server = server)
