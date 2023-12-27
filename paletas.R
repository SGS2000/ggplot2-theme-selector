#########################
#####Cargar paquetes#####
#########################
paquetes_con_paletas = sort(c(paquetes, #Paquetes con paletas, sin temas
                              "ggsci","RColorBrewer","scico", "viridis", 
                              "wesanderson"
                              )) 

p_load("ggsci","RColorBrewer","scico", "viridis", "wesanderson")

#Guardar paletas, descripciones y citas
paletasFill = list()
paletasColor = list()
descripcionesPaletas = list()
citasPaletas = list()

for (paquete in paquetes_con_paletas) {
  paletasFill <- append(paletasFill,list(eval(bquote(lsf.str( paste0("package:",paquete), pattern = "scale_fill")))))
  paletasColor <- append(paletasColor,list(eval(bquote(lsf.str( paste0("package:",paquete), pattern = "scale_color")))))
  #Se guardan las descripciones de los paquetes
  descripcionesPaletas <- append(descripcionesPaletas, packageDescription(paquete, fields = 'Description') )
  #Se guardan citas en formato APA
  suppressWarnings(invisible(capture.output( citasPaletas <- append(citasPaletas, apa_citation(paquete)) ) ))
}

names(paletasFill) = paquetes_con_paletas
names(paletasColor) = paquetes_con_paletas
names(descripcionesPaletas) = paquetes_con_paletas
names(citasPaletas) = paquetes_con_paletas

#########################
#######Correcciones######
#########################

#Se excluyen funciones que no son paletas o que no funcionan
excluir_pal = c("scale_colour_farshchian_khalse", "scale_colour_ggthemr_d", 
                "scale_color_poketype", "scale_fill_poketype", 
                "scale_color_stepsn", "scale_fill_stepsn",
                "scale_color_gradientn","scale_fill_gradientn", 
                "scale_fill_manual","scale_color_manual"
                )
paletasFill <- lapply(paletasFill, function(x) x[!x %in% excluir_pal])
paletasColor <- lapply(paletasColor, function(x) x[!x %in% excluir_pal])

#Se añaden o corrigen algunas paletas manualmente
paletas_manual = c("artyfarty", "gglgbtq","randplot", "RColorBrewer","wesanderson")

paletas_artyfarty = c("flatty", "flatpaleta", "dg4", "few_light", "few_medium", 
                      "few_dark", "color_blind", "fancy", "pastel", "pastel2", 
                      "ashes", "monokai", "flat", "five38", "beach", "retro", 
                      "ft", "economist", "bain", "d3js", "google", "xmen", 
                      "pony", "dataroots")
paletasColor[["artyfarty"]] = c(paste0("scale_color_manual(values = pal('", paletas_artyfarty, "'))"))
paletasFill[["artyfarty"]] = c(paste0("scale_fill_manual(values = pal('", paletas_artyfarty, "'))"))

paletasColor[["darknerdthemes"]] = c(paletasColor[["darknerdthemes"]], paste0("scale_color_nerd('", c("candy","nord frost","nord aurora","everforest"), "')"))
paletasColor[["darknerdthemes"]] = c(paletasColor[["darknerdthemes"]], paste0("scale_color_nerd('", c("candy","nord frost","nord aurora","everforest"), "',"," discrete=F",")"))
paletasFill[["darknerdthemes"]] = c(paletasFill[["darknerdthemes"]], paste0("scale_fill_nerd('", c("candy","nord frost","nord aurora","everforest"), "')"))
paletasFill[["darknerdthemes"]] = c(paletasFill[["darknerdthemes"]], paste0("scale_fill_nerd('", c("candy","nord frost","nord aurora","everforest"), "',"," discrete=F", ")"))

paletasColor[["ggCyberPunk"]] = c( paste0( "scale_color_cyberpunk(palette ='", c("main","cotton candy","zune", "laser sword") , "')" ) )
paletasFill[["ggCyberPunk"]] = c( paste0( "scale_fill_cyberpunk(palette ='", c("main","cotton candy","zune", "laser sword") , "')" ) )
paletasColor[["ggCyberPunk"]] = c(paletasColor[["ggCyberPunk"]], paste0( "scale_color_cyberpunk(palette ='", c("main","cotton candy","zune", "laser sword") , "',discrete = F)" ) )
paletasFill[["ggCyberPunk"]] = c(paletasFill[["ggCyberPunk"]], paste0( "scale_fill_cyberpunk(palette ='", c("main","cotton candy","zune", "laser sword") , "',discrete = F)" ) )

paletasColor[["gglgbtq"]] = c(paste0("scale_color_manual(values = palette_lgbtq('", c(show_pride()$palettes), "'))"))  
paletasFill[["gglgbtq"]] = c(paste0("scale_fill_manual(values = palette_lgbtq('", c(show_pride()$palettes), "'))")) 

paletasFill[["ggprism"]] = c(paste0("scale_fill_prism(palette = '", c(names(ggprism_data$fill_palettes)),"')") )
paletasColor[["ggprism"]] = c(paste0("scale_color_prism(palette = '", c(names(ggprism_data$colour_palettes)),"')") )

paletasFill[["ggsci"]] = sort(c(paletasFill[["ggsci"]], "scale_fill_d3('category20')", "scale_fill_d3('category20b')", "scale_fill_d3('category20c')",
                                "scale_fill_igv('alternating')", "scale_fill_cosmic('hallmarks_dark')", "scale_fill_cosmic('signature_substitutions')",
                                "scale_fill_uchicago('dark')", "scale_fill_uchicago('light')","scale_fill_flatui('flattastic')", "scale_fill_flatui('aussie')", 
                                paste0("scale_fill_material('", c("pink","purple", "deep-purple","indigo", "blue","light-blue", "cyan","teal", "green","light-green", 
                                "lime","yellow", "amber","orange", "deep-orange","brown", "grey","blue-grey"),"')")
                                ))
paletasColor[["ggsci"]] = sort(c(paletasColor[["ggsci"]], "scale_color_d3('category20')", "scale_color_d3('category20b')", "scale_color_d3('category20c')",
                                 "scale_color_igv('alternating')", "scale_color_cosmic('hallmarks_dark')", "scale_color_cosmic('signature_substitutions')",
                                 "scale_color_uchicago('dark')", "scale_color_uchicago('light')","scale_color_flatui('flattastic')", 
                                 "scale_color_flatui('aussie')", paste0("scale_color_material('", c("pink","purple", "deep-purple","indigo", "blue","light-blue", 
                                 "cyan","teal", "green","light-green", "lime","yellow", "amber","orange", "deep-orange","brown", "grey","blue-grey"),"')")
                                 ))

paletasFill[["ggtech"]] = c(paste0("scale_fill_tech(theme = '", c("airbnb", "facebook", "google", "etsy", "twitter", "X23andme"),"')") )
paletasColor[["ggtech"]] = c(paste0("scale_color_tech(theme = '", c("airbnb", "facebook", "google", "etsy", "twitter", "X23andme"),"')") )

paletasColor[["randplot"]] = c(paste0("scale_color_manual(values = ", c("RandCatPal", "RandGrayPal"), ")")) 
paletasFill[["randplot"]] = c(paste0("scale_fill_manual(values = ", c("RandCatPal", "RandGrayPal"), ")")) 

paletasColor[["RColorBrewer"]] = c(paste0("scale_color_brewer(palette = '", c(rownames(RColorBrewer::brewer.pal.info)), "')")) 
paletasFill[["RColorBrewer"]] = c(paste0("scale_fill_brewer(palette = '", c(rownames(RColorBrewer::brewer.pal.info)), "')")) 

paletasColor[["scico"]] = c(paste0("scale_color_scico(palette = '", c(scico_palette_names()), "')")) 
paletasColor[["scico"]] = c(paletasColor[["scico"]], paste0("scale_color_scico_d(palette = '", c(scico_palette_names()), "')")) 
paletasFill[["scico"]] = c(paste0("scale_fill_scico(palette = '", c(scico_palette_names()), "')")) 
paletasFill[["scico"]] = c(paletasFill[["scico"]], paste0("scale_fill_scico_d(palette = '", c(scico_palette_names()), "')"))

paletasFill[["sfthemes"]] = c(paletasFill[["sfthemes"]][!paletasFill[["sfthemes"]] %in% c("scale_fill_macos_light")], "scale_fill_macos_light(order='contrast')")
paletasColor[["sfthemes"]] = c(eval(bquote(lsf.str( paste0("package:","sfthemes"), pattern = "scale_colour"))))

paletasColor[["vapoRwave"]][1] = "scale_color_avanti()()"
paletasColor[["vapoRwave"]][2] = "scale_color_cool()()"
paletasColor[["vapoRwave"]][3] = "scale_color_crystalPepsi()()"

paletasColor[["viridis"]] = c(paste0("scale_color_viridis(option='", c(LETTERS[1:8]), "')"))
paletasColor[["viridis"]] = c(paletasColor[["viridis"]], paste0("scale_color_viridis(option='", c(LETTERS[1:8]), "',"," discrete=T",")"))
paletasFill[["viridis"]] = c(paste0("scale_fill_viridis(option='", c(LETTERS[1:8]), "')"))
paletasFill[["viridis"]] = c(paletasFill[["viridis"]], paste0("scale_fill_viridis(option='", c(LETTERS[1:8]), "',"," discrete=T", ")"))

paletasColor[["wesanderson"]] = c(paste0("scale_color_manual(values = wes_palette('", c(names(wesanderson::wes_palettes)), "'))")) 
paletasFill[["wesanderson"]] = c(paste0("scale_fill_manual(values = wes_palette('", c(names(wesanderson::wes_palettes)), "'))")) 

paletasColor[["wwplot"]] = c(paste0("scale_colour_wolves(palette = '", c("wooly_bully", "sir_jack"), "')")) 
paletasFill[["wwplot"]] = c(paste0("scale_fill_wolves(palette = '", c("wooly_bully", "sir_jack"), "')"))
paletasColor[["wwplot"]] = c(paletasColor[["wwplot"]],paste0("scale_colour_wolves(palette = '", c("wooly_bully", "sir_jack"), "', discrete=F)")) 
paletasFill[["wwplot"]] = c(paletasFill[["wwplot"]],paste0("scale_fill_wolves(palette = '", c("wooly_bully", "sir_jack"), "', discrete=F)")) 

#Se divide el paquete ggthemes para mejorar la visualización
paletasColor[["ggthemes"]] = paletasColor[["ggthemes"]][!paletasColor[["ggthemes"]] %in% c("scale_color_canva","scale_color_excel_new",
                                                                                           "scale_color_tableau", "scale_color_gradient2_tableau",
                                                                                           "scale_color_gradient_tableau","scale_color_continuous_tableau",
                                                                                           "scale_color_few", "scale_color_hc", "scale_color_stata", "scale_color_wsj"
                                                                                           )]
paletasFill[["ggthemes"]] = paletasFill[["ggthemes"]][!paletasFill[["ggthemes"]] %in% c("scale_fill_canva","scale_fill_excel_new",
                                                                                           "scale_fill_tableau", "scale_fill_gradient2_tableau",
                                                                                           "scale_fill_gradient_tableau","scale_fill_continuous_tableau",
                                                                                        "scale_fill_few", "scale_fill_hc", "scale_fill_stata", "scale_fill_wsj"
                                                                                        )]

paletasColor[["ggthemes"]] = sort(c(paletasColor[["ggthemes"]], paste0( "scale_color_few(palette = '", c("Light","Medium","Dark") ,"')" ),
                                    paste0( "scale_color_hc(palette = '", c("default","darkunica") ,"')" ),
                                    paste0( "scale_color_stata(scheme = '", c(names(ggthemes_data$stata$colors$schemes)  ) ,"')" ),
                                    paste0( "scale_color_wsj(palette = '", c(names(ggthemes_data$wsj$palettes)  ) ,"')" )
                                    ))
paletasFill[["ggthemes"]] = sort(c(paletasFill[["ggthemes"]], paste0( "scale_fill_few(palette = '", c("Light","Medium","Dark") ,"')" ),
                                    paste0( "scale_fill_hc(palette = '", c("default","darkunica") ,"')" ),
                                   paste0( "scale_fill_stata(scheme = '", c(names(ggthemes_data$stata$colors$schemes)  ) ,"')" ),
                                    paste0( "scale_fill_wsj(palette = '", c( names(ggthemes_data$wsj$palettes)  ) ,"')" )
                                    ))


paletasColor[["ggthemes (canva)"]] = c(paste0("scale_color_canva(palette = '", c(names(ggthemes::canva_palettes)) ,"')"))
paletasFill[["ggthemes (canva)"]] = c(paste0("scale_fill_canva(palette = '", c(names(ggthemes::canva_palettes)) ,"')"))

paletasColor[["ggthemes (excel_new)"]] = c(paste0("scale_color_excel_new(theme = '", c(names(ggthemes_data$excel$themes)) ,"')"))
paletasFill[["ggthemes (excel_new)"]] = c(paste0("scale_fill_excel_new(theme = '", c(names(ggthemes_data$excel$themes)) ,"')"))

paletasColor[["ggthemes (tableau discreto)"]] = c(paste0("scale_color_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$regular)) ,"')"))
paletasColor[["ggthemes (tableau continuo)"]] = c(paste0("scale_color_continuous_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-sequential`)) ,"')"))
paletasColor[["ggthemes (tableau continuo)"]] = c(paletasColor[["ggthemes (tableau continuo)"]],
                                                  paste0("scale_color_gradient2_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-diverging`)) ,"')"))

paletasFill[["ggthemes (tableau discreto)"]] = c(paste0("scale_fill_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$regular)) ,"')"))
paletasFill[["ggthemes (tableau continuo)"]] = c(paste0("scale_fill_continuous_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-sequential`)) ,"')"))
paletasFill[["ggthemes (tableau continuo)"]] = c(paletasFill[["ggthemes (tableau continuo)"]],
                                                  paste0("scale_fill_gradient2_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-diverging`)) ,"')"))


#Se añaden opciones discretas / continuas
nueva_opcion = function(lista_paletas, nuevo_texto){
  c(lista_paletas, lapply(lista_paletas, function(x) paste0(x,nuevo_texto)) ) 
}

paletasColor[["delgosha"]] = nueva_opcion(paletasColor[["delgosha"]], "(type='continuous')")
paletasFill[["delgosha"]] = nueva_opcion(paletasFill[["delgosha"]], "(type='continuous')")

paletasColor[["firatheme"]] = nueva_opcion(paletasColor[["firatheme"]], "(continuous=T)")
paletasFill[["firatheme"]] = nueva_opcion(paletasFill[["firatheme"]], "(continuous=T)")

paletasColor[["ggcute"]] = nueva_opcion(paletasColor[["ggcute"]], "(discrete=F)")
paletasFill[["ggcute"]] = nueva_opcion(paletasFill[["ggcute"]], "(discrete=F)")

paletasColor[["hjplottools"]] = nueva_opcion(paletasColor[["hjplottools"]], "(discrete=F)")
paletasFill[["hjplottools"]] = nueva_opcion(paletasFill[["hjplottools"]], "(discrete=F)")

paletasColor[["tvthemes"]] = nueva_opcion(paletasColor[["tvthemes"]], "(type='continuous')")
paletasFill[["tvthemes"]] = nueva_opcion(paletasFill[["tvthemes"]], "(type='continuous')")

#Eliminar paquetes sin paletas
paletasFill <- paletasFill[sapply(paletasFill, function(x) length(x) > 0)]
paletasColor <- paletasColor[sapply(paletasColor, function(x) length(x) > 0)]

paquetesPaletas = unique( sort( c(names(paletasFill), names(paletasColor) ) ) )

#Añadir opción "Ninguna"
Ninguna = function(){}
paletasFill <- lapply(paletasFill, function(x) c("Ninguna", x))
paletasColor <- lapply(paletasColor, function(x) c("Ninguna", x))