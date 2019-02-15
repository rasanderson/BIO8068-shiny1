library(shiny)

wfarm <- base64enc::dataURI(file="www/UKwindfarm.png", mime="image/png")


# Define UI ----
ui <- fluidPage(
   sidebarLayout(
      sidebarPanel("MySidebar",
                   h3("a button"),
                   actionButton(inputId="my_submitstatus", label="Submit"),
      radioButtons(inputId = "my_checkGroup", 
                         h3("Select one habitat"), 
                         choices = list("Woodland" = 1, 
                                        "Grassland" = 2, 
                                        "Urban" = 3),
                         selected = 1)),
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
