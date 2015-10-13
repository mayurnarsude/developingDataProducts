library(shiny)
library(caret)
data(mtcars)
modFit <- train(mpg ~ cyl + disp + hp + drat + wt + qsec + vs + am + gear + carb, 
                method="glm", data=mtcars)
shinyServer(
  function(input, output) { 
    output$prediction <- renderPrint ({
      
      input$goButton
      
      cyl <- isolate(input$cyl)
      disp <- isolate(input$disp)
      hp <- isolate(input$hp)
      drat <- isolate(input$drat)
      wt <- isolate(input$wt)
      qsec <- isolate(input$qsec)
      vs <- isolate(input$vs)
      am <- isolate(input$am)
      gear <- isolate(input$gear)
      carb <- isolate(input$carb)
      predict(modFit,data.frame(cyl, disp, hp, drat, wt, qsec, vs, am, gear, carb))
      })
  }
)