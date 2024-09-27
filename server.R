################
#### SERVER ####
################

shinyServer(
  function(input, output) {
  
## NEW - input$eix_tematic 
    output$indicador <- renderUI({
      if (is.null(input$eix_tematic))
        return()
      switch(input$eix_tematic,
             "Població" = selectInput("dynamic", "Seleccionar Indicador /",
                                      choices = c("Edat" = "Edat",
                                                  "Lloc de naixement" = "Lloc de naixement",
                                                  "Població que viu sola" = "Població que viu sola"),
                                      selected = "Edat"
             ),
             "Context físic" = selectInput("dynamic", "Seleccionar Indicador /",
                                           choices = c("NO2" = "NO2",
                                                       "PM10" = "PM10",
                                                       "Verd urbà" = "Verd urbà",
                                                       "Soroll diürn" = "Soroll diürn",
                                                       "Soroll nocturn" = "Soroll nocturn",
                                                       "Usos del sòl" = "Usos del sòl"),
                                           selected = "NO2"
             ),
             "Context socioeconòmic" = selectInput("dynamic", "Seleccionar Indicador /",
                                                   choices = c("Nivell educatiu" = "Nivell educatiu",
                                                               "Atur" = "Atur",
                                                               "Renda familiar disponible" = "Renda familiar disponible",
                                                               "Risc de pobresa" = "Risc de pobresa",
                                                               "Preu mitjà del lloguer" = "Preu mitjà del lloguer",
                                                               "Pobresa energètica" = "Pobresa energètica",
                                                               "Persones soles que fan cures" = "Persones soles que fan cures", 
                                                               "Persones soles que fan feines a la llar" = "Persones soles que fan feines a la llar", 
                                                               "Suport social" = "Suport social",
                                                               "Soledat" = "Soledat", 
                                                               "Violència al barri" = "Violència al barri"),
                                                   selected = "Nivell educatiu"
             ),
             "Salut" = selectInput("dynamic", "Seleccionar Indicador /",
                                   choices = c("Salut percebuda" = "Salut percebuda",
                                               "Salut mental" = "Salut mental",
                                               "Sobrepès i obesitat" = "Sobrepès i obesitat", 
                                               "Trastorns crònics" = "Trastorns crònics"),
                                   selected = "Salut percebuda"
             ),
             "Conductes i salut" = selectInput("dynamic", "Seleccionar Indicador /",
                                               choices = c("Hores de son" = "Hores de son",
                                                           "Qualitat del son" = "Qualitat del son",
                                                           "Activitat física de lleur" = "Activitat física de lleur", 
                                                           "Consum de tabac" = "Consum de tabac", 
                                                           "Consum d’alcohol" = "Consum d’alcohol", 
                                                           "Cànnabis" = "Cànnabis", 
                                                           "Joc patològic" = "Joc patològic", 
                                                           "Consum de carn vermella" = "Consum de carn vermella", 
                                                           "Consum de verdures" = "Consum de verdures", 
                                                           "Consum de fruites" = "Consum de fruites"),
                                               selected = "Hores de son"
             ),
             "Salut reproductiva" = selectInput("dynamic", "Seleccionar Indicador /",
                                                choices = c("Embaràs" = "Embaràs",
                                                            "Naixements" = "Naixements",
                                                            "Avortaments" = "Avortaments", 
                                                            "Baix pes en néixer" = "Baix pes en néixer", 
                                                            "Prematuritat" = "Prematuritat", 
                                                            "Embaràs adolescent" = "Embaràs adolescent", 
                                                            "Naixements adolescents" = "Naixements adolescents", 
                                                            "Avortament adolescent" = "Avortament adolescent"),
                                                selected = "Embaràs"
             ),
             "Serveis sanitaris" = selectInput("dynamic", "Seleccionar Indicador /",
                                               choices = c("Cobertura sanitària" = "Cobertura sanitària"),
                                               selected = "Cobertura sanitària"
             ),
             "MDO (Malalties de declaració obligatòria)" = selectInput("dynamic", "Seleccionar Indicador /",
                                                                       choices = c("Gonocòccia" = "Gonocòccia",
                                                                                   "Sífilis" = "Sífilis", 
                                                                                   "Clamídia" = "Clamídia", 
                                                                                   "LGV" = "LGV", 
                                                                                   "Tuberculosi" = "Tuberculosi", 
                                                                                   "VIH" = "VIH"),
                                                                       selected = "Gonocòccia"
             ),
             "Mortalitat" = selectInput("dynamic", "Seleccionar Indicador /",
                                        choices = c("Esperança de vida" = "Esperança de vida",
                                                    "Mortalitat global" = "Mortalitat global", 
                                                    "Mortalitat estandarditzada per edat" = "Mortalitat estandarditzada per edat", 
                                                    "Mortalitat prematura" = "Mortalitat prematura"),
                                        selected = "Esperança de vida"
             ),
             "Urban Heart" = selectInput("dynamic", "Seleccionar Indicador /",
                                         choices = c("Urban Heart" = "Urban Heart"),
                                         selected = "Urban Heart"
             ),
      )
    })
    
## NEW - input$eix_tematic_barri 
    output$indicadorTwo <- renderUI({
      if (is.null(input$eix_tematic_barri))
        return()
      switch(input$eix_tematic_barri,
             "Població" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                      choices = c("Edat" = "Edat",
                                                  "Lloc de naixement" = "Lloc de naixement",
                                                  "Població que viu sola" = "Població que viu sola"),
                                      selected = "Edat"
             ),
             "Context físic" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                           choices = c("NO2" = "NO2",
                                                       "PM10" = "PM10",
                                                       "Verd urbà" = "Verd urbà",
                                                       "Soroll diürn" = "Soroll diürn",
                                                       "Soroll nocturn" = "Soroll nocturn",
                                                       "Usos del sòl" = "Usos del sòl"),
                                           selected = "NO2"
             ),
             "Context socioeconòmic" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                                   choices = c("Nivell educatiu" = "Nivell educatiu",
                                                               "Atur" = "Atur",
                                                               "Renda familiar disponible" = "Renda familiar disponible",
                                                               "Risc de pobresa" = "Risc de pobresa",
                                                               "Preu mitjà del lloguer" = "Preu mitjà del lloguer",
                                                               "Pobresa energètica" = "Pobresa energètica",
                                                               "Persones soles que fan cures" = "Persones soles que fan cures", 
                                                               "Persones soles que fan feines a la llar" = "Persones soles que fan feines a la llar", 
                                                               "Suport social" = "Suport social",
                                                               "Soledat" = "Soledat", 
                                                               "Violència al barri" = "Violència al barri"),
                                                   selected = "Nivell educatiu"
             ),
             "Salut" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                   choices = c("Salut percebuda" = "Salut percebuda",
                                               "Salut mental" = "Salut mental",
                                               "Sobrepès i obesitat" = "Sobrepès i obesitat", 
                                               "Trastorns crònics" = "Trastorns crònics"),
                                   selected = "Salut percebuda"
             ),
             "Conductes i salut" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                               choices = c("Hores de son" = "Hores de son",
                                                           "Qualitat del son" = "Qualitat del son",
                                                           "Activitat física de lleur" = "Activitat física de lleur", 
                                                           "Consum de tabac" = "Consum de tabac", 
                                                           "Consum d’alcohol" = "Consum d’alcohol", 
                                                           "Cànnabis" = "Cànnabis", 
                                                           "Joc patològic" = "Joc patològic", 
                                                           "Consum de carn vermella" = "Consum de carn vermella", 
                                                           "Consum de verdures" = "Consum de verdures", 
                                                           "Consum de fruites" = "Consum de fruites"),
                                               selected = "Hores de son"
             ),
             "Salut reproductiva" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                                choices = c("Embaràs" = "Embaràs",
                                                            "Naixements" = "Naixements",
                                                            "Avortaments" = "Avortaments", 
                                                            "Baix pes en néixer" = "Baix pes en néixer", 
                                                            "Prematuritat" = "Prematuritat", 
                                                            "Embaràs adolescent" = "Embaràs adolescent", 
                                                            "Naixements adolescents" = "Naixements adolescents", 
                                                            "Avortament adolescent" = "Avortament adolescent"),
                                                selected = "Embaràs"
             ),
             "Serveis sanitaris" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                               choices = c("Cobertura sanitària" = "Cobertura sanitària"),
                                               selected = "Cobertura sanitària"
             ),
             "MDO (Malalties de declaració obligatòria)" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                                                       choices = c("Gonocòccia" = "Gonocòccia",
                                                                                   "Sífilis" = "Sífilis", 
                                                                                   "Clamídia" = "Clamídia", 
                                                                                   "LGV" = "LGV", 
                                                                                   "Tuberculosi" = "Tuberculosi", 
                                                                                   "VIH" = "VIH"),
                                                                       selected = "Gonocòccia"
             ),
             "Mortalitat" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                        choices = c("Esperança de vida" = "Esperança de vida",
                                                    "Mortalitat global" = "Mortalitat global", 
                                                    "Mortalitat estandarditzada per edat" = "Mortalitat estandarditzada per edat", 
                                                    "Mortalitat prematura" = "Mortalitat prematura"),
                                        selected = "Esperança de vida"
             ),
             "Urban Heart" = selectInput("dynamicTwo", "Seleccionar Indicador /",
                                         choices = c("Urban Heart" = "Urban Heart"),
                                         selected = "Urban Heart"
             ),
      )
    })

## NEW - input$eix_tematic_area_basica_de_salut   
    output$indicadorThree <- renderUI({
      if (is.null(input$eix_tematic_area_basica_de_salut))
        return()
      switch(input$eix_tematic_area_basica_de_salut,
             "Població" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                      choices = c("Edat" = "Edat",
                                                  "Lloc de naixement" = "Lloc de naixement",
                                                  "Població que viu sola" = "Població que viu sola"),
                                      selected = "Edat"
             ),
             "Context físic" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                           choices = c("NO2" = "NO2",
                                                       "PM10" = "PM10",
                                                       "Verd urbà" = "Verd urbà",
                                                       "Soroll diürn" = "Soroll diürn",
                                                       "Soroll nocturn" = "Soroll nocturn",
                                                       "Usos del sòl" = "Usos del sòl"),
                                           selected = "NO2"
             ),
             "Context socioeconòmic" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                                   choices = c("Nivell educatiu" = "Nivell educatiu",
                                                               "Atur" = "Atur",
                                                               "Renda familiar disponible" = "Renda familiar disponible",
                                                               "Risc de pobresa" = "Risc de pobresa",
                                                               "Preu mitjà del lloguer" = "Preu mitjà del lloguer",
                                                               "Pobresa energètica" = "Pobresa energètica",
                                                               "Persones soles que fan cures" = "Persones soles que fan cures", 
                                                               "Persones soles que fan feines a la llar" = "Persones soles que fan feines a la llar", 
                                                               "Suport social" = "Suport social",
                                                               "Soledat" = "Soledat", 
                                                               "Violència al barri" = "Violència al barri"),
                                                   selected = "Nivell educatiu"
             ),
             "Salut" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                   choices = c("Salut percebuda" = "Salut percebuda",
                                               "Salut mental" = "Salut mental",
                                               "Sobrepès i obesitat" = "Sobrepès i obesitat", 
                                               "Trastorns crònics" = "Trastorns crònics"),
                                   selected = "Salut percebuda"
             ),
             "Conductes i salut" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                               choices = c("Hores de son" = "Hores de son",
                                                           "Qualitat del son" = "Qualitat del son",
                                                           "Activitat física de lleur" = "Activitat física de lleur", 
                                                           "Consum de tabac" = "Consum de tabac", 
                                                           "Consum d’alcohol" = "Consum d’alcohol", 
                                                           "Cànnabis" = "Cànnabis", 
                                                           "Joc patològic" = "Joc patològic", 
                                                           "Consum de carn vermella" = "Consum de carn vermella", 
                                                           "Consum de verdures" = "Consum de verdures", 
                                                           "Consum de fruites" = "Consum de fruites"),
                                               selected = "Hores de son"
             ),
             "Salut reproductiva" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                                choices = c("Embaràs" = "Embaràs",
                                                            "Naixements" = "Naixements",
                                                            "Avortaments" = "Avortaments", 
                                                            "Baix pes en néixer" = "Baix pes en néixer", 
                                                            "Prematuritat" = "Prematuritat", 
                                                            "Embaràs adolescent" = "Embaràs adolescent", 
                                                            "Naixements adolescents" = "Naixements adolescents", 
                                                            "Avortament adolescent" = "Avortament adolescent"),
                                                selected = "Embaràs"
             ),
             "Serveis sanitaris" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                               choices = c("Cobertura sanitària" = "Cobertura sanitària"),
                                               selected = "Cobertura sanitària"
             ),
             "MDO (Malalties de declaració obligatòria)" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                                                       choices = c("Gonocòccia" = "Gonocòccia",
                                                                                   "Sífilis" = "Sífilis", 
                                                                                   "Clamídia" = "Clamídia", 
                                                                                   "LGV" = "LGV", 
                                                                                   "Tuberculosi" = "Tuberculosi", 
                                                                                   "VIH" = "VIH"),
                                                                       selected = "Gonocòccia"
             ),
             "Mortalitat" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                        choices = c("Esperança de vida" = "Esperança de vida",
                                                    "Mortalitat global" = "Mortalitat global", 
                                                    "Mortalitat estandarditzada per edat" = "Mortalitat estandarditzada per edat", 
                                                    "Mortalitat prematura" = "Mortalitat prematura"),
                                        selected = "Esperança de vida"
             ),
             "Urban Heart" = selectInput("dynamicThree", "Seleccionar Indicador /",
                                         choices = c("Urban Heart" = "Urban Heart"),
                                         selected = "Urban Heart"
             ),
      )
    })
    
## NEW - input$barri
    output$indicadorBarri <- renderUI({
      if (is.null(input$barri))
        return()
      switch(input$barri,
             "Ciutat Vella" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                          choices = c("Barceloneta" = "Barceloneta",
                                                      "Casc Antic" = "Casc Antic",
                                                      "Gòtic" = "Gòtic",
                                                      "Raval Sud" = "Raval Sud",
                                                      "Raval Nord" = "Raval Nord"),
                                          selected = "Barceloneta"
             ),
             "Eixample" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                      choices = c("Sant Antoni" = "Sant Antoni",
                                                  "Via Roma" = "Via Roma", 
                                                  "Esquerra Eixample" = "Esquerra Eixample", 
                                                  "Universitat" = "Universitat", 
                                                  "Casanova" = "Casanova", 
                                                  "Dreta Eixample" = "Dreta Eixample", 
                                                  "Passeig Sant Joan" = "Passeig Sant Joan", 
                                                  "Sagrada Família" = "Sagrada Família", 
                                                  "Monumental" = "Monumental", 
                                                  "Sagrada Família" = "Sagrada Família"),
                                      selected = "Sant Antoni"
             ),
             "Sants-Montjuïc" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                      choices = c("Les Hortes-Poble Sec" = "Les Hortes-Poble Sec",
                                                  "Poble Sec" = "Poble Sec", 
                                                  "Dr. Carles Riba" = "Dr. Carles Riba", 
                                                  "Bordeta" = "Bordeta", 
                                                  "Sants" = "Sants", 
                                                  "Numància" = "Numància", 
                                                  "La Marina" = "La Marina", 
                                                  "Badal" = "Badal"),
                                      selected = "Les Hortes-Poble Sec"
             ),
             "Les Corts" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                            choices = c("Montnegre" = "Montnegre",
                                                        "Les Corts-Pedralbes" = "Les Corts-Pedralbes", 
                                                        "Les Corts-Helios" = "Les Corts-Helios"),
                                            selected = "Montnegre"
             ),
             "Sarrià-Sant Gervasi" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                       choices = c("Marc Aureli" = "Marc Aureli",
                                                   "Sant Elies" = "Sant Elies", 
                                                   "Sarrià" = "Sarrià", 
                                                   "Vallvidrera-Les Planes" = "Vallvidrera-Les Planes", 
                                                   "Sant Gervasi" = "Sant Gervasi"),
                                       selected = "Marc Aureli"
             ),
             "Gràcia" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                                 choices = c("Joanic" = "Joanic",
                                                             "Vila de Gràcia" = "Vila de Gràcia", 
                                                             "Lesseps" = "Lesseps", 
                                                             "Vallcarca" = "Vallcarca", 
                                                             "La Salut" = "La Salut"),
                                                 selected = "Joanic"
             ),
             "Horta-Guinardó" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                    choices = c("Sanllehy" = "Sanllehy",
                                                "Sardenya" = "Sardenya", 
                                                "El Carmel" = "El Carmel", 
                                                "Lisboa" = "Lisboa", 
                                                "Sant Rafael" = "Sant Rafael", 
                                                "Lisboa" = "Lisboa", 
                                                "Guinardó" = "Guinardó"),
                                    selected = "Sanllehy"
             ),
             "Nou Barris" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                            choices = c("Turó de la Peira" = "Turó de la Peira",
                                                        "Guineueta" = "Guineueta", 
                                                        "Roquetes-Canteres" = "Roquetes-Canteres", 
                                                        "Ciutat Meridiana" = "Ciutat Meridiana", 
                                                        "Xafarines" = "Xafarines", 
                                                        "Cotxeres" = "Cotxeres", 
                                                        "Porta" = "Porta", 
                                                        "Prosperitat-Verdum" = "Prosperitat-Verdum"),
                                            selected = "Turó de la Peira"
             ),
             "Sant Andreu" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                        choices = c("Sagrera" = "Sagrera",
                                                    "Congrés" = "Congrés", 
                                                    "Bon Pastor" = "Bon Pastor", 
                                                    "Via Barcino" = "Via Barcino",
                                                    "Sant Andreu" = "Sant Andreu",
                                                    "Casernes" = "Casernes",
                                                    "Maragall-Tolosa" = "Maragall-Tolosa"),
                                        selected = "Sagrera"
             ),
             "Sant Martí" = selectInput("dynamicBarri", "Seleccionar Barri /",
                                         choices = c("Vila Olímpica" = "Vila Olímpica",
                                                     "Ramon Turró" = "Ramon Turró",
                                                     "Poble Nou" = "Poble Nou",
                                                     "Besòs" = "Besòs",
                                                     "Encants" = "Encants",
                                                     "Camp de l'Arpa" = "Camp de l'Arpa",
                                                     "El Clot" = "El Clot",
                                                     "Sant Martí" = "Sant Martí",
                                                     "La Pau" = "La Pau",
                                                     "Verneda Sud" = "Verneda Sud"),
                                         selected = "Vila Olímpica"
             ),
      )
    })

## NEW - input$area_basica_de_salut   
    output$indicadorAreaBasicaDeSalut <- renderUI({
      if (is.null(input$area_basica_de_salut))
        return()
      switch(input$area_basica_de_salut,
             "Ciutat Vella" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                          choices = c("1A - Barceloneta" = "1A - Barceloneta",
                                                      "1B - Casc Antic" = "1B - Casc Antic", 
                                                      "1C - Gòtic" = "1C - Gòtic", 
                                                      "1D - Raval Sud" = "1D - Raval Sud", 
                                                      "1E - Raval Nord" = "1E - Raval Nord"),
                                          selected = "1A - Barceloneta"
             ),
             "Eixample" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                          choices = c("2A - Sant Antoni" = "2A - Sant Antoni",
                                                      "2B - Via Roma" = "2B - Via Roma", 
                                                      "2C - Esquerra Eixample" = "2C - Esquerra Eixample", 
                                                      "2D - Universitat" = "2D - Universitat", 
                                                      "2E - Casanova" = "2E - Casanova", 
                                                      "2G - Dreta Eixample" = "2G - Dreta Eixample", 
                                                      "2H - Passeig Sant Joan" = "2H - Passeig Sant Joan", 
                                                      "2I - Sagrada Família" = "2I - Sagrada Família", 
                                                      "2J - Monumental" = "2J - Monumental", 
                                                      "2K - Sagrada Família" = "2K - Sagrada Família"),
                                          selected = "2A - Sant Antoni"
             ),
             "Sants-Montjuïc" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                      choices = c("3A - Les Hortes-Poble Sec" = "3A - Les Hortes-Poble Sec",
                                                  "3B - Poble Sec" = "3B - Poble Sec", 
                                                  "3C - Dr. Carles Riba" = "3C - Dr. Carles Riba", 
                                                  "3D - Bordeta" = "3D - Bordeta", 
                                                  "3E - Sants" = "3E - Sants", 
                                                  "3G - Numància" = "3G - Numància", 
                                                  "3H - La Marina" = "3H - La Marina", 
                                                  "3I - Badal" = "3I - Badal"),
                                      selected = "3A - Les Hortes-Poble Sec"
             ),
             "Les Corts" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                            choices = c("4A - Montnegre" = "4A - Montnegre",
                                                        "4B - Les Corts-Pedralbes" = "4B - Les Corts-Pedralbes", 
                                                        "4C - Les Corts-Helios" = "4C - Les Corts-Helios"),
                                            selected = "4A - Montnegre"
             ),
             "Sarrià-Sant Gervasi" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                       choices = c("5A - Marc Aureli" = "5A - Marc Aureli",
                                                   "5B - Sant Elies" = "5B - Sant Elies", 
                                                   "5C - Sarrià" = "5C - Sarrià", 
                                                   "5D - Vallvidrera-Les Planes" = "5D - Vallvidrera-Les Planes", 
                                                   "5E - Sant Gervasi" = "5E - Sant Gervasi"),
                                       selected = "5A - Marc Aureli"
             ),
             "Gràcia" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                                 choices = c("6A - Joanic" = "6A - Joanic",
                                                             "6B - Vila de Gràcia" = "6B - Vila de Gràcia", 
                                                             "6C - Lesseps" = "6C - Lesseps", 
                                                             "6D - Vallcarca" = "6D - Vallcarca", 
                                                             "6E - La Salut" = "6E - La Salut"),
                                                 selected = "6A - Joanic"
             ),
             "Horta-Guinardó" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                    choices = c("7A - Sanllehy" = "7A - Sanllehy",
                                                "7B - Sardenya" = "7B - Sardenya", 
                                                "7C - El Carmel" = "7C - El Carmel", 
                                                "7D - Lisboa" = "7D - Lisboa", 
                                                "7E - Sant Rafael" = "7E - Sant Rafael", 
                                                "7F - Lisboa" = "7F - Lisboa", 
                                                "7F - Guinardó" = "7F - Guinardó"),
                                    selected = "7A - Sanllehy"
             ),
             "Nou Barris" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                            choices = c("8C - Turó de la Peira" = "8C - Turó de la Peira",
                                                        "8F - Guineueta" = "8F - Guineueta", 
                                                        "8G - Roquetes - Canteres" = "8G - Roquetes - Canteres", 
                                                        "8H - Ciutat Meridiana" = "8H - Ciutat Meridiana", 
                                                        "8I - Xafarines" = "8I - Xafarines", 
                                                        "8J - Cotxeres" = "8J - Cotxeres", 
                                                        "8K - Porta" = "8K - Porta", 
                                                        "8L - Prosperitat-Verdum" = "8L - Prosperitat-Verdum"),
                                            selected = "8C - Turó de la Peira"
             ),
             "Sant Andreu" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                        choices = c("9A - Sagrera" = "9A - Sagrera",
                                                    "9C - Congrés" = "9C - Congrés", 
                                                    "9E - Bon Pastor" = "9E - Bon Pastor", 
                                                    "9F - Via Barcino" = "9F - Via Barcino", 
                                                    "9H - Sant Andreu" = "9H - Sant Andreu", 
                                                    "9I - Casernes" = "9I - Casernes", 
                                                    "9J - Maragall-Tolosa" = "9J - Maragall-Tolosa"),
                                        selected = "9A - Sagrera"
             ),
             "Sant Martí" = selectInput("dynamicAreaBasicaDeSalut", "Seleccionar Àrea Bàsica de Salut /",
                                         choices = c("10A - Vila Olímpica" = "10A - Vila Olímpica",
                                                     "10B - Ramon Turró" = "10B - Ramon Turró", 
                                                     "10C - Poble Nou" = "10C - Poble Nou", 
                                                     "10D - Besòs" = "10D - Besòs", 
                                                     "10E - Encants" = "10E - Encants", 
                                                     "10F - Camp de l'Arpa" = "10F - Camp de l'Arpa", 
                                                     "10G - El Clot" = "10G - El Clot", 
                                                     "10H - Sant Martí" = "10H - Sant Martí", 
                                                     "10I - La Pau" = "10I - La Pau", 
                                                     "10J - Verneda Sud" = "10J - Verneda Sud"),
                                         selected = "9A - Sagrera"
             ),
      )
    })

## NEW
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs), col = 'darkgray', border = 'white')
  })
## NEW
  output$result <- renderText({
    paste(input$districte, " / ", input$eix_tematic, " - ", input$dynamic)
  })
## NEW
  output$resultTwo <- renderText({
    paste(input$dynamicBarri, " / ", input$eix_tematic_barri, " - ", input$dynamicTwo)
  })
## NEW
  output$resultThree <- renderText({
    paste(input$dynamicAreaBasicaDeSalut, " / ", input$eix_tematic_area_basica_de_salut, " - ", input$dynamicThree)
  })
  
## NEW  
  observeEvent(input$show, {
    showModal(modalDialog(
      title = (input$eix_tematic),
      output$showAjuda <- renderUI({
        if (is.null(input$show))
          return()
        
          switch(input$eix_tematic,
                 "Població" = tags$iframe(src="components/poblacio.html"),
                 "Context físic" = tags$iframe(src="components/context-fisic.html"),
                 
                 "Context socioeconòmic" = tags$iframe(src="components/context-socioeconomic.html"),
                 "Salut" = tags$iframe(src="components/salut.html"),
                 "Conductes i salut" = tags$iframe(src="components/conductes-i-salut.html"),
                 "Salut reproductiva" = tags$iframe(src="components/salut-reproductiva.html"),
                 "Serveis sanitaris" = tags$iframe(src="components/serveis-sanitaris.html"),
                 "MDO (Malalties de declaració obligatòria)" = tags$iframe(src="components/mdo.html"),
                 "Mortalitat" = tags$iframe(src="components/mortalitat.html"),
                 
                 "Urban Heart" = tags$iframe(src="components/urban-heart.html"),
          )
    }),
      footer = modalButton("Tornar a l’aplicació")
    ))
  })
## NEW  
  observeEvent(input$showTwoo, {
    showModal(modalDialog(
      title = (input$eix_tematic_barri),
      output$showAjuda <- renderUI({
        if (is.null(input$showTwoo))
          return()
        
        switch(input$eix_tematic_barri,
               "Població" = tags$iframe(src="components/poblacio.html"),
               "Context físic" = tags$iframe(src="components/context-fisic.html"),
               
               "Context socioeconòmic" = tags$iframe(src="components/context-socioeconomic.html"),
               "Salut" = tags$iframe(src="components/salut.html"),
               "Conductes i salut" = tags$iframe(src="components/conductes-i-salut.html"),
               "Salut reproductiva" = tags$iframe(src="components/salut-reproductiva.html"),
               "Serveis sanitaris" = tags$iframe(src="components/serveis-sanitaris.html"),
               "MDO (Malalties de declaració obligatòria)" = tags$iframe(src="components/mdo.html"),
               "Mortalitat" = tags$iframe(src="components/mortalitat.html"),
               
               "Urban Heart" = tags$iframe(src="components/urban-heart.html"),
        )
      }),
      footer = modalButton("Tornar a l’aplicació")
    ))
  })
## NEW  
  observeEvent(input$showThree, {
    showModal(modalDialog(
      title = (input$eix_tematic_area_basica_de_salut),
      output$showAjuda <- renderUI({
        if (is.null(input$showThree))
          return()
        
        switch(input$eix_tematic_area_basica_de_salut,
               "Població" = tags$iframe(src="components/poblacio.html"),
               "Context físic" = tags$iframe(src="components/context-fisic.html"),
               
               "Context socioeconòmic" = tags$iframe(src="components/context-socioeconomic.html"),
               "Salut" = tags$iframe(src="components/salut.html"),
               "Conductes i salut" = tags$iframe(src="components/conductes-i-salut.html"),
               "Salut reproductiva" = tags$iframe(src="components/salut-reproductiva.html"),
               "Serveis sanitaris" = tags$iframe(src="components/serveis-sanitaris.html"),
               "MDO (Malalties de declaració obligatòria)" = tags$iframe(src="components/mdo.html"),
               "Mortalitat" = tags$iframe(src="components/mortalitat.html"),
               
               "Urban Heart" = tags$iframe(src="components/urban-heart.html"),
        )
      }),
      footer = modalButton("Tornar a l’aplicació")
    ))
  })  
  
  output$downloadDistricte <- downloadHandler(
    filename = function() {
      paste0(input$dataset, ".csv")
    },
    content = function(file) {
      write.csv(data(), file)
    }
  )
})
