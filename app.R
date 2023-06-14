#Configuración#
Sys.setlocale("LC_ALL", 'es_ES.UTF-8')

##Librerias previas##
library(shiny)
library(shinyWidgets)
library(shinyjs)
library(tidyverse)
library(SOfun) #Extraer descripciones de las funciones
library(tfse) #Citas
library(pacman) #Instalar paquetes
 
##Cargar temas##
  paquetes = c("ggplot2", sort(c(
    "add2ggplot", "artyfarty", "bbplot","darknerdthemes", "delgosha",
    "ewenthemes", "firatheme", "fontMPlus", "ggcute", "ggCyberPunk", "ggdark",
    "ggdecor", "gghighcontrast", "ggnuplot", "ggplot2bdc",
    "ggpomological", "ggprism", "ggtech", "ggthemepark", "ggthemes",
    "ggthemr","hrbrthemes", "industRial", "jmvcore", "lato","Rokemon", "sfthemes",
    "tvthemes", "urbnthemes","vapoRwave", "visibly", "xkcd",
    "ggexpanse")))
  
  p_load("add2ggplot", "artyfarty", "bbplot","darknerdthemes", "delgosha",
         "ewenthemes", "firatheme", "fontMPlus", "ggcute", "ggCyberPunk", "ggdark",
         "ggdecor", "gghighcontrast", "ggnuplot", "ggplot2bdc",
         "ggpomological", "ggprism", "ggtech", "ggthemepark", "ggthemes",
         "ggthemr","hrbrthemes", "industRial", "jmvcore", "lato","Rokemon", "sfthemes",
         "tvthemes", "urbnthemes","vapoRwave", "visibly", "xkcd",
         "ggexpanse")
  
  # paquetes = c("ggplot2", sort(c(
  #   "AcidPlots", "add2ggplot", "artyfarty", "bbplot","darknerdthemes", "delgosha",
  #   "ewenthemes", "firatheme", "fontMPlus", "ggcute", "ggCyberPunk", "ggdark",
  #   "ggdecor", "ggexpanse","gghighcontrast", "ggnuplot", "ggplot2bdc",
  #   "ggpomological", "ggprism", "ggschemes","ggtech", "ggthemepark", "ggthemes",
  #   "ggthemr","hrbrthemes", "industRial", "jmvcore", "lato","Rokemon", "sfthemes",
  #   "tvthemes", "urbnthemes","vapoRwave", "visibly", "xkcd"))) #Algunos no funcionan en la web
  
  descripciones = list()
  temas = list()
  citas = list()
  for (paquete in paquetes) {
    #Se guardan las descripciones de los paquetes
    descripciones <- append(descripciones, packageDescription(paquete, fields = 'Description') )
    #Se buscan todas los funciones con la palabra "theme"
    temas <- append(temas,list(eval(bquote(lsf.str( paste0("package:",paquete), pattern = "theme_")))))
    #Se guardan citas en formato APA
    citas <- append(citas, apa_citation(paquete))
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
temas[["ggtech"]] = c("theme_airbnb_fancy()",'theme_tech(theme="airbnb")',
               'theme_tech(theme="etsy")','theme_tech(theme="facebook")',
               'theme_tech(theme="google")','theme_tech(theme="twitter")',
               'theme_tech(theme="X23andme")')
temas[["ggthemr"]] = c("flat", "flat dark", "dust", "light", "earth", "fresh", "chalk",
               "lilac", "carrot", "pale", "copper",
               "grape", "greyscale", "sky", "solarized",
               "grass", "sea", "camouflage")
temas[["vapoRwave"]] = c("floral_shoppe","new_retro","jwz")
temas[["visibly"]] = c("theme_clean","theme_trueMinimal")

##Cargar fuentes##
  #Fuentes para tvthemes
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

#En servidor
library(showtext)
source("fuentes.R")
showtext_auto()

#Alternativa, solo en local
# library(extrafont)
# loadfonts(device = "all", quiet = T)

##Graficos de muestra##
grafico1 = get(load("www/muestra/grafico1.Rdata"))
grafico2 = get(load("www/muestra/grafico2.Rdata"))
grafico3 = get(load("www/muestra/grafico3.Rdata"))
muestras = list(grafico1, grafico2, grafico3)
nombres_muestra = c("Gráfico de dispersión", "Boxplot", "Gráfico de barras")
names(muestras) = nombres_muestra

##Construcción de la aplicacion##
# Interfaz
ui <- fluidPage(
  useShinyjs(),
  
    # Titulo
    titlePanel("Selector de temas para ggplot2"),

    # Sidebar
    sidebarLayout(
        sidebarPanel(
          tabsetPanel(
            
          #Carga de datos
            tabPanel("Datos",
          h3("Gráfico"),
          pickerInput(
            inputId = "selectorGrafPrueba",
            label = "Archivos de muestra", 
            choices = nombres_muestra
          ),
          p(strong('Cargar gráfico (formato .Rdata)')),
          p('Guarde su objeto ggplot2 con la función "save()" y luego navegue hasta él para cargarlo'),
          fileInput("selectorGraf", label = ""),
            ),
          
          #Seleccion de temas
          tabPanel("Tema",
          h3("Seleccionar tema"),
          pickerInput(
            inputId = "selectorPaquete",
            label = "Seleccione el paquete", 
            choices = paquetes,
            options = list(
              `live-search` = TRUE)
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
          textOutput("citaActual"),
          ),
          
          #Tamaño
          tabPanel("Tamaño", 
            numericInput("anchoSelector", label = h3("Ancho"), value = 400),
            numericInput("alturaSelector", label = h3("Altura"), value = 400),
          checkboxInput("checkboxDimensiones", label = "Usar valores por defecto", value = TRUE)
                   )
        ),
),
        # Panel principal
        mainPanel(
          uiOutput("grafico.ui")
        )
    )
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
    paqueteActual(input$selectorPaquete)
    output$citaActual <- renderText({citas[[paqueteActual()]]})
    })
  
    #Tema seleccionado
  temaActual <- reactiveVal()
  
  observeEvent(input$selectorTema, {
    temaActual(input$selectorTema)
  })
  
  #Actualizar menues
  observeEvent(input$selectorPaquete, {
    #Funciones
    updatePickerInput(session, "selectorTema", choices = temas[[paqueteActual()]] )

    #Descripcion del paquete
    output$descActual <- renderText({descripciones[[paqueteActual()]]})
  })
  
  observeEvent(input$selectorTema, {
    #Descripcion de la funcion
    descripcion_alt = "No disponible"
    output$descActualTema <- renderText({descripcion_alt})
    try({descripcion = eval(parse(text = paste0( "helpExtract(",temaActual(),', section="Description", type = "m_text")' ) ))
    output$descActualTema <- renderText({descripcion})
    })
    
    #Funciones con el mimso nombre
    if(temaActual() == "theme_clean" & paqueteActual()=="ggthemes"){
      try({descripcion = "Clean ggplot theme with no panel background, black axis lines and grey fill colour for chart elements."
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_clean" & paqueteActual()=="visibly"){
      try({descripcion = "Clean up plots from their defaults."
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_xkcd" & paqueteActual()=="xkcd"){
      try({descripcion = "This function creates an XKCD theme"
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_xkcd" & paqueteActual()=="ggdecor"){
      try({descripcion = "You should import_xkcd first and also install the fonts on your system before trying to use this theme."
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_tufte"){
      try({descripcion = "Theme based on Chapter 6 'Data-Ink Maximization and Graphical Design' of Edward Tufte *The Visual Display of Quantitative Information*. No border, no axis lines, no grids. This theme works best in combination with geom_rug() or geom_rangeframe()."
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_economist" & paqueteActual()=="ggthemes"){
      try({descripcion = "A theme that approximates the style of The Economist."
      output$descActualTema <- renderText({descripcion})
      })
    }
    if(temaActual() == "theme_economist" & paqueteActual()=="artyfarty"){
      try({descripcion = "A theme inspired by https://www.ft.com/"
      output$descActualTema <- renderText({descripcion})
      })
    }
  
    })
  
  #Grafico
  output$mostrarGrafico <- renderPlot({
    try({
      ggthemr_reset()
    if(paqueteActual() == "ggthemr"){ #ggthemr usa una sintaxis distinta al resto
      ggthemr(temaActual())
      grafico()
    } else if (paqueteActual() == "ggtech"){ #ggtech usa una sintaxis distinta al resto
      grafico() + eval(parse(text=temaActual()))
    } else if (paqueteActual() == "tvthemes"){ #De esa manera se pueden usar fuentes
      if(temaActual() %in% temas[["tvthemes"]]){grafico() + eval(parse(text=funciones_tvthemes[[ temaActual()  ]]))}
    } else {
      grafico() + eval(parse(text=paste0(temaActual(),"()")))
    }
    })
  })
  
  output$grafico.ui <- renderUI({
    plotOutput("mostrarGrafico",
               width = ancho(),
               height = altura())
  })

  #Tamaño
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

# Correr la aplicación
shinyApp(ui = ui, server = server)
