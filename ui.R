library(shiny)
# This is UI part of the shiny app developed for histogram plotting
# It consists of side panel for displaying slider for waiting time (input) and main panel for displaying histogram (output)
# The data for both these controls is populated runtime
shinyUI(
	fluidPage(
		titlePanel("Welcome to frequency visualization for faithful dataset"),
		sidebarPanel(
			helpText("Please select the range of waiting time to see the eruptions"),
			# This is a place holder for slider for selecting waiting time range
			uiOutput("uirange")
		),
		mainPanel(
			# This holds the place holder for histogram for waiting time vs frequency of eruptions
			plotOutput("uiplot")
		)
	)
)
