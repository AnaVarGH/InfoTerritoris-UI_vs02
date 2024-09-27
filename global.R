library(bslib)
library(shiny)
library(plotly)
library(ggplot2)
library(bsicons)
library(rsvg)
library(shinyWidgets)

# graph_01
data <- read.csv('data/01-distribucio_de_la_poblacio_segons_grups_dedat_i_lloc_de_naixement-dones.csv')
head(data)

fig1 <- plot_ly(x = data$Dones_nascudes_a_lEstat_Espanyol, y = data$Edat_en_anys, name = 'Dones nascudes a l´Estat Espanyol', type = 'bar', marker = list(color = '#dc3545', size = 10), opacity = 0.5) %>%
  add_trace(x = data$Dones_nascudes_a_lestranger, name = 'Dones nascudes a l´estranger', marker = list(color = '#dc3545'), base = 0, type = 'scatter', opacity = 1) %>%
  layout(showlegend=FALSE,
    xaxis = list(title = "Dones"), zerolinecolor = '#0003', zerolinewidth = 1, gridcolor = '#000',
    yaxis = list(title = "Edat en anys"), zerolinecolor = '#0003', zerolinewidth = 1, gridcolor = '#0003'
  )

# graph_02
data <- read.csv('data/02-distribucio_de_la_poblacio_segons_grups_dedat_i_lloc_de_naixement-homes.csv')
head(data)

fig2 <- plot_ly(x = data$Homes_nascuts_a_lEstat_Espanyol, y = data$Edat_en_anys, name = 'Homes nascuts al´Estat Espanyol', type = 'bar', marker = list(color = '#0d6efd', size = 10), opacity = 0.5) %>%
  add_trace(x = data$Homes_nascuts_a_lestranger, name = 'Homes nascuts a l´estranger', marker = list(color = '#0d6efd'), base = 0, type = 'scatter', opacity = 1) %>%
  layout(showlegend=FALSE,
    xaxis = list(title = "Homes"), zerolinecolor = '#0003', zerolinewidth = 1, gridcolor = '#000',
    yaxis = list(title = "Edat en anys"), zerolinecolor = '#0003', zerolinewidth = 1, gridcolor = '#0003'
  )

# graph_03
Poblacio <- c("Barri", "Districte", "Barcelona")
Fora_de_lesta_Espanyol <- c(48.5, 60.2, 30.1)
Resta_de_lesta_Espanyol <- c(10.8, 9.1, 14.5)
Resta_de_Catalunya <- c(4.2, 4.3, 7.1)
Barcelona <- c(36.5, 26.3, 48.3)
data <- data.frame(Poblacio, Fora_de_lesta_Espanyol, Resta_de_lesta_Espanyol, Resta_de_Catalunya, Barcelona)

fig3 <- plot_ly(data, x = ~Poblacio, y = ~Fora_de_lesta_Espanyol, type = 'bar', name = 'Fora de l´esta Espanyol', marker = list(color = '#0d6efd')) %>%
  add_trace(y = ~Resta_de_lesta_Espanyol, name = 'Resta de l´esta Espanyol', marker = list(color = '#fd7e14')) %>%
  add_trace(y = ~Resta_de_Catalunya, name = 'Resta de Catalunya', marker = list(color = '#198754')) %>%
  add_trace(y = ~Barcelona, name = 'Barcelona', marker = list(color = '#dc3545')) %>%
  layout(showlegend=FALSE,
    yaxis = list(title = '%'), barmode = 'stack'
  )

# graph_04
Poblacio <- c("Barri", "Districte", "Barcelona")
Unio_Europea <- c(26.1, 17.6, 14.1)
Resta_de_paisos_de_renda_alta <- c(2.3, 2.3, 2.1)
Resta_dEuropa <- c(10.9, 6.7, 8.9)
Resta_dAsia_i_Oceania <- c(11.1, 35.1, 16.5)
Resta_dAfrica <- c(1.4, 1.7, 1.9)
Países_del_Magrib <- c(7.1, 7.7, 4.7)
Centre_i_Sudamèrica <- c(41.2, 29.0, 51.8)
data <- data.frame(Poblacio, Unio_Europea, Resta_de_paisos_de_renda_alta, Resta_dEuropa, Resta_dAsia_i_Oceania, Resta_dAfrica, Países_del_Magrib, Centre_i_Sudamèrica)

fig4 <- plot_ly(data, x = ~Poblacio, y = ~Unio_Europea, type = 'bar', name = 'Unió Europea - 15', marker = list(color = '#0d6efd')) %>%
  add_trace(y = ~Resta_de_paisos_de_renda_alta, name = 'Resta de països de renda alta', marker = list(color = '#fd7e14')) %>%
  add_trace(y = ~Resta_dEuropa, name = 'Resta d´Europa', marker = list(color = '#198754')) %>%
  add_trace(y = ~Resta_dAsia_i_Oceania, name = 'Resta d´Asia i Oceania', marker = list(color = '#dc3545')) %>%
  add_trace(y = ~Resta_dAfrica, name = 'Resta d´Afric', marker = list(color = '#ffc107')) %>%
  add_trace(y = ~Países_del_Magrib, name = 'Países del Magrib', marker = list(color = '#6f42c1')) %>%
  add_trace(y = ~Centre_i_Sudamèrica, name = 'Centre i Sudamèrica', marker = list(color = '#6c757d')) %>%
  layout(showlegend=FALSE,
    yaxis = list(title = '%'), barmode = 'stack'
  )
