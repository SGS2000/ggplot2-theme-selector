##########################
#######Configuración######
##########################
Sys.setlocale("LC_ALL", 'es_ES.UTF-8')

########################
#######Librerias########
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
paquetes = c("ggplot2", sort(c(
  "add2ggplot", "artyfarty", "bbplot", "cowplot", "darknerdthemes", "delgosha",
  "eafithemer", "ewenthemes", "firatheme", "fontHind", "fontMPlus", "ggcute",
  "ggCyberPunk", "ggdark", "ggdecor", "ggexpanse", "gghighcontrast",
  "ggnuplot", "ggplot2bdc", "ggpomological", "ggprism", "ggpubr", "ggshredR",
  "ggtech", "ggthemepark", "ggthemes", "ggthemr", "gouvdown", "hjplottools",
  "hrbrthemes", "industRial", "jmvcore", "lato", "randplot", "Rokemon",
  "sfthemes", "ThemePark","tvthemes", "urbnthemes", "vapoRwave", "visibly", 
  "wwplot", "xkcd"
)))

library(ggshredR)
reset_theme_settings() #Evita que el paquete anterior haga cambios globales

p_load(
  "add2ggplot", "artyfarty", "bbplot", "cowplot", "darknerdthemes", "delgosha",
  "eafithemer", "ewenthemes", "firatheme", "fontHind", "fontMPlus", "ggcute",
  "ggCyberPunk", "ggdark", "ggdecor", "ggexpanse", "gghighcontrast",
  "ggnuplot", "ggplot2bdc", "ggpomological", "ggprism", "ggpubr",
  "ggtech", "ggthemepark", "ggthemes", "ggthemr", "gouvdown", "hjplottools",
  "hrbrthemes", "industRial", "jmvcore", "lato", "randplot", "Rokemon",
  "sfthemes", "ThemePark", "tvthemes", "vapoRwave", "visibly", 
  "wwplot", "xkcd"
)

  #Guardar temas, descripciones y citas
descripciones = list()
temas = list()
citas = list()
for (paquete in paquetes) {
  #Se guardan las descripciones de los paquetes
  descripciones <- append(descripciones, packageDescription(paquete, fields = 'Description') )
  #Se buscan todas los funciones con la palabra "theme"
  temas <- append(temas,list(eval(bquote(lsf.str( paste0("package:",paquete), pattern = "theme_")))))
  #Se guardan citas en formato APA
  suppressWarnings(invisible(capture.output( citas <- append(citas, apa_citation(paquete)) ) ))
}
names(descripciones) = paquetes
names(citas) = paquetes


  #Se excluyen funciones que no son temas
excluir = c("register_theme_elements", "reset_theme_settings", 
            "theme_get", "theme_set", "theme_update", "theme_replace",
            "invert_theme_elements", "theme_test",
            "gg_supports_theme_attribute")
temas <- lapply(temas, function(x) x[!x %in% excluir])
names(temas) = paquetes

  #Algunas funciones no contienen la palabra "theme" o usan otra sintaxis
temas[["bbplot"]][1] = "bbc_style"
temas[['ggtech']] = c("theme_airbnb_fancy","theme_tech(theme='airbnb')",
                      "theme_tech(theme='etsy')","theme_tech(theme='facebook')",
                      "theme_tech(theme='google')","theme_tech(theme='twitter')",
                      "theme_tech(theme='X23andme')")
temas[["ggthemr"]] = c("flat", "flat dark", "dust", "light", "earth", "fresh", "chalk",
                       "lilac", "carrot", "pale", "copper",
                       "grape", "greyscale", "sky", "solarized",
                       "grass", "sea", "camouflage")
temas[["hjplottools"]] = c("hj_theme")
temas[["vapoRwave"]] = c("floral_shoppe","new_retro","jwz")
temas[["visibly"]] = c("theme_clean","theme_trueMinimal")
temas[["wwplot"]] = c("wolves_theme")

#################################
#######Configurar fuentes########
#################################

  #Cargar fuentes
source("fuentes.R")
showtext_auto()

#Fuentes para paquetes específicos
funciones_tvthemes = list('theme_avatar(title.font = "Slayer",text.font = "Slayer")',
                          'theme_brooklyn99(title.font = "Titillium Web",text.font = "Calibri Light")',
                          'theme_hildaDay()',
                          'theme_hildaDusk()',
                          'theme_hildaNight()',
                          'theme_parksAndRec(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_parksAndRec_light(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_parksAndRecLight(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_rickAndMorty(title.font = "Get Schwifty",text.font = "Get Schwifty")',
                          'theme_simpsons(title.font = "Akbar",text.font = "Akbar")',
                          'theme_spongeBob(title.font = "Some Time Later",text.font = "Some Time Later")',
                          'theme_theLastAirbender(title.font = "Slayer",text.font = "Slayer")'
)
names(funciones_tvthemes) = temas[["tvthemes"]]

#####################################
######Cargar gráficos de prueba######
#####################################
grafico1 = get(load("www/muestra/grafico1.Rdata"))
grafico2 = get(load("www/muestra/grafico2.Rdata"))
grafico3 = get(load("www/muestra/grafico3.Rdata"))
grafico4 = get(load("www/muestra/grafico4.Rdata"))
muestras = list(grafico1, grafico2, grafico3, grafico4)
nombres_muestra = c("Gráfico de dispersión", "Boxplot", "Gráfico de barras", "Histograma")
names(muestras) = nombres_muestra

#####################################
#######Construir la aplicación#######
#####################################

# Interfaz
ui <- fluidPage(
  theme = shinytheme("yeti"),
  useShinyjs(), #Aplicar JS
  
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
          choices = nombres_muestra
        ),
        p(strong('Cargar gráfico (formato .Rdata)')),
        p(
          'Guarde su objeto ggplot2 con la función "save()" y luego navegue hasta él para cargarlo.'
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
      ),
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
    grafico(get(load(input$selectorGraf$datapath)))
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
    updatePickerInput(session, "selectorTema", choices = temas[[paqueteActual()]] )
    if (paqueteActual() == "ggthemr" ) { #ggthemr
      temaActual(paste0(temas[[paqueteActual()]][1]))
    } else if(paqueteActual() == "tvthemes" ){ #Aplicando fuentes a tvthemes
      temaActual(funciones_tvthemes[[temas[[paqueteActual()]][1]]])
    } else { #Caso general
      temaActual(paste0(temas[[paqueteActual()]][1],"()"))
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
    if (grepl("\\(", input$selectorTema) | paqueteActual() == "ggthemr" ) { #Sin paréntesis
      temaActual(input$selectorTema)
    } else if(paqueteActual() == "tvthemes" ){ #Aplicando fuentes a tvthemes
      temaActual(funciones_tvthemes[[input$selectorTema]])
    } else { #Caso general
      temaActual(paste0(input$selectorTema,"()"))
    }
  })
  
  #Cambiar descripción del tema
  observeEvent( c(temaActual(),paqueteActual()), {
    if(str_remove(gsub("\\([^)]*\\)", "", temaActual()), "\\(\\)") %in% temas[[paqueteActual()]] & paqueteActual()!="ggthemr"){
      descripcion = "No disponible"
      try({
        descripcion = eval(
          parse(text = paste0(
            "helpExtract(",str_remove(gsub("\\([^)]*\\)", "", temaActual()), "\\(\\)"),', section="Description", type = "m_text", package =', paqueteActual(), ")"
          )))
      })
      output$descActualTema <- renderText({descripcion})
    } else{
      descripcion = "No disponible"
      output$descActualTema <- renderText({descripcion})
    }})
  
  #Mostrar gráfico
  output$mostrarGrafico <- renderPlot({ #Renderizar gráfico
    ggthemr_reset() #Elimina cambios en el paquete ggthemr
    options('ggplot2.discrete.colour' = NULL)
    options('ggplot2.continuous.colour' = NULL)
    if(paqueteActual() %in% c("ggexpanse","firatheme", "xkcd")){ #Temas corregidos
      grafico() + eval(parse( text=paste0(temaActual()) ))
    } else if( paqueteActual() == "ggthemr"){ #ggthemr usa una sintaxis distinta al resto
      ggthemr(temaActual())
      grafico()
    } else(
      grafico() + eval(parse( text=paste0( paqueteActual() ,"::", temaActual()) ))
    )
  })
  
  output$grafico.ui <- renderUI({ #Cambiar según dimensiones
    plotOutput("mostrarGrafico",
               width = ancho(),
               height = altura())
  })
  
  #Cambiar tamaño
  altura <- reactiveVal("400px") #Valores por defecto
  ancho <- reactiveVal("100%") #Valores por defecto
  
  observeEvent(input$checkboxDimensiones,{
    if(input$checkboxDimensiones){ #Usar valores por defecto
      disable("alturaSelector")
      disable("anchoSelector")
      altura("400px")
      ancho("100%")
    } else{ #Usar valores indicados
      enable("alturaSelector")
      enable("anchoSelector")
      observeEvent(input$alturaSelector, {
        altura(paste0(as.character(input$alturaSelector),"px"))
      })
      observeEvent(input$anchoSelector, {
        ancho(paste0(as.character(input$anchoSelector),"px"))
      })
    }
  })
  
}

####################################
########Ejecutar la aplicación######
####################################
shinyApp(ui = ui, server = server)