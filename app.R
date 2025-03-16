##########################
#######Configuración######
##########################
Sys.setlocale("LC_ALL", "es_ES.UTF-8")

########################
#######Librerías########
########################
  #Construir app
library(shiny)
library(shinyWidgets)
library(shinythemes)
library(shinyjs)
  #Gráficos
library(urbnthemes) #Cargar antes de ggplot2
library(tidyverse)
  #Textos
library(SOfun) #Extraer descripciones de las funciones
library(tfse) #Citas APA
  #Utilidades
library(pacman) #Instalar paquetes

###########################
######Configurar temas#####
###########################

  #Cargar paquetes
paquetes <- c("ggplot2", sort(c(
  "add2ggplot", "artyfarty", "bbplot", "cowplot", "darknerdthemes", "delgosha",
  "eafithemer", "envalysis", "ewenthemes", "firatheme", "fontHind", "fontMPlus",
  "ggcute", "ggCyberPunk", "ggdark",  "ggdecor", "gghdx", "ggexpanse",
  "gghighcontrast", "gglgbtq", "ggnuplot", "ggplot2bdc", "ggpomological",
  "ggprism", "ggpubfigs", "ggpubr", "ggshredR", "ggtech", "ggthemepark",
  "ggthemes", "ggthemr", "gouvdown", "hjplottools", "hrbrthemes", "industRial",
  "jmvcore", "lato", "pilot", "profiplots", "randplot", "Rokemon", "RSSthemes",
  "see", "sfthemes", "sjPlot", "stevethemes", "ThemePark", "tvthemes",
  "unhcrthemes", "urbnthemes", "vapoRwave", "visibly", "wwplot", "xkcd"
)))

library(ggshredR)
reset_theme_settings() #Evita que el paquete anterior haga cambios globales

p_load(
  "add2ggplot", "artyfarty", "bbplot", "cowplot", "darknerdthemes", "delgosha",
  "eafithemer", "envalysis", "ewenthemes", "firatheme", "fontHind", "fontMPlus",
  "ggcute", "ggCyberPunk", "ggdark", "ggdecor", "gghdx", "ggexpanse",
  "gghighcontrast", "gglgbtq", "ggnuplot", "ggplot2bdc", "ggpomological",
  "ggprism",  "ggpubfigs", "ggpubr", "ggtech", "ggthemepark", "ggthemes",
  "ggthemr", "gouvdown", "hjplottools", "hrbrthemes", "industRial", "jmvcore",
  "lato", "pilot", "profiplots", "randplot", "Rokemon", "RSSthemes", "see",
  "sfthemes", "sjPlot", "stevethemes", "ThemePark", "tvthemes", "unhcrthemes",
  "vapoRwave", "visibly", "wwplot", "xkcd"
)

  #Guardar temas, descripciones y citas
descripciones <- list()
temas <- list()
citas <- list()
for (paquete in paquetes) {
  #Se guardan las descripciones de los paquetes
  descripciones <- append(descripciones, packageDescription(paquete, fields = "Description"))
  #Se buscan todas los funciones con la palabra "theme"
  temas <- append(temas, list(eval(bquote(lsf.str(paste0("package:", paquete), pattern = "theme_")))))
  #Se guardan citas en formato APA
  suppressWarnings(invisible(capture.output(citas <- append(citas, apa_citation(paquete)))))
}
names(descripciones) <- paquetes
names(citas) <- paquetes

  #Se excluyen funciones que no son temas
excluir <- c(
  "register_theme_elements", "reset_theme_settings", "theme_get", "theme_set",
  "theme_update", "theme_replace", "invert_theme_elements", "theme_test",
  "gg_supports_theme_attribute")

temas <- lapply(temas, function(x) x[!x %in% excluir])
names(temas) <- paquetes

  #Algunas funciones no contienen la palabra "theme" o usan otra sintaxis
temas[["bbplot"]][1] <- "bbc_style"
temas[["gglgbtq"]] <- c(paste0("theme_lgbtq('", c(show_pride()$palettes), "')"))
temas[["ggtech"]] <- c("theme_airbnb_fancy", "theme_tech(theme='airbnb')",
                       "theme_tech(theme='etsy')", "theme_tech(theme='facebook')",
                       "theme_tech(theme='google')", "theme_tech(theme='twitter')",
                       "theme_tech(theme='X23andme')")
temas[["ggthemr"]] <- c("flat", "flat dark", "dust", "light", "earth", "fresh",
                        "chalk", "lilac", "carrot", "pale", "copper", "grape",
                        "greyscale", "sky", "solarized", "grass", "sea",
                        "camouflage")
temas[["hjplottools"]] <- c("hj_theme")
temas[["stevethemes"]] <- c(temas[["stevethemes"]], "theme_steve('ms')",
                            "theme_steve('fira')", "theme_steve('generic')",
                            "theme_steve('merri')")
temas[["vapoRwave"]] <- c("floral_shoppe", "new_retro", "jwz")
temas[["visibly"]] <- c("theme_clean", "theme_trueMinimal")
temas[["wwplot"]] <- c("wolves_theme")

#################################
#######Configurar fuentes########
#################################

  #Cargar fuentes
source("fuentes.R")
showtext_auto()
names(funciones_tvthemes) <- temas[["tvthemes"]]

####################################
#######Correcciones manuales########
####################################

source("correcciones.R")

#################################
#######Configurar paletas########
#################################

source("paletas.R", local = TRUE)

#####################################
######Cargar gráficos de prueba######
#####################################
grafico1 <- get(load("www/muestra/grafico1.Rdata"))
grafico2 <- get(load("www/muestra/grafico2.Rdata"))
grafico3 <- get(load("www/muestra/grafico3.Rdata"))
grafico4 <- get(load("www/muestra/grafico4.Rdata"))
grafico5 <- get(load("www/muestra/grafico5.Rdata"))
muestras <- list(grafico1, grafico2, grafico3, grafico4, grafico5)
names(muestras) <- c("Gráfico de dispersión", "Boxplot", "Gráfico de barras", "Histograma", "Mapa de densidad")

#####################################
#######Construir la aplicación#######
#####################################

# Interfaz
ui <- fluidPage(
  theme = shinytheme("yeti"),
  useShinyjs(), #Aplicar JS
  useBusyIndicators(), # Indicadores de carga

  #Titulo
  titlePanel("Selector de temas para ggplot2"),

  #Sidebar
  sidebarLayout(sidebarPanel(
    tabsetPanel(
      #Carga de datos
      tabPanel(
        "Datos",
        h3("Gráfico"),
        pickerInput(
          inputId = "selectorGrafPrueba",
          label = "Archivos de muestra",
          choices = names(muestras)
        ),
        p(strong("Cargar gráfico (formato .Rdata)")),
        p(
          "Guarde su objeto ggplot2 con la función 'save()' y luego navegue hasta él para cargarlo."
        ),
        fileInput("selectorGraf", label = ""),
      ),

      #Seleccion de temas
      tabPanel(
        "Tema",
        h3("Seleccionar tema"),
        pickerInput(
          inputId = "selectorPaquete",
          label = "Seleccione el paquete",
          choices = paquetes,
          options = list(`live-search` = TRUE)
        ),
        p(strong("Descripción")),
        textOutput("descActual"),
        br(),
        pickerInput(
          inputId = "selectorTema",
          label = "Seleccione el tema",
          choices = temas$ggplot2
        ),
        p(strong("Descripción")),
        textOutput("descActualTema"),
        br(),
        h4("Cita del paquete"),
        textOutput("citaActual")
      ),

      #Paletas
      tabPanel(
        "Paletas",
        h3("Seleccionar paletas de colores"),
        p(
          "Asegúrese de seleccionar una escala que corresponda con el tipo de variable de su gráfico (discreta o continua). De lo contrario, el gráfico no se mostrará."
        ),
        pickerInput(
          inputId = "selectorPaquetePaleta",
          label = "Seleccione el paquete",
          choices = sort(paquetesPaletas),
          options = list(`live-search` = TRUE)
        ),
        p(strong("Descripción")),
        textOutput("descActualPaleta"),
        br(),
        pickerInput(
          inputId = "selectorPaletaFill",
          label = "Seleccione una paleta (fill)",
          choices = paletasFill$ggplot2
        ),
        p(strong("Descripción")),
        textOutput("descActualPaletaFill"),
        br(),
        pickerInput(
          inputId = "selectorPaletaColor",
          label = "Seleccione una paleta (color)",
          choices = paletasColor$ggplot2
        ),
        p(strong("Descripción")),
        textOutput("descActualPaletaColor"),
        br(),
        h4("Cita del paquete"),
        textOutput("citaActualPaleta")
      ),
      #Tamaño
      tabPanel(
        "Tamaño",
        numericInput("anchoSelector", label = h3("Ancho"), value = 400),
        numericInput(
          "alturaSelector",
          label = h3("Altura"),
          value = 400
        ),
        checkboxInput("checkboxDimensiones", label = "Usar valores por defecto", value = TRUE)
      )
    ),
  ),
  # Panel principal
  mainPanel(uiOutput("grafico.ui")))
)

# Servidor
server <- function(input, output, session) {

  #Archivo utilizado
  grafico <- reactiveVal(grafico1)

  observeEvent(input$selectorGraf, {
    req(input$selectorGraf)
    #Corrige `guides` si el gráfico es previo a la versión 3.5.0 de gplot2
    plot_usuario <- get(load(input$selectorGraf$datapath))
    if (!"ggproto" %in% class(plot_usuario$guides)) {
      plot_usuario <-  actualizar_plot(plot_usuario)
    }
    grafico(plot_usuario)
  })

  observeEvent(input$selectorGrafPrueba, {
    grafico(muestras[[input$selectorGrafPrueba]])
  })

  #Paquete seleccionado
  paqueteActual <- reactiveVal()

  observeEvent(input$selectorPaquete, {

    #Cambiar paquete
    paqueteActual(input$selectorPaquete)

    #Cambiar funciones
    updatePickerInput(session, "selectorTema", choices = temas[[paqueteActual()]])
    if (grepl("\\(", temas[[paqueteActual()]][1]) | paqueteActual() == "ggthemr") { #ggthemr
      temaActual(temas[[paqueteActual()]][1])
    } else if (paqueteActual() == "tvthemes") { #Aplicando fuentes a tvthemes
      temaActual(funciones_tvthemes[[temas[[paqueteActual()]][1]]])
    } else { #Caso general
      temaActual(paste0(temas[[paqueteActual()]][1], "()"))
    }

    #Cambiar cita
    output$citaActual <- renderText({citas[[paqueteActual()]]})

    #Cambiar descripción del paquete
    output$descActual <- renderText({descripciones[[paqueteActual()]]})
  })

  #Tema seleccionado
  temaActual <- reactiveVal()

  observeEvent(input$selectorTema, {
    #Cambiar función
    if (grepl("\\(", input$selectorTema) | paqueteActual() == "ggthemr") { #Sin paréntesis
      temaActual(input$selectorTema)
    } else if (paqueteActual() == "tvthemes") { #Aplicando fuentes a tvthemes
      temaActual(funciones_tvthemes[[input$selectorTema]])
    } else { #Caso general
      temaActual(paste0(input$selectorTema, "()"))
    }
  })

  #Cambiar descripción del tema
  observeEvent(c(temaActual(), paqueteActual()), {
    if (str_remove(gsub("\\([^)]*\\)", "", temaActual()), "\\(\\)") %in% temas[[paqueteActual()]] & paqueteActual() != "ggthemr") {
      descripcion <- "No disponible"
      try({
        descripcion <- eval(
          parse(text = paste0(
            "helpExtract(", str_remove(gsub("\\([^)]*\\)", "", temaActual()), "\\(\\)"), ', section="Description", type = "m_text", package =', paqueteActual(), ")"
          )))
      })
      output$descActualTema <- renderText({descripcion})
    } else if (paqueteActual() %in% c("gglgbtq", "ggtech")) {
      descripcion <- "No disponible"
      try({
        descripcion <- eval(
          parse(text = paste0(
            "helpExtract(", str_remove(gsub("\\([^)]*\\)", "", temaActual()), "\\(\\)"), ', section="Description", type = "m_text", package =', paqueteActual(), ")"
          )))
      })
      output$descActualTema <- renderText({descripcion})
    } else {
      descripcion <- "No disponible"
      output$descActualTema <- renderText({descripcion})
    }})

  #Paquete seleccionado (Paletas)
  paqueteActualPaleta <- reactiveVal()

  observeEvent(input$selectorPaquetePaleta, {
    #Cambiar paquete
    paqueteActualPaleta(gsub(" \\(.*\\)", "", input$selectorPaquetePaleta)) #Elimina paréntesis

    #Cambiar descripción del paquete
    output$citaActualPaleta <- renderText({citasPaletas[[paqueteActualPaleta()]]})

    #Cambiar cita del paquete
    output$descActualPaleta <- renderText({descripcionesPaletas[[paqueteActualPaleta()]]})

    #Cambiar funciones
    updatePickerInput(session, "selectorPaletaFill", choices = paletasFill[[input$selectorPaquetePaleta]])
    updatePickerInput(session, "selectorPaletaColor", choices = paletasColor[[input$selectorPaquetePaleta]])
    if (is.null(paletasFill[[paqueteActualPaleta()]])) {
      updatePickerInput(session, "selectorPaletaFill", choices = "Ninguna")
    }
    if (is.null(paletasColor[[paqueteActualPaleta()]])) {
      updatePickerInput(session, "selectorPaletaColor", choices = "Ninguna")
    }
  })

  #Paletas seleccionadas
  PaletaFillActual <- reactiveVal()
  PaletaColorActual <- reactiveVal()

observeEvent(input$selectorPaletaFill, {

    #Cambiar función
    if (input$selectorPaletaFill == "Ninguna") {
      PaletaFillActual(paste0(input$selectorPaletaFill, "()"))
    } else if (grepl("\\(", input$selectorPaletaFill) & !paqueteActualPaleta() %in% paletas_manual) { #Sin paréntesis
      PaletaFillActual(paste0(paqueteActualPaleta(), "::", input$selectorPaletaFill))
    } else if (paqueteActualPaleta() %in% paletas_manual) { #Paquetes añadidos manualmente
      if (grepl("\\(", input$selectorPaletaFill)) {
        PaletaFillActual(paste0(input$selectorPaletaFill))
      } else {
        PaletaFillActual(paste0(input$selectorPaletaFill, "()"))
      }
    } else { #Caso general
      PaletaFillActual(paste0(paqueteActualPaleta(), "::", input$selectorPaletaFill, "()"))
    }

    #Cambiar descripción
    output$descActualPaletaFill <- renderText({"No disponible"})

    if (!PaletaFillActual() == "Ninguna()" & !grepl("\\(", input$selectorPaletaFill)) {
      try({
        descripcionFill <- eval(parse(text = paste0("helpExtract(", str_remove(gsub(".*:(.*)\\(.*\\)", "\\1", PaletaFillActual()), "\\(\\)"), ', section="Description", type = "m_text", package =', paqueteActualPaleta(), ")")))
        output$descActualPaletaFill <- renderText({descripcionFill})
      })
    } else if (!PaletaFillActual() == "Ninguna()" & !paqueteActualPaleta() %in% paletas_manual) {
      try({
        descripcionFill <- eval(parse(text = paste0("helpExtract(", gsub(".*::|\\(.*\\)", "", PaletaFillActual()), ', section="Description", type = "m_text", package =', paqueteActualPaleta(), ")")))
        output$descActualPaletaFill <- renderText({descripcionFill})
      })
    }
  })

  observeEvent(input$selectorPaletaColor, {

    #Cambiar función
    if (input$selectorPaletaColor == "Ninguna") {
      PaletaColorActual(paste0(input$selectorPaletaColor, "()"))
    } else if (grepl("\\(", input$selectorPaletaColor) & !paqueteActualPaleta() %in% paletas_manual) { #Sin paréntesis
      PaletaColorActual(paste0(paqueteActualPaleta(), "::", input$selectorPaletaColor))
    } else if (paqueteActualPaleta() %in% paletas_manual) { #Paquetes añadidos manualmente
      if (grepl("\\(", input$selectorPaletaColor)) {
        PaletaColorActual(paste0(input$selectorPaletaColor))
      } else {
        PaletaColorActual(paste0(input$selectorPaletaColor, "()"))
      }
    } else { #Caso general
      PaletaColorActual(paste0(paqueteActualPaleta(), "::", input$selectorPaletaColor, "()"))
    }

    #Cambiar descripción
    output$descActualPaletaColor <- renderText({"No disponible"})

    if (!PaletaColorActual() == "Ninguna()" & !grepl("\\(", input$selectorPaletaColor)) {
      try({
        descripcionColor <- eval(parse(text = paste0("helpExtract(", str_remove(gsub(".*:(.*)\\(.*\\)", "\\1", PaletaColorActual()), "\\(\\)"), ', section="Description", type = "m_text", package =', paqueteActualPaleta(), ")")))
        output$descActualPaletaColor <- renderText({descripcionColor})
      })
    } else if (!PaletaColorActual() == "Ninguna()" & !paqueteActualPaleta() %in% paletas_manual) {

      try({
        descripcionColor <- eval(parse(text = paste0("helpExtract(", gsub(".*::|\\(.*\\)", "", PaletaColorActual()), ', section="Description", type = "m_text", package =', paqueteActualPaleta(), ")")))
        output$descActualPaletaColor <- renderText({descripcionColor})
      })
    }
  })

  #Mostrar gráfico
  output$mostrarGrafico <- renderPlot({  #Renderizar gráfico
    resetear_defaults() #Valores predeterminados de ggplot2

    if(paqueteActual() %in% c("firatheme", "ggCyberPunk", "ggexpanse", "vapoRwave", "xkcd")){ #Temas corregidos
      grafico() + eval(parse(text = paste0(temaActual()))) + eval(parse(text = paste0(PaletaColorActual()))) + eval(parse(text = paste0(PaletaFillActual())))
    } else if (paqueteActual() == "ggthemr") { #ggthemr usa una sintaxis distinta al resto
      ggthemr(temaActual())
      grafico() + eval(parse(text = paste0(PaletaColorActual()))) + eval(parse(text = paste0(PaletaFillActual())))
    } else {
      grafico() + eval(parse(text = paste0(paqueteActual(), "::", temaActual()))) + eval(parse(text = paste0(PaletaColorActual()))) + eval(parse(text = paste0(PaletaFillActual())))
    }
  })

  output$grafico.ui <- renderUI({ #Cambiar según dimensiones
    plotOutput("mostrarGrafico",
               width = ancho(),
               height = altura())
  })

  #Cambiar tamaño
  altura <- reactiveVal("400px") #Valores por defecto
  ancho <- reactiveVal("100%") #Valores por defecto

  observeEvent(input$checkboxDimensiones, {
    if (input$checkboxDimensiones) { #Usar valores por defecto
      disable("alturaSelector")
      disable("anchoSelector")
      altura("400px")
      ancho("100%")
    } else { #Usar valores indicados
      enable("alturaSelector")
      enable("anchoSelector")
      observeEvent(input$alturaSelector, {
        altura(paste0(as.character(input$alturaSelector), "px"))
      })
      observeEvent(input$anchoSelector, {
        ancho(paste0(as.character(input$anchoSelector), "px"))
      })
    }
  })
}

####################################
########Ejecutar la aplicación######
####################################
shinyApp(ui = ui, server = server)
