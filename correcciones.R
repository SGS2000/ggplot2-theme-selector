###Corregir temas####

  #Paquete firatheme
theme_fira <- function(family = "Fira Sans") {
  ggplot2::`%+replace%`(
    ggplot2::theme_grey(base_size = 11.5, base_family = family),
    ggplot2::theme(
      # add padding to the plot
      plot.margin = grid::unit(rep(0.5, 4), "cm"),
      
      # remove the plot background and border
      plot.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      
      # make the legend and strip background transparent
      legend.background = ggplot2::element_rect(fill = "transparent",
                                                colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent",colour = NA),
      strip.background = ggplot2::element_rect(fill = "transparent",
                                               colour = NA),
      
      # add light, dotted major grid lines only
      panel.grid.major = ggplot2::element_line(linetype = "dotted",
                                               colour = "#454545",
                                               linewidth = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      
      # remove the axis tick marks and hide axis lines
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(color = "#454545", size = 0.3),
      
      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(size = 18, colour = "#454545",
                                         hjust = 0.5,
                                         margin = ggplot2::margin(b = 10)),
      plot.subtitle = ggplot2::element_text(size = 12, colour = "#454545",
                                            hjust = 0.5,
                                            margin = ggplot2::margin(b = 10)),
      
      # add padding to the caption
      plot.caption = ggplot2::element_text(size = 10, colour = "#454545",
                                           hjust = 1,
                                           margin = ggplot2::margin(t = 15)),
      
      # Adjust text size and axis title position
      axis.title = ggplot2::element_text(size = 13, colour = "#454545",
                                         hjust = 0.95),
      axis.text = ggplot2::element_text(size = 10, colour = "#212121"),
      legend.title = ggplot2::element_text(size = 12, colour = "#454545"),
      legend.text = ggplot2::element_text(size = 10, colour = "#454545"),
      strip.text = ggplot2::element_text(size = 12, colour = "#454545", 
                                         margin = ggplot2::margin(10, 10, 
                                                                  10, 10, 
                                                                  "pt"))
    )
  )
}

  #Paquete ggexpanse
theme_expanse <- function(base_family = "Protomolecule Light",
                          base_size = 11.5,
                          plot_title_family = "Protomolecule Medium",
                          plot_title_size = 18,
                          plot_title_face = "plain",
                          plot_title_margin = 10,
                          plot_title_col = expanse_cols$white,
                          subtitle_family = "Protomolecule Light",
                          subtitle_size = 13,
                          subtitle_face = "plain",
                          subtitle_col = expanse_cols$mcrn_red_1,
                          subtitle_margin = 15,
                          strip_text_family = base_family,
                          strip_text_size = 12,
                          strip_text_face = "plain",
                          strip_text_col = expanse_cols$white,
                          caption_family = "Protomolecule Light",
                          caption_size = 9,
                          caption_face = "plain",
                          caption_margin = 10,
                          caption_col = expanse_cols$white,
                          axis_text_size = base_size,
                          axis_title_family = base_family,
                          axis_title_size = 9,
                          axis_title_face = "plain",
                          axis_title_just = "rt",
                          plot_margin = margin(30, 30, 30, 30),
                          panel_spacing = grid::unit(2, "lines"),
                          text_col = expanse_cols$white,
                          grid_col = alpha(expanse_cols$white, 1/2),
                          axis_col = grid_col,
                          background_col = expanse_cols$background,
                          foreground_col = expanse_cols$display_blue,
                          grid = TRUE, axis = FALSE, ticks = FALSE) {
  
  
  ggplot2::update_geom_defaults("point", list(colour = foreground_col))
  ggplot2::update_geom_defaults("line", list(colour = foreground_col))
  ggplot2::update_geom_defaults("area", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("rect", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("density", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("bar", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("col", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("text", list(colour = expanse_cols$white))
  
  ret <- ggplot2::theme_minimal(base_family = base_family, base_size = base_size)
  
  ret <- ret + theme(legend.background = element_blank())
  ret <- ret + theme(legend.key = element_blank())
  
  if (inherits(grid, "character") | grid == TRUE) {
    ret <- ret + theme(panel.grid = element_line(color = grid_col, size = 0.175))
    ret <- ret + theme(panel.grid.major = element_line(color = grid_col, size = 0.175))
    ret <- ret + theme(panel.grid.minor = element_line(color = grid_col, size = 0.125))
    
    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) ret <- ret + theme(panel.grid.major.x = element_blank())
      if (regexpr("Y", grid)[1] < 0) ret <- ret + theme(panel.grid.major.y = element_blank())
      if (regexpr("x", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.x = element_blank())
      if (regexpr("y", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.y = element_blank())
    }
  } else {
    ret <- ret + theme(panel.grid = element_blank())
  }
  
  if (inherits(axis, "character") | axis == TRUE) {
    ret <- ret + theme(axis.line = element_line(color = "white", size = 0.15))
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x = element_blank())
      } else {
        ret <- ret + theme(axis.line.x = element_line(color = axis_col, size = 0.15))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y = element_blank())
      } else {
        ret <- ret + theme(axis.line.y = element_line(color = axis_col, size = 0.15))
      }
    } else {
      ret <- ret + theme(axis.line.x = element_line(color = axis_col, size = 0.15))
      ret <- ret + theme(axis.line.y = element_line(color = axis_col, size = 0.15))
    }
  } else {
    ret <- ret + theme(axis.line = element_blank())
  }
  
  if (!ticks) {
    ret <- ret + theme(axis.ticks = element_blank())
    ret <- ret + theme(axis.ticks.x = element_blank())
    ret <- ret + theme(axis.ticks.y = element_blank())
  } else {
    ret <- ret + theme(axis.ticks = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.x = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.y = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.length = grid::unit(5, "pt"))
  }
  
  xj <- switch(tolower(substr(axis_title_just, 1, 1)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  
  ret <- ret + theme(axis.text.x = element_text(size = axis_text_size, margin = margin(t = 0)))
  ret <- ret + theme(axis.text.y = element_text(size = axis_text_size, margin = margin(r = 0)))
  ret <- ret + theme(axis.title = element_text(size = axis_title_size, family = axis_title_family))
  ret <- ret + theme(axis.title.x = element_text(
    hjust = xj, size = axis_title_size,
    family = axis_title_family, face = axis_title_face
  ))
  ret <- ret + theme(axis.title.y = element_text(
    hjust = yj, size = axis_title_size,
    family = axis_title_family, face = axis_title_face
  ))
  ret <- ret + theme(strip.text = element_text(
    hjust = 0, size = strip_text_size,
    color = strip_text_col,
    face = strip_text_face, family = strip_text_family
  ))
  ret <- ret + theme(panel.spacing = panel_spacing)
  ret <- ret + theme(plot.title = element_text(
    hjust = 0, size = plot_title_size,
    margin = margin(b = plot_title_margin),
    family = plot_title_family, face = plot_title_face
  ))
  ret <- ret + theme(plot.subtitle = element_text(
    hjust = 0, size = subtitle_size,
    color = subtitle_col,
    margin = margin(b = subtitle_margin),
    family = subtitle_family, face = subtitle_face
  ))
  ret <- ret + theme(plot.caption = element_text(
    hjust = 1, size = caption_size,
    margin = margin(t = caption_margin),
    family = caption_family, face = caption_face
  ))
  ret <- ret + theme(plot.margin = plot_margin)
  
  ret <- ret +
    theme(plot.background = element_rect(fill = background_col, color = background_col)) +
    theme(panel.background = element_rect(fill = background_col, color = background_col)) +
    theme(rect = element_rect(fill = background_col, color = background_col)) +
    theme(text = element_text(color = text_col)) +
    theme(axis.text = element_text(color = text_col)) +
    theme(title = element_text(color = text_col)) +
    theme(plot.title = element_text(color = plot_title_col)) +
    theme(plot.subtitle = element_text(color = subtitle_col)) +
    theme(plot.caption = element_text(color = caption_col)) +
    theme(line = element_line(color = foreground_col)) +
    theme(axis.ticks = element_line(color = grid_col))
  
  ret
  
}

  #Paquete xkcd
theme_xkcd <- function(){
  theme(panel.grid.major = element_blank(),
        axis.ticks = element_line(colour = "black"),
        panel.background = element_blank(),
        panel.grid.minor = element_blank(),
        legend.key = element_blank(),
        strip.background = element_blank(),
        text = element_text(size = 16, family = "xkcd"))
}


###Función para resetear ajustes predeterminados de ggplot####
resetear_defaults = function(){
    #Elimina cambios hechos por el paquete ggthemr
  ggthemr_reset() 
  options('ggplot2.discrete.colour' = NULL)
  options('ggplot2.continuous.colour' = NULL)
  
    #Elimina cambios hechos por el paquete delgosha
  for (estetica in c("point", "line", "area", "rect", "density", "bar", "col", "text", "curve") ) {
    ggplot2::update_geom_defaults(estetica, ggplot2:::default_aesthetics(estetica))
  }
}