library(shiny)
library(caret)
shinyUI (
  pageWithSidebar (
    # Application title
    headerPanel ("Predicting Vehicle's MPG [Miles/(US) gallon]"),
    
    sidebarPanel (
      numericInput('cyl', 'Number of cylinders', 6, min = 4, max= 8, step = 2),
      numericInput('disp', 'Displacement (cu.in.)', 196.3, min = 70, max= 475, step = 0.1),
      numericInput('hp', 'Gross horsepower', 123, min = 50, max= 335, step = 1),
      numericInput('drat', 'Rear axle ratio', 3.695, min = 2.75, max= 5.0, step = 0.005),
      numericInput('wt', 'Weight (lb/1000)', 3.325, min = 1.510, max= 5.425, step = 0.005),
      numericInput('qsec', '1/4 mile time', 17.71, min = 14.50, max= 22.90, step = 0.01),
      numericInput('vs', 'V/S', 0, min = 0, max= 1, step = 1),
      numericInput('am', 'Transmission (0 = automatic, 1 = manual)', 0, min = 0, max= 1, step = 1),
      numericInput('gear', 'Number of forward gears', 4, min = 3, max= 5, step = 1),
      numericInput('carb', 'Number of carburetors', 2, min = 1, max= 8, step = 1),
      
      actionButton('goButton', "Go!")
    ),
    mainPanel (
      h2('Documentation'),
      p('A generalized linear model (glm) is used to predict the mileage of the vehicle.'),
      p('The mtcars dataset used to train the model.'),
      p('To use this application, please enter the required values in the adjacent fields 
        and click on Go!'),
      p('The application uses the prediction model to predict the mileage. May you get the
        best combination of variables for your dream mileage!'),
      h3('Results of prediction'),
      h4('Your Vehicle\'s Predicted MPG:'),
      textOutput("prediction")
    )
  )
  
)