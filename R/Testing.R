# Load the custom rsvButton package
library(rsvButton)
library(shiny)

# Define the Shiny UI
ui <- fluidPage(
  rsvButton("myButton", "Click me"),  # Use your custom rsvButton
  textOutput("output_text")  # This will display the output
)

# Initialize a global click count
x <- 0

# Define the Shiny server
server <- function(input, output, session) {
  observeEvent(input$myButton, {
    x <<- x + 1  # Increment the global click count using <<- operator
    showModal(modalDialog(
      title = "Button Clicked",
      "You clicked the button!"
    ))
  })

  output$output_text <- renderText({
    paste("Button clicked", x, "times.")
  })
}

# Create and run the Shiny app
shinyApp(ui = ui, server = server)
