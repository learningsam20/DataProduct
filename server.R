library(shiny)
#
#This example uses faithful dataset embedded as part of shiny library
#It would accept waiting time range and plot frequency of eruptions for the waiting range in multiples of 10s
#waiting time on x axis
#eruptions frequency on y axis
#

# This is a default dataset provided by shiny library
# eruptions are decimal and for ease of frequency calculations, these are converted into integers
inData <- data.frame(eruptions=as.integer(faithful$eruptions),waiting=faithful$waiting)
# The following identify the minimum and maximum bounds for the slider based on above dataset
minIn <- min(inData$waiting)
maxIn <- max(inData$waiting)
minSeqIn <- as.integer(minIn/10)*10
maxSeqIn <- (as.integer(maxIn/10)+1)*10

# This is a server function for Shiny and provides reactive function experience
# This contains reactive functions that render UI if the input changes and show modified output
shinyServer(function(input,output) 
{
  # This is a slider being populated dynamically based on input dataset above.
  # This allows users to select the range of waiting time in the multiple of 10 between min and max bounds
  output$uirange <- renderUI({
    sliderInput("waitingrange", label="Waiting Range:", min=minSeqIn,max=maxSeqIn,step=10,value=c(minSeqIn,maxSeqIn))
  })
  
  # This is the histogram of waiting time vs frequency of eruptions for that waiting time range
  output$uiplot <- renderPlot({
    if(!is.null(input$waitingrange))
    {
      hist(x=inData$waiting[inData$waiting <= max(input$waitingrange) & inData$waiting >= min(input$waitingrange)],
         breaks=seq(min(input$waitingrange),max(input$waitingrange),by=10),col='blue',border='yellow',
         main="Histogram For Eruptions Frequency And Waiting Time",
         xlab="Waiting time range",ylab="Frequency of eruptions")
    }
  })  
}
)
