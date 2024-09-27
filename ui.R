############
#### UI ####
############

ui <- page_fluid (
  tags$head(
    tags$link(rel = "preconnect", href = "https://fonts.googleapis.com"),
    tags$link(rel = "preconnect", href="https://fonts.gstatic.com"),
    tags$link(href = "https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap", rel="stylesheet")
  ),
  tags$head(
    tags$link(rel="preconnect", href="https://fonts.googleapis.com"),
    tags$link(rel="preconnect", href="https://fonts.gstatic.com"),
    tags$link(href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100&display=swap", rel="stylesheet")
  ),
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "sccs/style.css")
  ),
  tags$head(
    tags$link(rel="icon", href="http://webs.aspb.cat/guia-comunicacio-digital/guia/img/favicon.ico"),
  ),
  bootstrapPage(
    htmlTemplate("www/components/header.html", name = "header-html")
  ),
  
  page_navbar(
    
    title = "Seleccionar Territori per /",
    bg = "#F6F6F6",
    inverse = TRUE,
    
    ## Page 1 ________________________________________________________________________________________________________________________________________________________ ##
    nav_panel(title = "Districte", tags$h6("DISTRICTE I EIX TEMÀTIC", id = "districte-epigraf"),
              
              layout_sidebar(
                sidebar = sidebar(
                  bg = "#F6F6F6",
                  "InfoTerritoris",
                  tags$div(id = "selectInputGrup",
                           selectInput("districte", "Seleccionar Districte /",
                                       c("Ciutat Vella" = "Ciutat Vella",
                                         "Eixample" = "Eixample",
                                         "Sants-Montjuïc" = "Sants-Montjuïc",
                                         "Les Corts" = "Les Corts",
                                         "Sarrià-Sant Gervasi" = "Sarrià-Sant Gervasi",
                                         "Gràcia" = "Gràcia",
                                         "Horta-Guinardó" = "Horta-Guinardó",
                                         "Nou Barris" = "Nou Barris",
                                         "Sant Andreu" = "Sant Andreu",
                                         "Sant Martí" = "Sant Martí"),
                           ),
                           
## NEW ___________________ "Eixos Temàtics /",
                           selectInput("eix_tematic", "Seleccionar Eix Temàtic /",
                                       c("Població", "Context físic", "Context socioeconòmic", "Salut", "Conductes i salut", "Salut reproductiva", "Serveis sanitaris", "MDO (Malalties de declaració obligatòria)", "Mortalitat", "Urban Heart")
                           ),
                           uiOutput("indicador")
                           
                  ),
                  tags$div(id = "footer"),
                ),
                
                fixedRow(id = "row-header",
                         tags$h1(textOutput("result"), id = "districte-titol"),
                         tags$div(id = "btns",
                                  tags$div(id = "btn-help",
                                           actionButton(
                                             "show", "Ajuda",
                                           ),
                                           tags$img(id = "question-mark", src="img/help-circle.svg"),
                                  ),
                                  downloadButton(
                                    outputId = "downloadDistricte",
                                    label = "Descarregar"
                                  )
                         )
                ),
                
                cards <- list(
                  layout_columns(
                    card(
                      card_header("Distribució de la població segons grups d´edat i lloc de naixement. Dones, any 2022."),
                      card_body(
                        fig1
                      ),
                      card_footer(
                        tags$p(tags$span(class = "bar-legend red-legend"), "Dones nascudes a l´Estat Espanyol"),
                        tags$p(tags$span(class = "marker-legend red-legend"), "Dones nascudes a l´estranger")
                      )
                    ),
                    card(
                      card_header("Distribucio de la poblacio segons grups d´edat i lloc de naixement. Homes, any 2022."),
                      card_body(
                        fig2
                      ),
                      card_footer(
                        tags$p(tags$span(class = "bar-legend blue-legend"), "Homes nascuts a l´Estat Espanyol"),
                        tags$p(tags$span(class = "marker-legend blue-legend"), "Homes nascuts a l´estranger")
                      )
                    ),
                  ),
                  layout_columns(
                    card(
                      card_header("Distribució de la població segons lloc de naixement. Any 2022."),
                      card_body(
                        fig3
                      ),
                      card_footer(
                        tags$p(tags$span(class = "bar-legend blue-legend"), "Fora de l´esta Espanyol"),
                        tags$p(tags$span(class = "bar-legend orange-legend"), "Resta de l´esta Espanyol"),
                        tags$p(tags$span(class = "bar-legend green-legend"), "Resta de Catalunya"),
                        tags$p(tags$span(class = "bar-legend red-legend"), "Barcelona")
                      )
                    ),
                    card(
                      card_header("Distribució de la població nascuda a l´estranger segons regió de procedència. Any 2022."),
                      card_body(
                        fig4
                      ),
                      card_footer(
                        
                        tags$p(tags$span(class = "bar-legend blue-legend"), "Unió Europea - 15"),
                        tags$p(tags$span(class = "bar-legend orange-legend"), "Resta de països de renda alta"),
                        tags$p(tags$span(class = "bar-legend green-legend"), "Resta d´Europa"),
                        tags$p(tags$span(class = "bar-legend red-legend"), "Resta d´Asia i Oceania"),
                        tags$p(tags$span(class = "bar-legend yellow-legend"), "Resta d´Africa"),
                        tags$p(tags$span(class = "bar-legend purple-legend"), "Países del Magrib"),
                        tags$p(tags$span(class = "bar-legend gray-legend"), "Centre i Sudamèrica")
                        
                      )
                    ),
                  )
                ),
              ),
    ),
    
    ## Page 2 ________________________________________________________________________________________________________________________________________________________ ##
    nav_panel(title = "Barri", tags$h6("BARRI I EIX TEMÀTIC", id = "barri-epigraf"),
              
              layout_sidebar(
                sidebar = sidebar(
                  bg = "#F6F6F6",
                  "InfoTerritoris",
                  tags$div(id = "selectInputGrup",
                           
## NEW ___________________ "Seleccionar el Barri /",
                           selectInput("barri", "Seleccionar Districte /",
                                       c("Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Sarrià-Sant Gervasi", "Gràcia", "Horta-Guinardó", "Nou Barris", "Sant Andreu", "Sant Martí")
                           ),
                           uiOutput("indicadorBarri"),
                           
## NEW ___________________ "Eixos Temàtics /",
                           selectInput("eix_tematic_barri", "Seleccionar Eix Temàtic /",
                                       c("Població", "Context físic", "Context socioeconòmic", "Salut", "Conductes i salut", "Salut reproductiva", "Serveis sanitaris", "MDO (Malalties de declaració obligatòria)", "Mortalitat", "Urban Heart")
                           ),
                           uiOutput("indicadorTwo")
                  ),
                  tags$div(id = "footer"),
                ),
                
                fixedRow(id = "row-header",
                         tags$h1(textOutput("resultTwo"), id = "barri-titol"),
                         tags$div(id = "btns",
                                  tags$div(id = "btn-help",
                                           actionButton(
                                             "showTwoo", "Ajuda"
                                           ),
                                           tags$img(id = "question-mark", src="img/help-circle.svg"),
                                  ),
                                  downloadButton(
                                    outputId = "downloadBarri",
                                    label = "Descarregar"
                                  )
                         )
                ),
                
                cards <- list(
                  layout_columns(
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 01."),
                      plotOutput("distPlot")
                    ),
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 02."),
                      plotOutput("distPlot")
                    )
                  ),
                  layout_columns(
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 03."),
                      plotOutput("distPlot")
                    ),
                    card()
                  )
                ),
              ),
    ),
    
    ## Page 3 ________________________________________________________________________________________________________________________________________________________ ##
    nav_panel(title = "Àrea bàsica de Salut", tags$h6("ÀREA BÀSICA DE SALUT I EIX TEMÀTIC", id = "area_basica_de_salut-epigraf"),
              
              layout_sidebar(
                sidebar = sidebar(
                  bg = "#F6F6F6",
                  "InfoTerritoris",
                  tags$div(id = "selectInputGrup",
                           
## NEW ___________________ "Seleccionar el Àrea bàsica de Salut /",
                           selectInput("area_basica_de_salut", "Seleccionar Districte /",
                                       c("Ciutat Vella", "Eixample", "Sants-Montjuïc", "Les Corts", "Sarrià-Sant Gervasi", "Gràcia", "Horta-Guinardó", "Nou Barris", "Sant Andreu", "Sant Martí")
                           ),
                           uiOutput("indicadorAreaBasicaDeSalut"),
                           
## NEW ___________________ "Eixos Temàtics /",
                           selectInput("eix_tematic_area_basica_de_salut", "Eixos Temàtics /",
                                       c("Població", "Context físic", "Context socioeconòmic", "Salut", "Conductes i salut", "Salut reproductiva", "Serveis sanitaris", "MDO (Malalties de declaració obligatòria)", "Mortalitat", "Urban Heart")
                           ),
                           uiOutput("indicadorThree")
                  ),
                  tags$div(id = "footer"),
                ),
                
                fixedRow(id = "row-header",
                         tags$h1(textOutput("resultThree"), id = "area_basica_de_salut-titol"),
                         tags$div(id = "btns",
                                  tags$div(id = "btn-help",
                                           actionButton(
                                             "showThree", "Ajuda"
                                           ),
                                           tags$img(id = "question-mark", src="img/help-circle.svg"),
                                  ),
                                  downloadButton(
                                    outputId = "downloadArea",
                                    label = "Descarregar"
                                  )
                         )
                ),
                
                cards <- list(
                  layout_columns(
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 01."),
                      plotOutput("distPlot")
                    ),
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 02."),
                      plotOutput("distPlot")
                    )
                  ),
                  layout_columns(
                    card(
                      full_screen = TRUE,
                      card_header("Títol de la gràfica 03."),
                      plotOutput("distPlot")
                    ),
                    card()
                  )
                )
              )
    )
)
)