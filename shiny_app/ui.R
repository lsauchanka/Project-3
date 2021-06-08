
fluidPage(    

  titlePanel("Posts by Year"),

  sidebarLayout(      

    sidebarPanel(
      selectInput("year", "Year:", 
                  choices=colnames(PostsbyMonth)),
      hr(),
      helpText("Data from gaming.stackexchange.com")
    ),

    mainPanel(
      plotOutput("plot")  
    )
    
  )
)