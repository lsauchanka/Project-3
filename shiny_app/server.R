library(RColorBrewer)
coul <- brewer.pal(5, "Set2") 

function(input, output) {

  output$plot <- renderPlot({
    
    barplot(PostsbyMonth[,input$year],
            col= coul,
            main= input$year,
            ylab= "Number of Posts",
            xlab="Month",
            ylim=c(0, 4000),
            cex.axis=1, cex.names=1, las=2)
  })
}