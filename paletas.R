#########################
#####Cargar paquetes#####
#########################
paquetes_con_paletas <- sort(c(
  paquetes,
  # Paquetes con paletas, sin temas
  "AcademicThemes", "ButterflyColors", "colorr", "cols4all", "crayons",
  "DOYPAColors", "gameR", "ggGenshin", "ggokabeito", "ggRtsy", "ggsci",
  "harrypotter", "khroma", "LaCroixColoR", "lepidochroma", "MetBrewer",
  "MexBrewer", "MoMAColors", "NatParksPalettes", "okcolors", "pals",
  "palettetown", "Paris2024Colours", "peRReo", "pilot", "PNWColors",
  "PrettyCols", "rcartocolor", "RColorBrewer", "Rdune", "scico", "severance",
  "sjPlot", "soilpalettes", "tayloRswift", "tintin", "trekcolors", "unicol",
  "viridis", "wesanderson"
))

p_load(
  "AcademicThemes", "ButterflyColors", "colorr", "cols4all", "crayons",
  "DOYPAColors", "gameR", "ggGenshin", "ggokabeito", "ggRtsy", "ggsci",
  "harrypotter", "khroma", "LaCroixColoR", "lepidochroma", "MetBrewer",
  "MexBrewer", "MoMAColors", "NatParksPalettes", "okcolors", "pals",
  "palettetown", "Paris2024Colours", "peRReo", "pilot", "PNWColors",
  "PrettyCols", "rcartocolor", "RColorBrewer", "Rdune", "scico", "severance",
  "sjPlot", "soilpalettes", "tayloRswift", "tintin", "trekcolors", "unicol",
  "viridis", "wesanderson"
)

#Guardar paletas, descripciones y citas
paletasFill <- list()
paletasColor <- list()
descripcionesPaletas <- list()
citasPaletas <- list()

for (paquete in paquetes_con_paletas) {
  paletasFill <- append(paletasFill, list(eval(bquote(lsf.str(paste0("package:", paquete), pattern = "scale_fill")))))
  paletasColor <- append(paletasColor, list(eval(bquote(lsf.str(paste0("package:", paquete), pattern = "scale_color")))))
  #Se guardan las descripciones de los paquetes
  descripcionesPaletas <- append(descripcionesPaletas, packageDescription(paquete, fields = "Description"))
  #Se guardan citas en formato APA
  suppressWarnings(invisible(capture.output(citasPaletas <- append(citasPaletas, apa_citation(paquete)))))
}

names(paletasFill) <- paquetes_con_paletas
names(paletasColor) <- paquetes_con_paletas
names(descripcionesPaletas) <- paquetes_con_paletas
names(citasPaletas) <- paquetes_con_paletas

#########################
#######Correcciones######
#########################

#Se excluyen funciones que no son paletas o que no funcionan
excluir_pal <- c(
  "scale_colour_farshchian_khalse", "scale_colour_ggthemr_d",
  "scale_color_poketype", "scale_fill_poketype", "scale_color_stepsn",
  "scale_fill_stepsn", "scale_color_gradientn", "scale_fill_gradientn",
  "scale_fill_manual", "scale_color_manual"
)
paletasFill <- lapply(paletasFill, function(x) x[!x %in% excluir_pal])
paletasColor <- lapply(paletasColor, function(x) x[!x %in% excluir_pal])

#Se añaden o corrigen algunas paletas manualmente
paletas_manual <- c(
  "artyfarty", "ButterflyColors", "colorr", "gameR", "gglgbtq", "ggpubfigs",
  "LaCroixColoR", "lepidochroma", "pals", "peRReo", "PNWColors", "randplot",
  "RColorBrewer", "severance", "soilpalettes", "unicol", "wesanderson"
)

paletas_artyfarty <- c(
  "flatty", "flatpaleta", "dg4", "few_light", "few_medium", "few_dark",
  "color_blind", "fancy", "pastel", "pastel2", "ashes", "monokai", "flat",
  "five38", "beach", "retro", "ft", "economist", "bain", "d3js", "google",
  "xmen", "pony", "dataroots")

paletas_tintin <- c("Tintin in the Land of the Soviets", "Tintin in the Congo",
  "Tintin in America", "Cigars of the Pharaoh", "The Blue Lotus",
  "The Broken Ear", "The Black Island", "king_ottokars_sceptre",
  "The Crab with the Golden Claws", "The Shooting Star",
  "The Secret of the Unicorn", "red_rackhams_treasure",
  "The Seven Crystal Balls", "Prisoners of the Sun", "Land of Black Gold",
  "Destination Moon", "Explorers on the Moon", "The Calculus Affair",
  "The Red Sea Sharks", "Tintin in Tibet", "The Castafiore Emerald",
  "Flight 714 to Sydney", "Tintin and the Picaros")

paletas_pretty_div <- c(
  "PurpleGreens", "PinkGreens", "TangerineBlues", "PurpleTangerines",
  "PurplePinks", "TealGreens", "PurpleYellows", "RedBlues")

paletasColor[["artyfarty"]] <- c(paste0("scale_color_manual(values = pal('", paletas_artyfarty, "'))"))
paletasColor[["artyfarty"]] <- c(paletasColor[["artyfarty"]], paste0("scale_color_gradientn(colours = pal('", paletas_artyfarty, "'))"))
paletasFill[["artyfarty"]] <- c(paste0("scale_fill_manual(values = pal('", paletas_artyfarty, "'))"))
paletasFill[["artyfarty"]] <- c(paletasFill[["artyfarty"]], paste0("scale_fill_gradientn(colours = pal('", paletas_artyfarty, "'))"))

paletasColor[["AcademicThemes"]] <- c(paste0("scale_colour_academic_c(palette_name ='", AcademicThemes::academic_colour_palette_names(), "')"))
paletasColor[["AcademicThemes"]] <- c(paletasColor[["AcademicThemes"]], paste0("scale_colour_academic_d(palette_name ='", AcademicThemes::academic_colour_palette_names(), "')"))
paletasFill[["AcademicThemes"]] <- c(paste0("scale_fill_academic_c(palette_name ='", AcademicThemes::academic_colour_palette_names(), "')"))
paletasFill[["AcademicThemes"]] <- c(paletasFill[["AcademicThemes"]], paste0("scale_fill_academic_d(palette_name ='", AcademicThemes::academic_colour_palette_names(), "')"))

paletasColor[["ButterflyColors"]] <- c(paste0("scale_color_manual(values = butterfly_palettes(specie='", c(names(butterfly_species)), "'))"))
paletasColor[["ButterflyColors"]] <- c(paletasColor[["ButterflyColors"]], paste0("scale_color_gradientn(colours = butterfly_palettes(specie='", c(names(butterfly_species)), "'))"))
paletasFill[["ButterflyColors"]] <- c(paste0("scale_fill_manual(values = butterfly_palettes(specie='", c(names(butterfly_species)), "'))"))
paletasFill[["ButterflyColors"]] <- c(paletasFill[["ButterflyColors"]], paste0("scale_fill_gradientn(colours = butterfly_palettes(specie='", c(names(butterfly_species)), "'))"))

paletasColor[["colorr"]] <- c(paste0("scale_color_manual(values = as.vector(epl.colors('", c("arsenal", "bournemouth", "burnley", "chelsea",
                                                                                     "crystal_palace", "everton", "hull", "leicester", "liverpool", "man_city",
                                                                                     "man_united", "middlesbrough", "southampton", "stoke_city", "sunderland",
                                                                                     "swansea_city", "tottenham", "watford", "west_bromich_albion", "west_ham"), "')))"))
paletasColor[["colorr"]] <- c(paletasColor[["colorr"]], paste0("scale_color_manual(values = as.vector(mlb.colors('", c("diamondbacks", "braves", "orioles", "red_sox", "cubs",
                                                                                                           "white_sox", "reds", "indians", "rockies", "tigers", "astros", "royals",
                                                                                                           "angels", "dodgers", "marlins", "brewers", "twins", "mets", "yankees",
                                                                                                           "athletics", "phillies", "pirates", "padres", "giants", "mariners",
                                                                                                           "cardinals", "rays", "rangers", "blue_jays", "nationals"), "')))"))
paletasColor[["colorr"]] <- c(paletasColor[["colorr"]], paste0("scale_color_manual(values = as.vector(nba.colors('", c("hawks", "hornets", "mavs", "warriors", "clippers", "heat",
                                                                                                           "pelicans", "magic", "blazers", "raptors", "celtics", "bulls", "nuggets",
                                                                                                           "rockets", "lakers", "bucks", "knicks", "sixers", "kings", "jazz", "nets",
                                                                                                           "cavs", "pistons", "pacers", "grizzlies", "wolves", "thunder", "suns",
                                                                                                           "spurs", "wizards", "sonics"), "')))"))
paletasColor[["colorr"]] <- c(paletasColor[["colorr"]], paste0("scale_color_manual(values = as.vector(nfl.colors('", c("cardinals", "falcons", "ravens", "bills", "panthers",
                                                                                                           "bears", "bengals", "browns", "cowboys", "broncos", "lions", "packers",
                                                                                                           "texans", "colts", "jaguars", "chiefs", "chargers", "rams", "dolphins",
                                                                                                           "vikings", "patriots", "saints", "giants", "jets", "raiders", "eagles",
                                                                                                           "steelers", "niners", "seahawks", "buccaneers", "titans", "redskins"), "')))"))
paletasColor[["colorr"]] <- c(paletasColor[["colorr"]], paste0("scale_color_manual(values = as.vector(nhl.colors('", c("ducks", "coyotes", "bruins", "sabres", "flames",
                                                                                                           "hurricanes", "blackhawks", "avalanche", "blue_jackets", "stars", "red_wings",
                                                                                                           "oilers", "panthers", "kings", "wild", "canadiens", "predators", "devils",
                                                                                                           "islanders", "rangers", "senators", "flyers", "penguins", "sharks", "blues",
                                                                                                           "lightning", "maple_leafs", "canucks", "golden_knights", "capitals", "jets"), "')))"))

paletasFill[["colorr"]] <- c(paste0("scale_fill_manual(values = as.vector(epl.colors('", c("arsenal", "bournemouth", "burnley", "chelsea",
                                                                                     "crystal_palace", "everton", "hull", "leicester", "liverpool", "man_city",
                                                                                     "man_united", "middlesbrough", "southampton", "stoke_city", "sunderland",
                                                                                     "swansea_city", "tottenham", "watford", "west_bromich_albion", "west_ham"), "')))"))
paletasFill[["colorr"]] <- c(paletasFill[["colorr"]], paste0("scale_fill_manual(values = as.vector(mlb.colors('", c("diamondbacks", "braves", "orioles", "red_sox", "cubs",
                                                                                                           "white_sox", "reds", "indians", "rockies", "tigers", "astros", "royals",
                                                                                                           "angels", "dodgers", "marlins", "brewers", "twins", "mets", "yankees",
                                                                                                           "athletics", "phillies", "pirates", "padres", "giants", "mariners",
                                                                                                           "cardinals", "rays", "rangers", "blue_jays", "nationals"), "')))"))
paletasFill[["colorr"]] <- c(paletasFill[["colorr"]], paste0("scale_fill_manual(values = as.vector(nba.colors('", c("hawks", "hornets", "mavs", "warriors", "clippers", "heat",
                                                                                                           "pelicans", "magic", "blazers", "raptors", "celtics", "bulls", "nuggets",
                                                                                                           "rockets", "lakers", "bucks", "knicks", "sixers", "kings", "jazz", "nets",
                                                                                                           "cavs", "pistons", "pacers", "grizzlies", "wolves", "thunder", "suns",
                                                                                                           "spurs", "wizards", "sonics"), "')))"))
paletasFill[["colorr"]] <- c(paletasFill[["colorr"]], paste0("scale_fill_manual(values = as.vector(nfl.colors('", c("cardinals", "falcons", "ravens", "bills", "panthers",
                                                                                                           "bears", "bengals", "browns", "cowboys", "broncos", "lions", "packers",
                                                                                                           "texans", "colts", "jaguars", "chiefs", "chargers", "rams", "dolphins",
                                                                                                           "vikings", "patriots", "saints", "giants", "jets", "raiders", "eagles",
                                                                                                           "steelers", "niners", "seahawks", "buccaneers", "titans", "redskins"), "')))"))
paletasFill[["colorr"]] <- c(paletasFill[["colorr"]], paste0("scale_fill_manual(values = as.vector(nhl.colors('", c("ducks", "coyotes", "bruins", "sabres", "flames",
                                                                                                           "hurricanes", "blackhawks", "avalanche", "blue_jackets", "stars", "red_wings",
                                                                                                           "oilers", "panthers", "kings", "wild", "canadiens", "predators", "devils",
                                                                                                           "islanders", "rangers", "senators", "flyers", "penguins", "sharks", "blues",
                                                                                                           "lightning", "maple_leafs", "canucks", "golden_knights", "capitals", "jets"), "')))"))

paletasColor[["crayons"]] <- c(paste0("scale_color_crayons(palette = '", names(crayons::crayons), "')"))
paletasFill[["crayons"]] <- c(paste0("scale_fill_crayons(palette = '", names(crayons::crayons), "')"))

paletasColor[["darknerdthemes"]] <- c(paletasColor[["darknerdthemes"]], paste0("scale_color_nerd('", c("candy", "nord frost", "nord aurora", "everforest"), "')"))
paletasColor[["darknerdthemes"]] <- c(paletasColor[["darknerdthemes"]], paste0("scale_color_nerd('", c("candy", "nord frost", "nord aurora", "everforest"), "',", " discrete=F", ")"))
paletasFill[["darknerdthemes"]] <- c(paletasFill[["darknerdthemes"]], paste0("scale_fill_nerd('", c("candy", "nord frost", "nord aurora", "everforest"), "')"))
paletasFill[["darknerdthemes"]] <- c(paletasFill[["darknerdthemes"]], paste0("scale_fill_nerd('", c("candy", "nord frost", "nord aurora", "everforest"), "',", " discrete=F", ")"))

paletasColor[["DOYPAColors"]] <- c(paste0("scale_color_doypa('", names(DOYPAColors:::doypa_pals), "')"))
paletasColor[["DOYPAColors"]] <- c(paletasColor[["DOYPAColors"]], c(paste0("scale_color_doypa('", names(DOYPAColors:::doypa_pals), "', discrete = TRUE)")))
paletasFill[["DOYPAColors"]] <- c(paste0("scale_fill_doypa('", names(DOYPAColors:::doypa_pals), "')"))
paletasFill[["DOYPAColors"]] <- c(paletasFill[["DOYPAColors"]], c(paste0("scale_fill_doypa('", names(DOYPAColors:::doypa_pals), "', discrete = TRUE)")))

paletasColor[["flexoki"]] <- c(paste0("scale_color_flexoki_b(palette ='", names(flexoki), "')"))
paletasColor[["flexoki"]] <- c(paletasColor[["flexoki"]], paste0("scale_color_flexoki_c(palette ='", names(flexoki), "')"))
paletasColor[["flexoki"]] <- c(paletasColor[["flexoki"]], paste0("scale_color_flexoki_d(palette ='", names(flexoki), "')"))
paletasFill[["flexoki"]] <- c(paste0("scale_fill_flexoki_b(palette ='", names(flexoki), "')"))
paletasFill[["flexoki"]] <- c(paletasFill[["flexoki"]], paste0("scale_fill_flexoki_c(palette ='", names(flexoki), "')"))
paletasFill[["flexoki"]] <- c(paletasFill[["flexoki"]], paste0("scale_fill_flexoki_d(palette ='", names(flexoki), "')"))

paletasColor[["gameR"]] <- c(paste0("scale_color_manual(values = gameR_cols('", c(gameR::gameR_cols()), "'))"))
paletasColor[["gameR"]] <- c(paletasColor[["gameR"]], paste0("scale_color_gradientn(colors = gameR_cols('", c(gameR::gameR_cols()), "'))"))
paletasFill[["gameR"]] <- c(paste0("scale_fill_manual(values = gameR_cols('", c(gameR::gameR_cols()), "'))"))
paletasFill[["gameR"]] <- c(paletasFill[["gameR"]], paste0("scale_fill_gradientn(colors = gameR_cols('", c(gameR::gameR_cols()), "'))"))

paletasColor[["ggCyberPunk"]] <- c(paste0("scale_color_cyberpunk(palette ='", c("main", "cotton candy", "zune", "laser sword"), "')"))
paletasFill[["ggCyberPunk"]] <- c(paste0("scale_fill_cyberpunk(palette ='", c("main", "cotton candy", "zune", "laser sword"), "')"))
paletasColor[["ggCyberPunk"]] <- c(paletasColor[["ggCyberPunk"]], paste0("scale_color_cyberpunk(palette ='", c("main", "cotton candy", "zune", "laser sword"), "',discrete = F)"))
paletasFill[["ggCyberPunk"]] <- c(paletasFill[["ggCyberPunk"]], paste0("scale_fill_cyberpunk(palette ='", c("main", "cotton candy", "zune", "laser sword"), "',discrete = F)"))

paletasColor[["gglgbtq"]] <- c(paste0("scale_color_lgbtq('", c(show_pride()$palettes), "')"))
paletasFill[["gglgbtq"]] <- c(paste0("scale_fill_lgbtq('", c(show_pride()$palettes), "')"))

paletasFill[["ggprism"]] <- c(paste0("scale_fill_prism(palette = '", c(names(ggprism_data$fill_palettes)), "')"))
paletasColor[["ggprism"]] <- c(paste0("scale_color_prism(palette = '", c(names(ggprism_data$colour_palettes)), "')"))

paletasColor[["ggpubfigs"]] <- c(paste0("scale_color_gradientn(colors = friendly_pal('", c(names(ggpubfigs::friendly_pals)), "', type = 'continuous'))"))
paletasColor[["ggpubfigs"]] <- c(paletasColor[["ggpubfigs"]], paste0("scale_color_manual(values = friendly_pal('", c(names(ggpubfigs::friendly_pals)), "', type = 'discrete'))"))
paletasFill[["ggpubfigs"]] <- c(paste0("scale_fill_gradientn(colors = friendly_pal('", c(names(ggpubfigs::friendly_pals)), "', type = 'continuous'))"))
paletasFill[["ggpubfigs"]] <- c(paletasFill[["ggpubfigs"]], paste0("scale_fill_manual(values = friendly_pal('", c(names(ggpubfigs::friendly_pals)), "', type = 'discrete'))"))

paletasFill[["ggRtsy"]] <- c(paste0("scale_fill_gogh(palette = '", c(names(ggRtsy::gogh_palettes_pop)), "')"))
paletasFill[["ggRtsy"]] <- c(paletasFill[["ggRtsy"]], paste0("scale_fill_gogh(palette = '", c(names(ggRtsy::gogh_palettes_pop)), "', discrete=F)"))
paletasColor[["ggRtsy"]] <- c(paste0("scale_color_gogh(palette = '", c(names(ggRtsy::gogh_palettes_pop)), "')"))
paletasColor[["ggRtsy"]] <- c(paletasColor[["ggRtsy"]], paste0("scale_color_gogh(palette = '", c(names(ggRtsy::gogh_palettes_pop)), "', discrete=F)"))

paletasFill[["ggtech"]] <- c(paste0("scale_fill_tech(theme = '", c("airbnb", "facebook", "google", "etsy", "twitter", "X23andme"), "')"))
paletasColor[["ggtech"]] <- c(paste0("scale_color_tech(theme = '", c("airbnb", "facebook", "google", "etsy", "twitter", "X23andme"), "')"))

paletasColor[["harrypotter"]] <- c(paste0("scale_color_hp(option ='", names(harrypotter::hp_palettes), "')"))
paletasColor[["harrypotter"]] <- c(paletasColor[["harrypotter"]], paste0("scale_color_hp_d(option ='", names(harrypotter::hp_palettes), "')"))
paletasFill[["harrypotter"]] <- c(paste0("scale_fill_hp(option ='", names(harrypotter::hp_palettes), "')"))
paletasFill[["harrypotter"]] <- c(paletasFill[["harrypotter"]], paste0("scale_fill_hp_d(option ='", names(harrypotter::hp_palettes), "')"))

paletasColor[["LaCroixColoR"]] <- c(paste0("scale_color_gradientn(colors = lacroix_palette('", c(names(LaCroixColoR::lacroix_palettes[1:length(lacroix_palettes) - 1])), "', type = 'continuous'))"))
paletasColor[["LaCroixColoR"]] <- c(paletasColor[["LaCroixColoR"]], paste0("scale_color_manual(values = lacroix_palette('", c(names(LaCroixColoR::lacroix_palettes[1:length(lacroix_palettes) - 1])), "', type = 'discrete'))"))
paletasColor[["LaCroixColoR"]] <- c(paletasColor[["LaCroixColoR"]], "scale_color_manual(values = lacroix_palette(type = 'paired'))")
paletasFill[["LaCroixColoR"]] <- c(paste0("scale_fill_gradientn(colors = lacroix_palette('", c(names(LaCroixColoR::lacroix_palettes[1:length(lacroix_palettes) - 1])), "', type = 'continuous'))"))
paletasFill[["LaCroixColoR"]] <- c(paletasFill[["LaCroixColoR"]], paste0("scale_fill_manual(values = lacroix_palette('", c(names(LaCroixColoR::lacroix_palettes[1:length(lacroix_palettes) - 1])), "', type = 'discrete'))"))
paletasFill[["LaCroixColoR"]] <- c(paletasFill[["LaCroixColoR"]], "scale_fill_manual(values = lacroix_palette(type = 'paired'))")

paletasColor[["lepidochroma"]] <- c(paste0("scale_color_manual(values = lepidochroma('", c(lepidochroma::lepidochroma_palettes()$name), "'))"))
paletasColor[["lepidochroma"]] <- c(paletasColor[["lepidochroma"]], paste0("scale_color_gradientn(colors = lepidochroma('", c(lepidochroma::lepidochroma_palettes()$name), "'))"))
paletasFill[["lepidochroma"]] <- c(paste0("scale_fill_manual(values = lepidochroma('", c(lepidochroma::lepidochroma_palettes()$name), "'))"))
paletasFill[["lepidochroma"]] <- c(paletasFill[["lepidochroma"]], paste0("scale_fill_gradientn(colors = lepidochroma('", c(lepidochroma::lepidochroma_palettes()$name), "'))"))

paletasColor[["MetBrewer"]] <- c(paste0("scale_color_met_c(palette ='", names(MetBrewer::MetPalettes), "')"))
paletasColor[["MetBrewer"]] <- c(paletasColor[["MetBrewer"]], paste0("scale_color_met_d(palette ='", names(MetBrewer::MetPalettes), "')"))
paletasFill[["MetBrewer"]] <- c(paste0("scale_fill_met_c(palette ='", names(MetBrewer::MetPalettes), "')"))
paletasFill[["MetBrewer"]] <- c(paletasFill[["MetBrewer"]], paste0("scale_fill_met_d(palette ='", names(MetBrewer::MetPalettes), "')"))

paletasColor[["MexBrewer"]] <- c(paste0("scale_color_mex_c(palette_palette ='", names(MexBrewer::MexPalettes), "')"))
paletasColor[["MexBrewer"]] <- c(paletasColor[["MexBrewer"]], paste0("scale_color_mex_d(palette_palette ='", names(MexBrewer::MexPalettes), "')"))
paletasFill[["MexBrewer"]] <- c(paste0("scale_fill_mex_c(palette_palette ='", names(MexBrewer::MexPalettes), "')"))
paletasFill[["MexBrewer"]] <- c(paletasFill[["MexBrewer"]], paste0("scale_fill_mex_d(palette_palette ='", names(MexBrewer::MexPalettes), "')"))

paletasColor[["MoMAColors"]] <- c(paste0("scale_color_moma_c(palette_palette ='", names(MoMAColors::MoMAPalettes), "')"))
paletasColor[["MoMAColors"]] <- c(paletasColor[["MoMAColors"]], paste0("scale_color_moma_d(palette_palette ='", names(MoMAColors::MoMAPalettes), "')"))
paletasFill[["MoMAColors"]] <- c(paste0("scale_fill_moma_c(palette_palette ='", names(MoMAColors::MoMAPalettes), "')"))
paletasFill[["MoMAColors"]] <- c(paletasFill[["MoMAColors"]], paste0("scale_fill_moma_d(palette_palette ='", names(MoMAColors::MoMAPalettes), "')"))

paletasColor[["NatParksPalettes"]] <- c(paste0("scale_color_natparks_c(palette ='", names(NatParksPalettes::NatParksPalettes), "')"))
paletasColor[["NatParksPalettes"]] <- c(paletasColor[["NatParksPalettes"]], paste0("scale_color_natparks_d(palette ='", names(NatParksPalettes::NatParksPalettes), "')"))
paletasFill[["NatParksPalettes"]] <- c(paste0("scale_fill_natparks_c(palette ='", names(NatParksPalettes::NatParksPalettes), "')"))
paletasFill[["NatParksPalettes"]] <- c(paletasFill[["NatParksPalettes"]], paste0("scale_fill_natparks_d(palette ='", names(NatParksPalettes::NatParksPalettes), "')"))

paletasColor[["okcolors"]] <- c(paste0("scale_color_okcolors(palette ='", c(okcolors:::valid_palettes()), "')"))
paletasColor[["okcolors"]] <- c(paletasColor[["okcolors"]], paste0("scale_color_okcolors(palette ='", c(okcolors:::valid_palettes()), "', discrete = FALSE)"))
paletasFill[["okcolors"]] <- c(paste0("scale_fill_okcolors(palette ='", okcolors:::valid_palettes(), "')"))
paletasFill[["okcolors"]] <- c(paletasFill[["okcolors"]], paste0("scale_fill_okcolors(palette ='", okcolors:::valid_palettes(), "', discrete = FALSE)"))

paletasColor[["palettetown"]] <- c(paste0("scale_color_poke(pokemon='", names(palettetown:::pokeColours), "')"))
paletasFill[["palettetown"]] <- c(paste0("scale_fill_poke(pokemon='", names(palettetown:::pokeColours), "')"))

pals_d <- dplyr::filter(pals::pals.maxcolors(), is_finite == TRUE)$palette
paletasColor[["pals"]] <- c(paste0("scale_color_manual(values = pals::", pals_d, "())"))
paletasFill[["pals"]] <- c(paste0("scale_fill_manual(values = pals::", pals_d, "())"))

paletasColor[["Paris2024Colours"]] <- c(paste0("scale_color_paris2024_c(palette ='", names(Paris2024Colours::paris2024_palettes), "')"))
paletasColor[["Paris2024Colours"]] <- c(paletasColor[["Paris2024Colours"]], paste0("scale_color_paris2024_d(palette ='", names(Paris2024Colours::paris2024_palettes), "')"))
paletasFill[["Paris2024Colours"]] <- c(paste0("scale_fill_paris2024_c(palette ='", names(Paris2024Colours::paris2024_palettes), "')"))
paletasFill[["Paris2024Colours"]] <- c(paletasFill[["Paris2024Colours"]], paste0("scale_fill_paris2024_d(palette ='", names(Paris2024Colours::paris2024_palettes), "')"))

paletasColor[["peRReo"]] <- c(paste0("scale_color_gradientn(colors = latin_palette('", c(names(peRReo::latin_palettes)), "', type = 'continuous'))"))
paletasColor[["peRReo"]] <- c(paletasColor[["peRReo"]], paste0("scale_color_manual(values = latin_palette('", c(names(peRReo::latin_palettes)), "', type = 'discrete'))"))
paletasFill[["peRReo"]] <- c(paste0("scale_fill_gradientn(colors = latin_palette('", c(names(peRReo::latin_palettes)), "', type = 'continuous'))"))
paletasFill[["peRReo"]] <- c(paletasFill[["peRReo"]], paste0("scale_fill_manual(values = latin_palette('", c(names(peRReo::latin_palettes)), "', type = 'discrete'))"))

paletasColor[["PNWColors"]] <- c(paste0("scale_color_gradientn(colors = pnw_palette('", c(names(PNWColors::pnw_palettes)), "', type = 'continuous'))"))
paletasColor[["PNWColors"]] <- c(paletasColor[["PNWColors"]], paste0("scale_color_manual(values = pnw_palette('", c(names(PNWColors::pnw_palettes)), "', type = 'discrete'))"))
paletasFill[["PNWColors"]] <- c(paste0("scale_fill_gradientn(colors = pnw_palette('", c(names(PNWColors::pnw_palettes)), "', type = 'continuous'))"))
paletasFill[["PNWColors"]] <- c(paletasFill[["PNWColors"]], paste0("scale_fill_manual(values = pnw_palette('", c(names(PNWColors::pnw_palettes)), "', type = 'discrete'))"))

paletasColor[["PrettyCols"]] <- c(paste0("scale_color_pretty_c(palette ='", names(PrettyCols::PrettyColsPalettes), "')"))
paletasColor[["PrettyCols"]] <- c(paletasColor[["PrettyCols"]], paste0("scale_color_pretty_d(palette ='", names(PrettyCols::PrettyColsPalettes), "')"))
paletasColor[["PrettyCols"]] <- c(paletasColor[["PrettyCols"]], paste0("scale_color_pretty_div(palette ='", paletas_pretty_div, "')"))
paletasFill[["PrettyCols"]] <- c(paste0("scale_fill_pretty_c(palette ='", names(PrettyCols::PrettyColsPalettes), "')"))
paletasFill[["PrettyCols"]] <- c(paletasFill[["PrettyCols"]], paste0("scale_fill_pretty_d(palette ='", names(PrettyCols::PrettyColsPalettes), "')"))
paletasFill[["PrettyCols"]] <- c(paletasFill[["PrettyCols"]], paste0("scale_fill_pretty_div(palette ='", paletas_pretty_div, "')"))

paletasColor[["profiplots"]] <- c(paste0("scale_color_profinit_c(palette ='", c(profiplots::profinit_pal.pals()), "')"))
paletasColor[["profiplots"]] <- c(paletasColor[["profiplots"]], paste0("scale_color_profinit_d(palette ='", c(profiplots::profinit_pal.pals()), "')"))
paletasFill[["profiplots"]] <- c(paste0("scale_fill_profinit_c(palette ='", c(profiplots::profinit_pal.pals()), "')"))
paletasFill[["profiplots"]] <- c(paletasFill[["profiplots"]], paste0("scale_fill_profinit_d(palette ='", c(profiplots::profinit_pal.pals()), "')"))

paletasColor[["randplot"]] <- c(paste0("scale_color_manual(values = ", c("RandCatPal", "RandGrayPal"), ")"))
paletasColor[["randplot"]] <- c(paletasColor[["randplot"]], paste0("scale_color_gradientn(colours = ", c("RandCatPal", "RandGrayPal"), ")"))
paletasFill[["randplot"]] <- c(paste0("scale_fill_manual(values = ", c("RandCatPal", "RandGrayPal"), ")"))
paletasFill[["randplot"]] <- c(paletasFill[["randplot"]], paste0("scale_fill_gradientn(colours = ", c("RandCatPal", "RandGrayPal"), ")"))

paletasColor[["rcartocolor"]] <- c(paste0("scale_color_carto_c(palette ='", c(rcartocolor::cartocolors$Name), "')"))
paletasColor[["rcartocolor"]] <- c(paletasColor[["rcartocolor"]], paste0("scale_color_carto_d(palette ='", c(rcartocolor::cartocolors$Name), "')"))
paletasFill[["rcartocolor"]] <- c(paste0("scale_fill_carto_c(palette ='", c(rcartocolor::cartocolors$Name), "')"))
paletasFill[["rcartocolor"]] <- c(paletasFill[["rcartocolor"]], paste0("scale_fill_carto_d(palette ='", c(rcartocolor::cartocolors$Name), "')"))

paletasColor[["RColorBrewer"]] <- c(paste0("scale_color_brewer(palette = '", c(rownames(RColorBrewer::brewer.pal.info)), "')"))
paletasFill[["RColorBrewer"]] <- c(paste0("scale_fill_brewer(palette = '", c(rownames(RColorBrewer::brewer.pal.info)), "')"))

paletasColor[["Rdune"]] <- c(paste0("scale_color_dune_c(palette ='", names(Rdune::dune_palettes), "')"))
paletasColor[["Rdune"]] <- c(paletasColor[["Rdune"]], paste0("scale_color_dune_d(palette ='", names(Rdune::dune_palettes), "')"))
paletasFill[["Rdune"]] <- c(paste0("scale_fill_dune_c(palette ='", names(Rdune::dune_palettes), "')"))
paletasFill[["Rdune"]] <- c(paletasFill[["Rdune"]], paste0("scale_fill_dune_d(palette ='", names(Rdune::dune_palettes), "')"))

paletasColor[["RSSthemes"]] <- c(paste0("scale_color_rss_c(palette ='", names(RSSthemes::RSSPalettes), "')"))
paletasColor[["RSSthemes"]] <- c(paletasColor[["RSSthemes"]], paste0("scale_color_rss_d(palette ='", names(RSSthemes::RSSPalettes), "')"))
paletasFill[["RSSthemes"]] <- c(paste0("scale_fill_rss_c(palette ='", names(RSSthemes::RSSPalettes), "')"))
paletasFill[["RSSthemes"]] <- c(paletasFill[["RSSthemes"]], paste0("scale_fill_rss_d(palette ='", names(RSSthemes::RSSPalettes), "')"))

paletasColor[["scico"]] <- c(paste0("scale_color_scico(palette = '", c(scico_palette_names()), "')"))
paletasColor[["scico"]] <- c(paletasColor[["scico"]], paste0("scale_color_scico_d(palette = '", c(scico_palette_names()), "')"))
paletasFill[["scico"]] <- c(paste0("scale_fill_scico(palette = '", c(scico_palette_names()), "')"))
paletasFill[["scico"]] <- c(paletasFill[["scico"]], paste0("scale_fill_scico_d(palette = '", c(scico_palette_names()), "')"))

paletasColor[["see"]] <- c(paste0("scale_color_bluebrown_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_bluebrown_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_flat_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_flat_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_material_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_material_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_metro_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_metro_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_oi(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_pizza_c(palette = '", c("margherita", "margherita_crust", "diavola", "diavola_crust"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_pizza_d(palette = '", c("margherita", "margherita_crust", "diavola", "diavola_crust"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_see_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_see_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_social_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasColor[["see"]] <- c(paletasColor[["see"]], paste0("scale_color_social_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paste0("scale_fill_bluebrown_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_bluebrown_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_flat_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_flat_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_material_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_material_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_metro_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_metro_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_oi(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_pizza_c(palette = '", c("margherita", "margherita_crust", "diavola", "diavola_crust"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_pizza_d(palette = '", c("margherita", "margherita_crust", "diavola", "diavola_crust"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_see_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_see_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_social_c(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))
paletasFill[["see"]] <- c(paletasFill[["see"]], paste0("scale_fill_social_d(palette = '", c("full", "ice", "rainbow", "complement", "contrast", "light", "black_first", "full_original", "black_first_original"), "')"))

paletasColor[["severance"]] <- c(paste0("scale_color_manual(values = severance_palette('", c(names(severance::severance_palettes)), "'))"))
paletasColor[["severance"]] <- c(paletasColor[["severance"]], paste0("scale_color_gradientn(colours = severance_palette('", c(names(severance::severance_palettes)), "'))"))
paletasFill[["severance"]] <- c(paste0("scale_fill_manual(values = severance_palette('", c(names(severance::severance_palettes)), "'))"))
paletasFill[["severance"]] <- c(paletasFill[["severance"]], paste0("scale_fill_gradientn(colours = severance_palette('", c(names(severance::severance_palettes)), "'))"))

paletasFill[["sfthemes"]] <- c(paletasFill[["sfthemes"]][!paletasFill[["sfthemes"]] %in% c("scale_fill_macos_light")], "scale_fill_macos_light(order='contrast')")
paletasColor[["sfthemes"]] <- c(eval(bquote(lsf.str(paste0("package:", "sfthemes"), pattern = "scale_colour"))))

paletasColor[["sjPlot"]] <- c(paste0("scale_color_sjplot('", str_replace(unique(sjPlot::show_sjplot_pals()$data$key), "t.c", "t c"), "')"))
paletasColor[["sjPlot"]] <- c(paletasColor[["sjPlot"]], paste0("scale_color_sjplot('", str_replace(unique(sjPlot::show_sjplot_pals()$data$key), "t.c", "t c"), "', discrete=F)"))

paletasFill[["sjPlot"]] <- c(paste0("scale_fill_sjplot('", str_replace(unique(sjPlot::show_sjplot_pals()$data$key), "t.c", "t c"), "')"))
paletasFill[["sjPlot"]] <- c(paletasFill[["sjPlot"]], paste0("scale_fill_sjplot('", str_replace(unique(sjPlot::show_sjplot_pals()$data$key), "t.c", "t c"), "', discrete=F)"))

paletasColor[["soilpalettes"]] <- c(paste0("scale_color_manual(values = soil_palette('", c(names(soilpalettes::soil_palettes)), "', 5))"))
paletasColor[["soilpalettes"]] <- c(paletasColor[["soilpalettes"]], paste0("scale_color_gradientn(colours = soil_palette('", c(names(soilpalettes::soil_palettes)), "', 5))"))
paletasFill[["soilpalettes"]] <- c(paste0("scale_fill_manual(values = soil_palette('", c(names(soilpalettes::soil_palettes)), "', 5))"))
paletasFill[["soilpalettes"]] <- c(paletasFill[["soilpalettes"]], paste0("scale_fill_gradientn(colours = soil_palette('", c(names(soilpalettes::soil_palettes)), "', 5))"))

paletasFill[["tayloRswift"]] <- c(paste0("scale_fill_taylor(palette = '", c(names(tayloRswift::swift_palettes)), "')"))
paletasFill[["tayloRswift"]] <- c(paletasFill[["tayloRswift"]], paste0("scale_fill_taylor(palette = '", c(names(tayloRswift::swift_palettes)), "', discrete=F)"))
paletasColor[["tayloRswift"]] <- c(paste0("scale_color_taylor(palette = '",  c(names(tayloRswift::swift_palettes)), "')"))
paletasColor[["tayloRswift"]] <- c(paletasColor[["tayloRswift"]], paste0("scale_color_taylor(palette = '", c(names(tayloRswift::swift_palettes)), "', discrete=F)"))

paletasColor[["tintin"]] <- c(paste0("scale_colour_tintin_c(option ='", c(paletas_tintin), "')"))
paletasColor[["tintin"]] <- c(paletasColor[["tintin"]], paste0("scale_colour_tintin_d(option ='", c(paletas_tintin), "')"))
paletasFill[["tintin"]] <- c(paste0("scale_fill_tintin_c(option ='", c(paletas_tintin), "')"))
paletasFill[["tintin"]] <- c(paletasFill[["tintin"]], paste0("scale_fill_tintin_d(option ='", c(paletas_tintin), "')"))

paletasFill[["trekcolors"]] <- c(paste0("scale_fill_trek(palette = '", c(trekcolors::trek_pal()), "')"))
paletasFill[["trekcolors"]] <- c(paletasFill[["trekcolors"]], paste0("scale_fill_lcars(palette = '", c(names(trekcolors::lcars_pals())), "')"))
paletasFill[["trekcolors"]] <- c(paletasFill[["trekcolors"]], paste0("scale_fill_trek(palette = '", c(trekcolors::trek_pal()), "', discrete=F)"))
paletasFill[["trekcolors"]] <- c(paletasFill[["trekcolors"]], paste0("scale_fill_lcars(palette = '", c(names(trekcolors::lcars_pals())), "', discrete=F)"))
paletasColor[["trekcolors"]] <- c(paste0("scale_color_trek(palette = '", c(trekcolors::trek_pal()), "')"))
paletasColor[["trekcolors"]] <- c(paletasColor[["trekcolors"]], paste0("scale_color_lcars(palette = '", c(names(trekcolors::lcars_pals())), "')"))
paletasColor[["trekcolors"]] <- c(paletasColor[["trekcolors"]], paste0("scale_color_trek(palette = '", c(trekcolors::trek_pal()), "', discrete=F)"))
paletasColor[["trekcolors"]] <- c(paletasColor[["trekcolors"]], paste0("scale_color_lcars(palette = '", c(names(trekcolors::lcars_pals())), "', discrete=F)"))

paletasColor[["unicol"]] <- c(paste0("scale_color_manual(values = unname(unicol::", c(unicol::unicol_data$pal), "))"))
paletasColor[["unicol"]] <- c(paletasColor[["unicol"]], paste0("scale_color_gradientn(colors = c(unicol::", c(unicol::unicol_data$pal), "))"))
paletasFill[["unicol"]] <- c(paste0("scale_fill_manual(values = unname(unicol::", c(unicol::unicol_data$pal), "))"))
paletasFill[["unicol"]] <- c(paletasFill[["unicol"]], paste0("scale_fill_gradientn(colors = c(unicol::", c(unicol::unicol_data$pal), "))"))

paletasColor[["vapoRwave"]][1] <- "scale_color_avanti()()"
paletasColor[["vapoRwave"]][2] <- "scale_color_cool()()"
paletasColor[["vapoRwave"]][3] <- "scale_color_crystalPepsi()()"

paletasColor[["viridis"]] <- c(paste0("scale_color_viridis(option='", c(LETTERS[1:8]), "')"))
paletasColor[["viridis"]] <- c(paletasColor[["viridis"]], paste0("scale_color_viridis(option='", c(LETTERS[1:8]), "',", " discrete=T", ")"))
paletasFill[["viridis"]] <- c(paste0("scale_fill_viridis(option='", c(LETTERS[1:8]), "')"))
paletasFill[["viridis"]] <- c(paletasFill[["viridis"]], paste0("scale_fill_viridis(option='", c(LETTERS[1:8]), "',", " discrete=T", ")"))

paletasColor[["wesanderson"]] <- c(paste0("scale_color_manual(values = wes_palette('", c(names(wesanderson::wes_palettes)), "'))"))
paletasColor[["wesanderson"]] <- c(paletasColor[["wesanderson"]], paste0("scale_color_gradientn(colours = wes_palette('", c(names(wesanderson::wes_palettes)), "'))"))
paletasFill[["wesanderson"]] <- c(paste0("scale_fill_manual(values = wes_palette('", c(names(wesanderson::wes_palettes)), "'))"))
paletasFill[["wesanderson"]] <- c(paletasFill[["wesanderson"]], paste0("scale_fill_gradientn(colours = wes_palette('", c(names(wesanderson::wes_palettes)), "'))"))

paletasColor[["wwplot"]] <- c(paste0("scale_colour_wolves(palette = '", c("wooly_bully", "sir_jack"), "')"))
paletasFill[["wwplot"]] <- c(paste0("scale_fill_wolves(palette = '", c("wooly_bully", "sir_jack"), "')"))
paletasColor[["wwplot"]] <- c(paletasColor[["wwplot"]], paste0("scale_colour_wolves(palette = '", c("wooly_bully", "sir_jack"), "', discrete=F)"))
paletasFill[["wwplot"]] <- c(paletasFill[["wwplot"]], paste0("scale_fill_wolves(palette = '", c("wooly_bully", "sir_jack"), "', discrete=F)"))

#Se divide el paquete ggthemes para mejorar la visualización
paletasColor[["ggthemes"]] <- paletasColor[["ggthemes"]][!paletasColor[["ggthemes"]] %in% c("scale_color_canva", "scale_color_excel_new",
                                                                                           "scale_color_tableau", "scale_color_gradient2_tableau",
                                                                                           "scale_color_gradient_tableau", "scale_color_continuous_tableau",
                                                                                           "scale_color_few", "scale_color_hc", "scale_color_stata", "scale_color_wsj"
                                                                                           )]
paletasFill[["ggthemes"]] <- paletasFill[["ggthemes"]][!paletasFill[["ggthemes"]] %in% c("scale_fill_canva", "scale_fill_excel_new",
                                                                                        "scale_fill_tableau", "scale_fill_gradient2_tableau",
                                                                                        "scale_fill_gradient_tableau", "scale_fill_continuous_tableau",
                                                                                        "scale_fill_few", "scale_fill_hc", "scale_fill_stata", "scale_fill_wsj"
                                                                                        )]

paletasColor[["ggthemes"]] <- sort(c(paletasColor[["ggthemes"]], paste0("scale_color_few(palette = '", c("Light", "Medium", "Dark"), "')"),
                                    paste0("scale_color_hc(palette = '", c("default", "darkunica"), "')"),
                                    paste0("scale_color_stata(scheme = '", c(names(ggthemes_data$stata$colors$schemes)), "')"),
                                    paste0("scale_color_wsj(palette = '", c(names(ggthemes_data$wsj$palettes)), "')")
                                    ))
paletasFill[["ggthemes"]] <- sort(c(paletasFill[["ggthemes"]], paste0("scale_fill_few(palette = '", c("Light", "Medium", "Dark"), "')"),
                                    paste0("scale_fill_hc(palette = '", c("default", "darkunica"), "')"),
                                   paste0("scale_fill_stata(scheme = '", c(names(ggthemes_data$stata$colors$schemes)), "')"),
                                    paste0("scale_fill_wsj(palette = '", c(names(ggthemes_data$wsj$palettes)), "')")
                                    ))


paletasColor[["ggthemes (canva)"]] <- c(paste0("scale_color_canva(palette = '", c(names(ggthemes::canva_palettes)), "')"))
paletasFill[["ggthemes (canva)"]] <- c(paste0("scale_fill_canva(palette = '", c(names(ggthemes::canva_palettes)), "')"))

paletasColor[["ggthemes (excel_new)"]] <- c(paste0("scale_color_excel_new(theme = '", c(names(ggthemes_data$excel$themes)), "')"))
paletasFill[["ggthemes (excel_new)"]] <- c(paste0("scale_fill_excel_new(theme = '", c(names(ggthemes_data$excel$themes)), "')"))

paletasColor[["ggthemes (tableau discreto)"]] <- c(paste0("scale_color_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$regular)), "')"))
paletasColor[["ggthemes (tableau continuo)"]] <- c(paste0("scale_color_continuous_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-sequential`)), "')"))
paletasColor[["ggthemes (tableau continuo)"]] <- c(paletasColor[["ggthemes (tableau continuo)"]],
                                                  paste0("scale_color_gradient2_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-diverging`)), "')"))

paletasFill[["ggthemes (tableau discreto)"]] <- c(paste0("scale_fill_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$regular)), "')"))
paletasFill[["ggthemes (tableau continuo)"]] <- c(paste0("scale_fill_continuous_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-sequential`)), "')"))
paletasFill[["ggthemes (tableau continuo)"]] <- c(paletasFill[["ggthemes (tableau continuo)"]],
                                                  paste0("scale_fill_gradient2_tableau(palette = '", c(names(ggthemes_data$tableau$`color-palettes`$`ordered-diverging`)), "')"))

#Se divide el paquete ggsci para mejorar la visualización
paletasFill[["ggsci"]] <- sort(c(paletasFill[["ggsci"]][!paletasFill[["ggsci"]] %in% c("scale_fill_bs5", "scale_fill_material", "scale_fill_tw3")],
                                "scale_fill_d3('category20')", "scale_fill_d3('category20b')", "scale_fill_d3('category20c')",
                                "scale_fill_igv('alternating')", "scale_fill_cosmic('hallmarks_dark')", "scale_fill_cosmic('signature_substitutions')",
                                "scale_fill_uchicago('dark')", "scale_fill_uchicago('light')", "scale_fill_flatui('flattastic')", "scale_fill_flatui('aussie')"))
paletasColor[["ggsci"]] <- sort(c(paletasColor[["ggsci"]][!paletasColor[["ggsci"]] %in% c("scale_color_bs5", "scale_color_material", "scale_color_tw3")],
                                "scale_color_d3('category20')", "scale_color_d3('category20b')", "scale_color_d3('category20c')",
                                "scale_color_igv('alternating')", "scale_color_cosmic('hallmarks_dark')", "scale_color_cosmic('signature_substitutions')",
                                "scale_color_uchicago('dark')", "scale_color_uchicago('light')", "scale_color_flatui('flattastic')",
                                "scale_color_flatui('aussie')"))


paletasColor[["ggsci (Bootstrap 5)"]] <- sort(c(paste0("scale_color_bs5('", c("blue", "indigo", "purple", "pink", "red", "orange", "yellow", "green",
                                                                            "teal", "cyan", "gray"), "')")))
paletasFill[["ggsci (Bootstrap 5)"]] <- sort(c(paste0("scale_fill_bs5('", c("blue", "indigo", "purple", "pink", "red", "orange", "yellow", "green",
                                                                              "teal", "cyan", "gray"), "')")))

paletasFill[["ggsci (Material Design)"]] <- sort(c(paste0("scale_fill_material('", c("pink", "purple", "deep-purple", "indigo", "blue", "light-blue", "cyan", "teal", "green", "light-green",
                                                                  "lime", "yellow", "amber", "orange", "deep-orange", "brown", "grey", "blue-grey"), "')")))
paletasColor[["ggsci (Material Design)"]] <- sort(c(paste0("scale_color_material('", c("pink", "purple", "deep-purple", "indigo", "blue", "light-blue",
                                                                    "cyan", "teal", "green", "light-green", "lime", "yellow", "amber", "orange", "deep-orange", "brown", "grey", "blue-grey"), "')")))

paletasColor[["ggsci (Tailwind)"]] <- sort(c(paste0("scale_color_tw3('", c("slate", "gray", "zinc", "neutral", "stone", "red", "orange", "amber",
                                                                            "yellow", "lime", "green", "emerald", "teal", "cyan", "sky", "blue", "indigo",
                                                                            "violet", "purple", "fuchsia", "pink", "rose"), "')")))
paletasFill[["ggsci (Tailwind)"]] <- sort(c(paste0("scale_fill_tw3('", c("slate", "gray", "zinc", "neutral", "stone", "red", "orange", "amber",
                                                                          "yellow", "lime", "green", "emerald", "teal", "cyan", "sky", "blue", "indigo",
                                                                          "violet", "purple", "fuchsia", "pink", "rose"), "')")))

#Se añaden opciones discretas / continuas
nueva_opcion <- function(lista_paletas, nuevo_texto) {
  c(lista_paletas, lapply(lista_paletas, function(x) paste0(x, nuevo_texto)))
  }

paletasColor[["delgosha"]] <- nueva_opcion(paletasColor[["delgosha"]], "(type='continuous')")
paletasFill[["delgosha"]] <- nueva_opcion(paletasFill[["delgosha"]], "(type='continuous')")

paletasColor[["firatheme"]] <- nueva_opcion(paletasColor[["firatheme"]], "(continuous=T)")
paletasFill[["firatheme"]] <- nueva_opcion(paletasFill[["firatheme"]], "(continuous=T)")

paletasColor[["ggcute"]] <- nueva_opcion(paletasColor[["ggcute"]], "(discrete=F)")
paletasFill[["ggcute"]] <- nueva_opcion(paletasFill[["ggcute"]], "(discrete=F)")

paletasColor[["ggGenshin"]] <- nueva_opcion(paletasColor[["ggGenshin"]], "(discrete=F)")
paletasFill[["ggGenshin"]] <- nueva_opcion(paletasFill[["ggGenshin"]], "(discrete=F)")

paletasColor[["hjplottools"]] <- nueva_opcion(paletasColor[["hjplottools"]], "(discrete=F)")
paletasFill[["hjplottools"]] <- nueva_opcion(paletasFill[["hjplottools"]], "(discrete=F)")

paletasColor[["pilot"]] <- nueva_opcion(paletasColor[["pilot"]], "(discrete=F)")
paletasFill[["pilot"]] <- nueva_opcion(paletasFill[["pilot"]], "(discrete=F)")

paletasColor[["tvthemes"]] <- nueva_opcion(paletasColor[["tvthemes"]], "(type='continuous')")
paletasFill[["tvthemes"]] <- nueva_opcion(paletasFill[["tvthemes"]], "(type='continuous')")

#Eliminar paquetes sin paletas
paletasFill <- paletasFill[sapply(paletasFill, function(x) length(x) > 0)]
paletasColor <- paletasColor[sapply(paletasColor, function(x) length(x) > 0)]

paquetesPaletas <- unique(sort(c(names(paletasFill), names(paletasColor))))

#Añadir opción "Ninguna"
Ninguna <- function() {}
paletasFill <- lapply(paletasFill, function(x) c("Ninguna", x))
paletasColor <- lapply(paletasColor, function(x) c("Ninguna", x))
