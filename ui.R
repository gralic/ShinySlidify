library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("LetterFreq: this app will guess the language of input text from Mean Squared Errors of Latin letter frequencies.   14 European languages, including Esperanto, are supported."),
  sidebarPanel(
    numericInput('numLang', label = h4("How many languages to guess"), 3, min = 1, max = 14, step = 1),
    textInput("stext", label = h3("Text input"), value = "Enter your text here! Use Ctrl+A and then Ctrl+V to paste your text.")
  ),
  mainPanel(
	verbatimTextOutput("intext")
  )
))
