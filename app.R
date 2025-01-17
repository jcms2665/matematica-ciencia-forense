library(shiny)

# Define el directorio estático para servir los archivos del libro
addResourcePath("book", "_book")

# Interfaz de usuario
ui <- fluidPage(
  titlePanel(" "),
  tags$iframe(
    src = "book/index.html",   # Ruta ajustada para servir el libro
    width = "100%",            # Ancho del iframe
    height = "800px",          # Alto del iframe
    frameborder = "0"          # Sin bordes en el iframe
  )
)

# Lógica del servidor
server <- function(input, output, session) {}

# Ejecutar la app
shinyApp(ui = ui, server = server)
