;;; ---------------------------------------------------------
;;; ontologia-no-instancias.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia-no-instancias.owl
;;; :Date 11/05/2022 18:18:44

;;ONTOLOGIA-------------------------------------------

          (defclass Ciudad
          (is-a USER)
          (role concrete)
          (pattern-match reactive)
          (multislot tiene_tipo
               (type INSTANCE)
               (create-accessor read-write))
          (multislot tiene_alojamiento
               (type INSTANCE)
               (create-accessor read-write))
               (multislot tiene_punto
               (type INSTANCE)
               (create-accessor read-write))
          (slot es_conocido
               (type SYMBOL)
               (create-accessor read-write))
               (slot visitado
               (type SYMBOL)
               (create-accessor read-write))
          (slot nombre
               (type STRING)
               (create-accessor read-write))
          (slot puntuacion
               (type INTEGER)
               (create-accessor read-write))
          (slot continente
               (type STRING)
               (create-accessor read-write))
          )

          (defclass Estancia
          (is-a USER)
          (role concrete)
          (pattern-match reactive)
          (slot transporte
               (type INSTANCE)
               (create-accessor read-write))

          (slot precio-transporte
               (type INTEGER)
               (create-accessor read-write))

          (slot es_en
               (type INSTANCE)
               (create-accessor read-write))

          (slot se_hospeda_en
               (type INSTANCE)
               (create-accessor read-write))

          (multislot visita
               (type INSTANCE)
               (create-accessor read-write))
          )

          (defclass Lugar
          (is-a USER)
          (role concrete)
          (pattern-match reactive)
          (slot pertenece_a
               (type INSTANCE)
               (create-accessor read-write))
          (slot precio
               (type INTEGER)
               (create-accessor read-write))
          )

          (defclass Alojamiento
          (is-a Lugar)
          (role concrete)
          (pattern-match reactive)
          (slot calidad
               (type INTEGER)
               (create-accessor read-write))
          )

          (defclass Punto_Interes
          (is-a Lugar)
          (role concrete)
          (pattern-match reactive)
          (multislot tiene_tipo
               (type INSTANCE)
               (create-accessor read-write))
          (slot es_conocido
               (type SYMBOL)
               (create-accessor read-write))
          (slot puntuacion
               (type INTEGER)
               (create-accessor read-write))
          )

          (defclass Transporte
          (is-a USER)
          (role concrete)
          (pattern-match reactive)
          (slot destino
               (type INSTANCE)
               (create-accessor read-write))
          (slot origen
               (type INSTANCE)
               (create-accessor read-write))
          (slot precio
               (type INTEGER)
               (create-accessor read-write))
          )

          (defclass Avion
          (is-a Transporte)
          (role concrete)
          (pattern-match reactive)
          )

          (defclass Barco
          (is-a Transporte)
          (role concrete)
          (pattern-match reactive)
          )

          (defclass Bus
          (is-a Transporte)
          (role concrete)
          (pattern-match reactive)
          )

          (defclass Tren
          (is-a Transporte)
          (role concrete)
          (pattern-match reactive)
          )

          (defclass Tipo_Objetivo
          (is-a USER)
          (role concrete)
          (pattern-match reactive)
          )

;;FIN ONTOLOGIA --------------------------------------


;;;INSTANCIAS----------------------------------------
     (definstances instances

          ;;;;Tipo_Objetivo
               ([Romantico] of Tipo_Objetivo
               )

               ([Culinario] of Tipo_Objetivo
               )

               ([Cultural] of Tipo_Objetivo
               )

               ([Descanso] of Tipo_Objetivo
               )

               ([Diversion] of Tipo_Objetivo
               )

               ([Experiencias] of Tipo_Objetivo
               )
          ;;;;Fin Tipo_Objetivo

          ;;;Ciudad
               ([Buenos_Aires] of Ciudad
                    (tiene_alojamiento [Adlon_Kempinski] [Eurobuilding_Alojamiento_Boutique] [Palladio])
                    (tiene_punto [Cemiterio_de_la_Recoleta] [Puerto_Madero] [Recoleta] [Usina_del_Arte])
                    (tiene_tipo  [Diversion] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Buenos_Aires")
                    (puntuacion  5)
                    (visitado "no")
                    (continente "America")
               )

               ([Bangkok] of Ciudad
                    (tiene_alojamiento [Chillax_Heritage] [Dang_Derm] [Eastin_Grand] [Khaosan_Art] [Lamphuhouse] [Mango_Lagoon])	
                    (tiene_punto [Barrios_Rojos] [Canales_de_Bangkok] [Chinatown] [Khao_San] [Rooftop_bars] [Wat_Arun] [Wat_Pho])
                    (tiene_tipo  [Cultural] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Bangkok")
                    (puntuacion  9)
                    (visitado "no")
                    (continente "Asia")
               )

               ([Barcelona] of Ciudad
                    (tiene_alojamiento [Generator_Barcelona] [HLG_CityPark_Pelayo] [SM_AlojamientoTeatre_Auditori] [W] [Vincci_Maritimo])
                    (tiene_punto [Parc_Guell] [Mercat_Boqueria] [Sagrada_Familia] )
                    (tiene_tipo  [Culinario] [Cultural])
                    (es_conocido  "true")
                    (nombre  "Barcelona")
                    (puntuacion  9)
                    (visitado "no")
                    (continente "Europa")
               )

               ([Bergen] of Ciudad
                    (tiene_alojamiento [Edvard_Grieg] [Opus_16] [Park_Bergen])
                    (tiene_punto [Bryggen] [Ulriken] [Floyen])
                    (tiene_tipo  [Cultural] [Descanso])
                    (es_conocido  "false")
                    (nombre  "Bergen")
                    (puntuacion  7)
                    (visitado "no")
                    (continente "Europa")
               )

               ([Berlin] of Ciudad
                    (tiene_alojamiento [Adlon_Kempinski] [Gotland] [TITANIC_Chaussee] [Tiergarten])
                    (tiene_punto [Holocaust-Mahnmal] [Puerta_de_Brandenburg] [Reichstag_Building])
                    (tiene_tipo  [Cultural] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Berlin")
                    (puntuacion  9)
                    (visitado "no")
                    (continente "Europa")
               )

               ([Chachapoyas] of Ciudad
                    (tiene_alojamiento [Explorer_Deluxe] [Nunurco])
                    (tiene_punto [Museo_de_Leymebamba] [Sarcófagos_de_Karajia] [catarata_de_gocta])
                    (tiene_tipo  [Cultural] [Experiencias])
                    (es_conocido  "false")
                    (nombre  "Chachapoyas")
                    (puntuacion  8)
                    (visitado "no")
                    (continente "America")
               )

               ([Dinant] of Ciudad
                    (tiene_alojamiento [Ibis_Dinant] [La_Fayette] [Les_Jardins_de_la_Molignee])
                    (tiene_punto [Castillo_Veves] [Dinant_Citadel] [Parque_Furfooz])
                    (tiene_tipo  [Descanso] [Experiencias])
                    (es_conocido  "false")
                    (nombre  "Dinant")
                    (puntuacion  8)
                    (visitado "no")
                    (continente "Europa")
               )

               ([Incheon] of Ciudad
                    (tiene_alojamiento [Best_Western_Premier] [Grand_Hyatt] [K2_Motel] [Skypark])
                    (tiene_punto [Aguas_termales_Ganghwado] [Jeondeungsa_Temple] [Sinpo_International_Market] [Songdo_Central_Park] [Songwol-don_Fairytale_Village])
                    (tiene_tipo  [Cultural] [Diversion])
                    (es_conocido  "false")
                    (nombre  "Incheon")
                    (puntuacion  8)
                    (visitado "no")
                    (continente "Asia")
               )

               ([Jaipur] of Ciudad
                    (tiene_alojamiento [Jaipur_Haveli] [Loft_24] [Pachamama])
                    (tiene_punto [Bazar_y_calles_de_la_Ciudad_Rosa] [Hawa_Mahal] [Lassiwala])
                    (tiene_tipo  [Cultural])
                    (es_conocido  "false")
                    (nombre  "Jaipur")
                    (puntuacion  6)
                    (visitado "no")
                    (continente "Asia")
               )

               ([Katmandu] of Ciudad
                    (tiene_alojamiento [Apsara] [Jampa] [Sweet_Dreams])
                    (tiene_punto [Barrio_de_Thamel] [Durbar_Square] [Estupa_de_Boudhanath] [Parque_de_los_tres_budas])
                    (tiene_tipo  [Cultural])
                    (es_conocido  "false")
                    (nombre  "Katmandu")
                    (puntuacion  7)
                    (visitado "no")
                    (continente "Asia")
               )

               ([Nueva_York] of Ciudad
                    (tiene_alojamiento [Pod_51] [The_Ritz-Carlton])
                    (tiene_punto [Central_Park] [Estatua_Libertad] [Empire_State] [Museo_Metropolitano_de_Arte] [Museo_y__Memorial_nacional_de_9/11])
                    (tiene_tipo  [Descanso] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Nueva_York")
                    (puntuacion  9)
                    (visitado "no")
                    (continente "America")
               )

               ([Paris] of Ciudad
                    (tiene_alojamiento [Etoile_Park] [Alojamiento_Mimosa] [Lutetia] [National_Des_Arts_et_Metiers] [Saint_Pierre])
                    (tiene_punto [Notre-Dame] [Museo_Louvre] [Torre_Eiffel] [DisneyLand])
                    (tiene_tipo  [Culinario] [Romantico] [Cultural])
                    (es_conocido  "true")
                    (nombre  "Paris")
                    (puntuacion  8)
                    (visitado "no")
                    (continente "Europa")
               )

               ([Savannah] of Ciudad
                    (tiene_alojamiento [Courtyard] [Mansion_on_Forsyth_Park])
                    (tiene_punto [Bonaventure_Cemetery] [Forsyth_Park] [Wormsloe_Historic_Site])
                    (tiene_tipo  [Descanso] [Experiencias])
                    (es_conocido  "false")
                    (nombre  "Savannah")
                    (puntuacion  10) 
                    (visitado "no")
                    (continente "America")
               )

               ([Tokio] of Ciudad
                    (tiene_alojamiento [Roppongi_Tokyo_Premier] [Sotetsu_Fresa] [Sunroute])
                    (tiene_punto [Aguas_termales_Tokio] [Akihabara] [Mercado_de_pescado_de_Toyosu] [Shibuya] [Templo_Sensoji] [Torre_de_Tokio])
                    (tiene_tipo  [Cultural] [Diversion] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Tokio")
                    (puntuacion  10)
                    (visitado "no")
                    (continente "Asia")
               )

               ([Toronto] of Ciudad
                    (tiene_alojamiento [Four_Seasons_Toronto] [Park_Inn])
                    (tiene_punto [CN_tower] [Hockey_Hall_of_Fame] [Toronto_City_Hall])
                    (tiene_tipo  [Cultural] [Experiencias])
                    (es_conocido  "true")
                    (nombre  "Toronto")
                    (puntuacion  7)
                    (visitado "no")
                    (continente "America")
               )
          ;;;;;Fin Ciudad


          ;;;Alojamiento
               ;;Europa
                    ;;Barcelona
                         ([Generator_Barcelona] of Alojamiento
                              (calidad  1)
                              (pertenece_a  [Barcelona])
                              (precio  30)
                         )

                         ([HLG_CityPark_Pelayo] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Barcelona])
                              (precio  315)
                         )

                         ([SM_AlojamientoTeatre_Auditori] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Barcelona])
                              (precio  205)
                         )

                         ([Vincci_Maritimo] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Barcelona])
                              (precio  661)
                         )

                         ([W] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Barcelona])
                              (precio  850)
                         )
                    ;;Paris
                         ([Etoile_Park] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Paris])
                              (precio  209)
                         )

                         ([Alojamiento_Mimosa] of Alojamiento
                              (calidad  1)
                              (pertenece_a  [Paris])
                              (precio  101)
                         )

                         ([Lutetia] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Paris])
                              (precio  1525)
                         )

                         ([National_Des_Arts_et_Metiers] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Paris])
                              (precio  374)
                         )

                         ([Saint_Pierre] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Paris])
                              (precio  182)
                         )

                    ;;Bergen
                         ([Edvard_Grieg] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Bergen])
                              (precio  229)
                         )

                         ([Opus_16] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Bergen])
                              (precio  1252)
                         )

                         ([Park_Bergen] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Bergen])
                              (precio  292)
                         )
                    ;;Dinant
                         ([Ibis_Dinant] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Dinant])
                              (precio  116)
                         ) 

                         ([La_Fayette] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Dinant])
                              (precio  80)
                         )

                         ([Les_Jardins_de_la_Molignee] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Dinant])
                              (precio  91)
                         )
                    ;;Berlin
                         ([Adlon_Kempinski] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Berlin])
                              (precio  729)
                         )

                         ([Gotland] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Berlin])
                              (precio  163)
                         )

                         ([TITANIC_Chaussee] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Berlin])
                              (precio  319)
                         )

                         ([Tiergarten] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Berlin])
                              (precio  524)
                         )
               
               ;;America
                    ;;Savannah
                         ([Courtyard] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Savannah])
                              (precio  190)
                         )

                         ([Mansion_on_Forsyth_Park] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Savannah])
                              (precio  250)
                         )
                    ;;Toronto
                         ([Four_Seasons_Toronto] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Toronto])
                              (precio  618)
                         )

                         ([Park_Inn] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Toronto])
                              (precio  84)
                         )
                    ;;Chachapoyas
                         ([Explorer_Deluxe] of Alojamiento
                              (pertenece_a  [Chachapoyas])
                              (calidad 4)
                              (precio  32)
                         )

                         ([Nunurco] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Chachapoyas])
                              (precio  19)
                         )

                    ;;Nueva_York
                         ([Pod_51] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Nueva_York])
                              (precio  188)
                         )

                         ([The_Ritz-Carlton] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Nueva_York])
                              (precio  1400)
                         )
                    ;;Buenos_Aires
                         ([Eurobuilding_Alojamiento_Boutique] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Buenos_Aires])
                              (precio  84)
                         )

                         ([Palladio] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Buenos_Aires])
                              (precio  213)
                         )
               ;;Asia
                    ;;Tokio
                         ([Roppongi_Tokyo_Premier] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Tokio])
                              (precio  79)
                         )

                         ([Sotetsu_Fresa] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Tokio])
                              (precio  42)
                         )

                         ([Sunroute] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Tokio])
                              (precio  57)
                         )
                    ;;Bangkok
                         ([Chillax_Heritage] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Bangkok])
                              (precio  52)
                         )

                         ([Dang_Derm] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Bangkok])
                              (precio  33)
                         )
                         
                         ([Eastin_Grand] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Bangkok])
                              (precio  93)
                         )

                         ([Khaosan_Art] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Bangkok])
                              (precio  17)
                         )

                         ([Lamphuhouse] of Alojamiento
                              (calidad  0)
                              (pertenece_a  [Bangkok])
                              (precio  8)
                         )

                         ([Mango_Lagoon] of Alojamiento
                              (calidad  1)
                              (pertenece_a  [Bangkok])
                              (precio  12)
                         )

                    ;;Incheon
                         ([Best_Western_Premier] of Alojamiento
                              (calidad  4)
                              (precio 48)
                              (pertenece_a  [Incheon])
                         )

                         ([Grand_Hyatt] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Incheon])
                              (precio  154)
                         )

                         ([K2_Motel] of Alojamiento
                              (calidad  1)
                              (pertenece_a  [Incheon])
                              (precio  22)
                         )

                         ([Skypark] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Incheon])
                              (precio  64)
                         )

                    ;;Jaipur
                         ([Jaipur_Haveli] of Alojamiento
                              (calidad  2)
                              (pertenece_a  [Jaipur])
                              (precio  21)
                         )

                         ([Loft_24] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Jaipur])
                              (precio  45)
                         )

                         ([Pachamama] of Alojamiento
                              (calidad  1)
                              (pertenece_a  [Jaipur])
                              (precio  13)
                         )

                         ([The_Gulmohar] of Alojamiento
                              (calidad  5)
                              (pertenece_a  [Jaipur])
                              (precio  141)
                         )
                    ;;Katmandu
                         ([Apsara] of Alojamiento
                              (calidad  4)
                              (pertenece_a  [Katmandu])
                              (precio  51)
                         )

                         ([Jampa] of Alojamiento
                              (calidad  3)
                              (pertenece_a  [Katmandu])
                              (precio  29)
                         ) 

                         ([Sweet_Dreams] of Alojamiento
                              (calidad  0)
                              (pertenece_a  [Katmandu])
                              (precio  6)
                         )
                
          ;;;Fin Alojamiento
          
          ;;;Punto_Interes
               ;;Europa
                    ;;Barcelona
                         ([Mercat_Boqueria] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Barcelona])
                              (precio  0)
                         )

                         ([Sagrada_Familia] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Barcelona])
                              (precio  26)
                         )

                         ([Parc_Guell] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Barcelona])
                              (precio  10)
                         )
                    ;;Paris
                         ([DisneyLand] of Punto_Interes
                              (tiene_tipo  [Diversion] [Romantico])
                              (es_conocido  "true")
                              (puntuacion  10)
                              (pertenece_a  [Paris])
                              (precio  100)
                         )

                         ([Museo_Louvre] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  9)
                              (pertenece_a  [Paris])
                              (precio  17)
                         )

                         ([Notre-Dame] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Paris])
                              (precio  9)
                         )

                         ([Torre_Eiffel] of Punto_Interes
                              (tiene_tipo  [Cultural] [Romantico])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Paris])
                              (precio  25)
                         )
                    ;;Bergen
                         ([Bryggen] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "false")
                              (puntuacion  8)
                              (pertenece_a  [Bergen])
                               (precio  0)
                         )

                         ([Floyen] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "false")
                              (puntuacion  6)
                              (pertenece_a  [Bergen])
                              (precio  0)
                         )

                         ([Ulriken] of Punto_Interes
                              (tiene_tipo  [Culinario] [Descanso])
                              (es_conocido  "false")
                              (puntuacion  9)
                              (pertenece_a  [Bergen])
                              (precio  0)
                         )
                    ;;Dinant
                         ([Parque_Furfooz] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Dinant])
                              (precio  0)
                         )

                         ([Castillo_Veves] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Dinant])
                              (precio  0)
                         )
                         ([Dinant_Citadel] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  8)
                              (pertenece_a  [Dinant])
                              (precio  10)
                         )
                    ;;Berlin
                         ([Holocaust-Mahnmal] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Berlin])
                              (precio  0)
                         )

                         ([Puerta_de_Brandenburg] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Berlin])
                              (precio  0)
                         )

                         ([Reichstag_Building] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Berlin])
                              (precio  0)
                         )
               ;;America
                    ;;Savannah
                         ([Bonaventure_Cemetery] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Savannah])
                              (precio  0)
                         )

                         ([Forsyth_Park] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "true")
                              (puntuacion  10)
                              (pertenece_a  [Savannah])
                              (precio  0)
                         )

                         ([Wormsloe_Historic_Site] of Punto_Interes
                              (tiene_tipo  [Cultural] [Descanso])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Savannah])
                              (precio  0)
                         )
                    
                    ;;Toronto
                         ([CN_tower] of Punto_Interes
                              (tiene_tipo  [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Toronto])
                              (precio  28)
                         )

                         ([Hockey_Hall_of_Fame] of Punto_Interes
                              (tiene_tipo  [Diversion])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Toronto])
                              (precio  23)
                         )

                         ([Toronto_City_Hall] of Punto_Interes
                              (tiene_tipo  [Diversion] [Romantico])
                              (es_conocido  "true")
                              (puntuacion  9)
                              (pertenece_a  [Toronto])
                              (precio  0)
                         )
                    ;;Chachapoyas
                         ([Museo_de_Leymebamba] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Chachapoyas])
                              (precio  3)
                         )
                         ([catarata_de_gocta] of Punto_Interes
                              (tiene_tipo  [Diversion] [Experiencias])
                              (es_conocido  "false")
                              (puntuacion  9)
                              (pertenece_a  [Chachapoyas])
                              (precio  3)
                         )
                         ([Sarcófagos_de_Karajia] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Chachapoyas])
                              (precio  1)
                         )
                    ;;New_York
                         ([Museo_y__Memorial_nacional_de_9/11] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Nueva_York])
                              (precio  28)
                         )

                         ([Central_Park] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Nueva_York])
                              (precio  0)
                         )

                         ([Empire_State] of Punto_Interes
                              (tiene_tipo  [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Nueva_York])
                              (precio  45)
                         )

                         ([Estatua_Libertad] of Punto_Interes
                              (tiene_tipo  [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Nueva_York])
                              (precio  38)
                         )

                         ([Museo_Metropolitano_de_Arte] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Nueva_York])
                              (precio  37)
                         )
                    ;;Buenos_Aires
                         ([Puerto_Madero] of Punto_Interes
                              (tiene_tipo  [Culinario] [Descanso] [Diversion])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Buenos_Aires])
                              (precio  0)
                         )

                         ([Recoleta] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  4)
                              (pertenece_a  [Buenos_Aires])
                              (precio  0)
                         )

                         ([Usina_del_Arte] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  8)
                              (pertenece_a  [Buenos_Aires])
                              (precio  0)
                         )

                         ([Cemiterio_de_la_Recoleta] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Buenos_Aires])
                              (precio  0)
                         )
               ;;Asia
                    ;;Tokio
                         ([Aguas_termales_Tokio] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "false")
                              (puntuacion  9)
                              (pertenece_a  [Tokio])
                              (precio  60)
                         )

                         ([Akihabara] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural] [Diversion] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  9)
                              (pertenece_a  [Tokio])
                              (precio  0)
                         )

                         ([Mercado_de_pescado_de_Toyosu] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Tokio])
                              (precio  0)
                         )

                         ([Templo_Sensoji] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Tokio])
                              (precio  15)
                         )

                         ([Shibuya] of Punto_Interes
                              (tiene_tipo  [Diversion] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Tokio])
                              (precio  0)
                         )

                         ([Torre_de_Tokio] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Tokio])
                              (precio  0)
                         )
                    ;;Bangkok
                         ([Barrios_Rojos] of Punto_Interes
                              (tiene_tipo  [Diversion] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Bangkok])
                              (precio  0)
                         )

                         ([Canales_de_Bangkok] of Punto_Interes
                              (tiene_tipo  [Experiencias])
                              (es_conocido  "false")
                              (puntuacion  6)
                              (pertenece_a  [Bangkok])
                              (precio  0)
                         )

                         ([Chinatown] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Bangkok])
                              (precio  0)
                         )

                         ([Khao_San] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  6)
                              (pertenece_a  [Bangkok])
                              (precio  0)
                         )

                         ([Rooftop_bars] of Punto_Interes
                              (tiene_tipo  [Culinario] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  4)
                              (pertenece_a  [Bangkok])
                              (precio  10)
                         )

                         ([Wat_Arun] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  9)
                              (pertenece_a  [Bangkok])
                              (precio  20)
                         )

                         ([Wat_Pho] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Bangkok])
                              (precio  15)
                         )
                    ;;Incheon
                         ([Aguas_termales_Ganghwado] of Punto_Interes
                              (tiene_tipo  [Descanso])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Incheon])
                              (precio  40)
                         )

                         ([Jeondeungsa_Temple] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Incheon])
                              (precio  15)
                         )

                         ([Sinpo_International_Market] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural])
                              (es_conocido  "false")
                              (puntuacion  3)
                              (pertenece_a  [Incheon])
                              (precio  0)
                         )

                         ([Songdo_Central_Park] of Punto_Interes
                              (tiene_tipo  [Descanso] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Incheon])
                              (precio  0)
                         )

                         ([Songwol-don_Fairytale_Village] of Punto_Interes
                              (tiene_tipo  [Diversion] [Experiencias])
                              (es_conocido  "false")
                              (puntuacion  8)
                              (pertenece_a  [Incheon])
                              (precio  30)
                         )
                    ;;Jaipur
                         ([Bazar_y_calles_de_la_Ciudad_Rosa] of Punto_Interes
                              (tiene_tipo  [Culinario] [Cultural] [Experiencias])
                              (es_conocido  "false")
                              (puntuacion  5)
                              (pertenece_a  [Jaipur])
                              (precio  0)
                         )

                         ([Hawa_Mahal] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Jaipur])
                              (precio  15)
                         )

                         ([Lassiwala] of Punto_Interes
                              (tiene_tipo  [Culinario])
                              (es_conocido  "false")
                              (puntuacion  7)
                              (pertenece_a  [Jaipur])
                              (precio  20)
                         )
                    ;;Katmandu
                         ([Barrio_de_Thamel] of Punto_Interes
                              (tiene_tipo  [Diversion] [Experiencias])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Katmandu])
                              (precio  0)
                         )

                         ([Durbar_Square] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  8)
                              (pertenece_a  [Katmandu])
                              (precio  10)
                         )
               
                         ([Estupa_de_Boudhanath] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  6)
                              (pertenece_a  [Katmandu])
                              (precio  0)
                         )
                         
                         ([Parque_de_los_tres_budas] of Punto_Interes
                              (tiene_tipo  [Cultural])
                              (es_conocido  "true")
                              (puntuacion  7)
                              (pertenece_a  [Katmandu])
                              (precio  0)
                         )
                         
          ;;;Fin Punto_Interes

          ;;Transporte
               ;;Barco
                    ([Barcelona-Nueva_York-Barco] of Barco
                         (destino  [Nueva_York])
                         (origen  [Barcelona])
                         (precio  100)
                    )
                    ([NuevaYork-Barcelona-Barco] of Barco
                         (destino  [Barcelona])
                         (origen  [Nueva_York])
                         (precio  100)
                    )

                    ([Barcelona-Tokio-Barco] of Barco
                         (destino  [Tokio])
                         (origen  [Barcelona])
                         (precio  200)
                    )
                    ([Tokio-Barcelona-Barco] of Barco
                         (destino  [Barcelona])
                         (origen  [Tokio])
                         (precio  200)
                    )

                    ([Nueva_York-Tokio-Barco] of Barco
                         (destino  [Tokio])
                         (origen  [Nueva_York])
                         (precio  400)
                    )
                    ([Tokio-Nueva_York-Barco] of Barco
                         (destino  [Nueva_York])
                         (origen  [Tokio])
                         (precio  400)
                    )

                    ([Nueva_York-Incheon-Barco] of Barco
                         (destino  [Incheon])
                         (origen  [Nueva_York])
                         (precio  400)
                    )
                    ([Incheon-Nueva_York-Barco] of Barco
                         (destino  [Nueva_York])
                         (origen  [Incheon])
                         (precio  400)
                    )

                    ([Barcelona-Incheon-Barco] of Barco
                         (destino  [Incheon])
                         (origen  [Barcelona])
                         (precio  300)
                    )
                    ([Incheon-Barcelona-Barco] of Barco
                         (destino  [Barcelona])
                         (origen  [Incheon])
                         (precio  300)
                    )

                    ([Incheon-Tokio-Barco] of Barco
                         (destino  [Tokio])
                         (origen  [Incheon])
                         (precio  70)
                    )
                    ([Tokio-Incheon-Barco] of Barco
                         (destino  [Incheon])
                         (origen  [Tokio])
                         (precio  70)
                    )
               ;;Bus
                    ;;Europa
                         ([Barcelona-Paris-Bus] of Bus
                              (destino  [Paris])
                              (origen  [Barcelona])
                              (precio  30)
                         )
                         ([Barcelona-Bergen-Bus] of Bus
                              (destino  [Bergen])
                              (origen  [Barcelona])
                              (precio  40)
                         )
                         ([Barcelona-Berlin-Bus] of Bus
                              (destino  [Berlin])
                              (origen  [Barcelona])
                              (precio  60)
                         )
                         ([Barcelona-Dinant-Bus] of Bus     
                              (destino  [Dinant])
                              (origen  [Barcelona])
                              (precio  50)
                         )

                         ([Paris-Barcelona-Bus] of Bus
                              (destino  [Barcelona])
                              (origen  [Paris])
                              (precio  30)
                         )
                         ([Paris-Berlin-Bus] of Bus
                              (destino  [Berlin])
                              (origen  [Paris])
                              (precio  50)
                         )
                         ([Paris-Bergen-Bus] of Bus
                              (destino  [Bergen])
                              (origen  [Paris])
                              (precio  70)
                         )
                         ([Paris-Dinant-Bus] of Bus
                              (destino  [Dinant])
                              (origen  [Paris])
                              (precio  90)
                         )


                         ([Bergen-Barcelona-Bus] of Bus
                              (destino  [Barcelona])
                              (origen  [Bergen])
                              (precio  40)
                         )
                         ([Bergen-Paris-Bus] of Bus
                              (destino  [Paris])
                              (origen  [Bergen])
                              (precio  70)
                         )
                         ([Bergen-Berlin-Bus] of Bus
                              (destino  [Berlin])
                              (origen  [Bergen])
                              (precio  60)
                         )
                         ([Bergen-Dinant-Bus] of Bus
                              (destino  [Dinant])
                              (origen  [Bergen])
                              (precio  40)
                         )

                         
                         ([Berlin-Barcelona-Bus] of Bus
                              (destino  [Barcelona])
                              (origen  [Berlin])
                              (precio  60)
                         )
                         ([Berlin-Paris-Bus] of Bus
                              (destino  [Paris])
                              (origen  [Berlin])
                              (precio  50)
                         )
                         ([Berlin-Bergen-Bus] of Bus
                              (destino  [Bergen])
                              (origen  [Berlin])
                              (precio  60)
                         )
                         ([Berlin-Dinant-Bus] of Bus
                              (destino  [Dinant])
                              (origen  [Berlin])
                              (precio  50)
                         )

                         
                         ([Dinant-Barcelona-Bus] of Bus
                              (destino  [Barcelona])
                              (origen  [Dinant])
                              (precio  50)
                         )
                         ([Dinant-Bergen-Bus] of Bus
                              (destino  [Bergen])
                              (origen  [Dinant])
                              (precio  40)
                         )
                         ([Dinant-Berlin-Bus] of Bus
                              (destino  [Berlin])
                              (origen  [Dinant])
                              (precio  60)
                         )
                         ([Dinant-Paris-Bus] of Bus
                              (destino  [Paris])
                              (origen  [Dinant])
                              (precio  30)
                         )
                    ;;America
                         ([Nueva_York-Savannah-Bus] of Bus
                              (destino  [Savannah])
                              (origen  [Nueva_York])
                              (precio  65)
                         )
                         ([Savannah-Nueva_York-Bus] of Bus
                              (destino  [Nueva_York])
                              (origen  [Savannah])
                              (precio  65)
                         )
                         ([Nueva_York-Toronto-Bus] of Bus
                              (destino  [Toronto])
                              (origen  [Nueva_York])
                              (precio  30)
                         )
                         ([Toronto-Nueva_York-Bus] of Bus
                              (destino  [Nueva_York])
                              (origen  [Toronto])
                              (precio  30)
                         )
                         ([Savannah-Toronto-Bus] of Bus
                              (destino  [Toronto])
                              (origen  [Savannah])
                              (precio  91)
                          )
                         ([Toronto-Savannah-Bus] of Bus
                              (destino  [Savannah])
                              (origen  [Toronto])
                              (precio  91)
                         )
                    ;;Asia

               ;;Tren
                    ;;Europa
                         ([Barcelona-Paris-Tren] of Tren
                              (destino  [Paris])
                              (origen  [Barcelona])
                              (precio  30)
                         )
                         ([Barcelona-Bergen-Tren] of Tren
                              (destino  [Bergen])
                              (origen  [Barcelona])
                              (precio  40)
                         )
                         ([Barcelona-Berlin-Tren] of Tren
                              (destino  [Berlin])
                              (origen  [Barcelona])
                              (precio  60)
                         )
                         ([Barcelona-Dinant-Tren] of Tren     
                              (destino  [Dinant])
                              (origen  [Barcelona])
                              (precio  50)
                         )

                         ([Paris-Barcelona-Tren] of Tren
                              (destino  [Barcelona])
                              (origen  [Paris])
                              (precio  30)
                         )
                         ([Paris-Berlin-Tren] of Tren
                              (destino  [Berlin])
                              (origen  [Paris])
                              (precio  50)
                         )
                         ([Paris-Bergen-Tren] of Tren
                              (destino  [Bergen])
                              (origen  [Paris])
                              (precio  70)
                         )
                         ([Paris-Dinant-Tren] of Tren
                              (destino  [Dinant])
                              (origen  [Paris])
                              (precio  90)
                         )


                         ([Bergen-Barcelona-Tren] of Tren
                              (destino  [Barcelona])
                              (origen  [Bergen])
                              (precio  40)
                         )
                         ([Bergen-Paris-Tren] of Tren
                              (destino  [Paris])
                              (origen  [Bergen])
                              (precio  70)
                         )
                         ([Bergen-Berlin-Tren] of Tren
                              (destino  [Berlin])
                              (origen  [Bergen])
                              (precio  60)
                         )
                         ([Bergen-Dinant-Tren] of Tren
                              (destino  [Dinant])
                              (origen  [Bergen])
                              (precio  40)
                         )

                         
                         ([Berlin-Barcelona-Tren] of Tren
                              (destino  [Barcelona])
                              (origen  [Berlin])
                              (precio  60)
                         )
                         ([Berlin-Paris-Tren] of Tren
                              (destino  [Paris])
                              (origen  [Berlin])
                              (precio  50)
                         )
                         ([Berlin-Bergen-Tren] of Tren
                              (destino  [Bergen])
                              (origen  [Berlin])
                              (precio  60)
                         )
                         ([Berlin-Dinant-Tren] of Tren
                              (destino  [Dinant])
                              (origen  [Berlin])
                              (precio  50)
                         )

                         
                         ([Dinant-Barcelona-Tren] of Tren
                              (destino  [Barcelona])
                              (origen  [Dinant])
                              (precio  50)
                         )
                         ([Dinant-Bergen-Tren] of Tren
                              (destino  [Bergen])
                              (origen  [Dinant])
                              (precio  40)
                         )
                         ([Dinant-Berlin-Tren] of Tren
                              (destino  [Berlin])
                              (origen  [Dinant])
                              (precio  60)
                         )
                         ([Dinant-Paris-Tren] of Tren
                              (destino  [Paris])
                              (origen  [Dinant])
                              (precio  30)
                         )

                    ;;America
                         ([Nueva_York-Savannah-Tren] of Tren
                              (destino  [Savannah])
                              (origen  [Nueva_York])
                              (precio  80)
                         )
                         ([Savannah-Nueva_York-Tren] of Tren
                              (destino  [Nueva_York])
                              (origen  [Savannah])
                              (precio  80)
                         )

                         ([Nueva_York-Toronto-Tren] of Tren
                              (destino  [Toronto])
                              (origen  [Nueva_York])
                              (precio  110)
                         )
                         ([Toronto-Nueva_York-Tren] of Tren
                              (destino  [Nueva_York])
                              (origen  [Toronto])
                              (precio  110)
                         )

                         ([Savannah-Toronto-Tren] of Tren
                              (destino  [Toronto])
                              (origen  [Savannah])
                              (precio  193)
                         )
                         ([Toronto-Savannah-Tren] of Tren
                              (destino  [Savannah])
                              (origen  [Toronto])
                              (precio  193)
                         )
                    ;;Asia
                         ([Bangkok-Jaipur-Tren] of Tren
                              (destino  [Jaipur])
                              (origen  [Bangkok])
                              (precio  193)
                         )
                         ([Jaipur-Bangkok-Tren] of Tren
                              (destino  [Bangkok])
                              (origen  [Jaipur])
                              (precio  193)
                         )

                         ([Bangkok-Katmandu-Tren] of Tren
                              (destino  [Katmandu])
                              (origen  [Bangkok])
                              (precio  203)
                         )
                         ([Katmandu-Bangkok-Tren] of Tren
                              (destino  [Bangkok])
                              (origen  [Katmandu])
                              (precio  203)
                         )

                         ([Jaipur-Katmandu-Tren] of Tren
                              (destino  [Katmandu])
                              (origen  [Jaipur])
                              (precio  103)
                         )
                         ([Katmandu-Jaipur-Tren] of Tren
                              (destino  [Jaipur])
                              (origen  [Katmandu])
                              (precio  103)
                         )
               ;;Avion
                    ;;EUROPA-EUROPA
                         ([Barcelona-Bergen] of Avion
                              (destino  [Bergen])
                              (origen  [Barcelona])
                              (precio  103)
                         )

                         ([Barcelona-Berlin] of Avion
                              (destino  [Berlin])
                              (origen  [Barcelona])
                              (precio  80)
                         )

                         ([Barcelona-Dinant] of Avion
                              (destino  [Dinant])
                              (origen  [Barcelona])
                              (precio  77)
                         )

                         ([Barcelona-Paris] of Avion
                              (destino  [Paris])
                              (origen  [Barcelona])
                              (precio  70)
                         )

                         ([Bergen-Barcelona] of Avion
                              (destino  [Barcelona])
                              (origen  [Bergen])
                              (precio  103)
                         )

                         ([Bergen-Berlin] of Avion
                              (destino  [Berlin])
                              (origen  [Bergen])
                              (precio  250)
                         )

                         ([Bergen-Dinant] of Avion
                              (destino  [Dinant])
                              (origen  [Bergen])
                              (precio  170)
                         )

                         ([Bergen-Paris] of Avion
                              (destino  [Paris])
                              (origen  [Bergen])
                              (precio  180)
                         )

                         ([Berlin-Barcelona] of Avion
                              (origen  [Berlin])
                              (destino [Barcelona])
                              (precio  200)
                         ) 

                         ([Berlin-Bergen] of Avion
                              (destino  [Bergen])
                              (origen  [Berlin])
                              (precio  250)
                         )

                         ([Berlin-Dinant] of Avion
                              (destino  [Dinant])
                              (origen  [Berlin])
                              (precio  160)
                         )

                         ([Berlin-Paris] of Avion
                              (destino  [Paris])
                              (origen  [Berlin])
                              (precio  188)
                         )

                         ([Dinant-Barcelona] of Avion
                              (destino  [Barcelona])
                              (origen  [Dinant])
                              (precio  77)
                         )

                         ([Dinant-Bergen] of Avion
                              (destino  [Bergen])
                              (origen  [Dinant])
                              (precio  170)
                         )

                         ([Dinant-Berlin] of Avion
                              (destino  [Berlin])
                              (origen  [Dinant])
                              (precio  130)
                         )

                         ([Dinant-Paris] of Avion
                              (destino  [Paris])
                              (origen  [Dinant])
                              (precio  200)
                         )

                         ([Paris-Barcelona] of Avion
                              (destino  [Barcelona])
                              (origen  [Paris])
                              (precio  70)
                         )

                         ([Paris-Bergen] of Avion
                              (destino  [Bergen])
                              (origen  [Paris])
                              (precio  180)
                         )

                         ([Paris-Berlin] of Avion
                              (destino  [Berlin])
                              (origen  [Paris])
                              (precio  200)
                         )

                         ([Paris-Dinant] of Avion
                              (destino  [Dinant])
                              (origen  [Paris])
                              (precio  300)
                         )

                    ;;AMERICA-AMERICA
                         ([Buenos_Aires-Chachapoyas] of Avion
                              (destino  [Chachapoyas])
                              (origen  [Buenos_Aires])
                              (precio  197)
                         )

                         ([Buenos_Aires-Nueva_York] of Avion
                              (destino  [Nueva_York])
                              (origen  [Buenos_Aires])
                              (precio  399)
                         )

                         ([Buenos_Aires-Toronto] of Avion
                              (destino  [Toronto])
                              (origen  [Buenos_Aires])
                              (precio  394)
                         )

                         ([Buenos_Aires-Savannah] of Avion
                              (destino  [Savannah])
                              (origen  [Buenos_Aires])
                              (precio  397)
                         )

                         ([Chachapoyas-BuenosAires] of Avion
                              (destino  [Buenos_Aires])
                              (origen  [Chachapoyas])
                              (precio  197)
                         )

                         ([Chachapoyas-Nueva_York] of Avion
                              (destino  [Nueva_York])
                              (origen  [Chachapoyas])
                              (precio  304)
                         )

                         ([Chachapoyas-Savannah] of Avion
                              (destino  [Savannah])
                              (origen  [Chachapoyas])
                              (precio  397)
                         )

                         ([Chachapoyas-Toronto] of Avion
                              (destino  [Toronto])
                              (origen  [Chachapoyas])
                              (precio  309)
                         )

                         ([Nueva_York-BuenosAires] of Avion
                              (destino  [Buenos_Aires])
                              (origen  [Nueva_York])
                              (precio  399)
                         )

                         ([Nueva_York-Chachapoyas] of Avion
                              (destino  [Chachapoyas])
                              (origen  [Nueva_York])
                              (precio  304)
                         )

                         ([Nueva_York-Savannah] of Avion
                              (destino  [Savannah])
                              (origen  [Nueva_York])
                              (precio  258)
                         )

                         ([Nueva_York-Toronto] of Avion
                              (destino  [Toronto])
                              (origen  [Nueva_York])
                              (precio  93)
                         )

                         ([Savannah-Buenos_Aires] of Avion
                              (destino  [Buenos_Aires])
                              (origen  [Savannah])
                              (precio  397)
                         )

                         ([Savannah-Chachapoyas] of Avion
                              (destino  [Chachapoyas])
                              (origen  [Savannah])
                              (precio  397)
                         )

                         ([Savannah-Nueva_York] of Avion
                              (destino  [Nueva_York])
                              (origen  [Savannah])
                              (precio  258)
                         )

                         ([Savannah-Toronto] of Avion
                              (destino  [Toronto])
                              (origen  [Savannah])
                              (precio  156)
                         )

                         ([Toronto-BuenosAires] of Avion
                              (destino  [Nueva_York])
                              (origen  [Toronto])
                              (precio  394)
                         )

                         ([Toronto-Chachapoyas] of Avion
                              (destino  [Chachapoyas])
                              (origen  [Toronto])
                              (precio  309)
                         )

                         ([Toronto-Nueva_York] of Avion
                              (destino  [Nueva_York])
                              (origen  [Toronto])
                              (precio  93)
                         ) 

                         ([Toronto-Savannah] of Avion
                              (destino  [Savannah])
                              (origen  [Toronto])
                              (precio  156)
                         )

                    ;;ASIA-ASIA
                         ([Bangkok-Incheon] of Avion
                              (destino  [Incheon])
                              (origen  [Bangkok])
                              (precio  400)
                         )

                         ([Bangkok-Jaipur] of Avion
                              (destino  [Jaipur])
                              (origen  [Bangkok])
                              (precio  220)
                         )

                         ([Bangkok-Katmandu] of Avion
                              (destino  [Katmandu])
                              (origen  [Bangkok])
                              (precio  420)
                         )

                         ([Bangkok-Tokio] of Avion
                              (destino  [Tokio])
                              (origen  [Bangkok])
                              (precio  250)
                         )

                         ([Incheon-Bangkok] of Avion
                              (destino  [Bangkok])
                              (origen  [Incheon])
                              (precio  400)
                         )

                         ([Incheon-Jaipur] of Avion
                              (destino  [Jaipur])
                              (origen  [Incheon])
                              (precio  460)
                         )

                         ([Incheon-Katmandu] of Avion
                              (destino  [Katmandu])
                              (origen  [Incheon])
                              (precio  485)
                         )

                         ([Incheon-Tokio] of Avion
                              (destino  [Tokio])
                              (origen  [Incheon])
                              (precio  120)
                         )

                         ([Jaipur-Bangkok] of Avion
                              (destino  [Bangkok])
                              (origen  [Jaipur])
                              (precio  200)
                         )

                         ([Jaipur-Incheon] of Avion
                              (destino  [Incheon])
                              (origen  [Jaipur])
                              (precio  450)
                         )

                         ([Jaipur-Katmandu] of Avion
                              (destino  [Katmandu])
                              (origen  [Jaipur])
                              (precio  180)
                         )

                         ([Jaipur-Tokio] of Avion
                              (destino  [Tokio])
                              (origen  [Jaipur])
                              (precio  460)
                         )

                         ([Katmandu-Bangkok] of Avion
                              (destino  [Bangkok])
                              (origen  [Katmandu])
                              (precio  275)
                         )

                         ([Katmandu-Incheon] of Avion
                              (origen  [Katmandu])
                              (destino [Incheon])
                              (precio  450)
                         )

                         ([Katmandu-Jaipur] of Avion
                              (destino  [Jaipur])
                              (origen  [Katmandu])
                              (precio  160)
                         )

                         ([Katmandu-Tokio] of Avion
                              (destino  [Tokio])
                              (origen  [Katmandu])
                              (precio  460)
                         )

                         ([Tokio-Bangkok] of Avion
                              (destino  [Bangkok])
                              (origen  [Tokio])
                              (precio  350)
                         )

                         ([Tokio-Incheon] of Avion
                              (destino  [Incheon])
                              (origen  [Tokio])
                              (precio  120)
                         )

                         ([Tokio-Jaipur] of Avion
                              (destino  [Jaipur])
                              (origen  [Tokio])
                              (precio  340)
                         )

                         ([Tokio-Katmandu] of Avion
                              (destino  [Jaipur])
                              (origen  [Tokio])
                              (precio  320)
                         )

                    ;;;EUROPA-AMERICA
                         ;;Barcelona
                              ([Barcelona-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Barcelona])
                                   (precio  400)
                              )
                              ([Toronto-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Toronto])
                                   (precio  400)
                              )

                              ([Barcelona-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Barcelona])
                                   (precio  300)
                              )
                              ([Chachapoyas-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Chachapoyas])
                                   (precio  300)
                              )

                              ([Barcelona-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Barcelona])
                                   (precio  350)
                              )
                              ([Nueva_York-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Nueva_York])
                                   (precio  350)
                              )

                              ([Barcelona-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Barcelona])
                                   (precio  300)
                              )
                              ([Savannah-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Savannah])
                                   (precio  300)
                              )
                              
                              ([Barcelona-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Barcelona])
                                   (precio  450)
                              )
                              ([Buenos_Aires-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Buenos_Aires])
                                   (precio  450)
                              )

                         ;;Paris
                              ([Paris-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Paris])
                                   (precio  300)
                              )
                              ([Toronto-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Toronto])
                                   (precio  300)
                              )

                              ([Paris-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Paris])
                                   (precio  350)
                              )
                              ([Chachapoyas-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Chachapoyas])
                                   (precio  350)
                              )

                              ([Paris-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Paris])
                                   (precio  420)
                              )
                              ([Nueva_York-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Nueva_York])
                                   (precio  420)
                              )

                              ([Paris-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Paris])
                                   (precio  350)
                              )
                              ([Savannah-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Savannah])
                                   (precio  350)
                              )
                              
                              ([Paris-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Paris])
                                   (precio  320)
                              )
                              ([Buenos_Aires-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Buenos_Aires])
                                   (precio  320)
                              )

                         ;;Berlin
                              ([Berlin-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Berlin])
                                   (precio  285)
                              )
                              ([Toronto-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Toronto])
                                   (precio  285)
                              )

                              ([Berlin-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Berlin])
                                   (precio  420)
                              )
                              ([Chachapoyas-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Chachapoyas])
                                   (precio  420)
                              )

                              ([Berlin-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Berlin])
                                   (precio  373)
                              )
                              ([Nueva_York-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Nueva_York])
                                   (precio  373)
                              )

                              ([Berlin-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Berlin])
                                   (precio  508)
                              )
                              ([Savannah-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Savannah])
                                   (precio  508)
                              )
                              
                              ([Berlin-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Berlin])
                                   (precio  414)
                              )
                              ([Buenos_Aires-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Buenos_Aires])
                                   (precio  414)
                              )

                         ;;Bergen
                              ([Bergen-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Bergen])
                                   (precio  400)
                              )
                              ([Toronto-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Toronto])
                                   (precio  400)
                              )

                              ([Bergen-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Bergen])
                                   (precio  484)
                              )
                              ([Chachapoyas-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Chachapoyas])
                                   (precio  484)
                              )

                              ([Bergen-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Bergen])
                                   (precio  330)
                              )
                              ([Nueva_York-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Nueva_York])
                                   (precio  330)
                              )

                              ([Bergen-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Bergen])
                                   (precio  570)
                              )
                              ([Savannah-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Savannah])
                                   (precio  570)
                              )
                              
                              ([Bergen-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Bergen])
                                   (precio  546)
                              )
                              ([Buenos_Aires-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Buenos_Aires])
                                   (precio  546)
                              )

                         ;;Dinant
                              ([Dinant-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Dinant])
                                   (precio  330)
                              )
                              ([Toronto-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Toronto])
                                   (precio  330)
                              )

                              ([Dinant-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Dinant])
                                   (precio  450)
                              )
                              ([Chachapoyas-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Chachapoyas])
                                   (precio  450)
                              )

                              ([Dinant-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Dinant])
                                   (precio  340)
                              )
                              ([Nueva_York-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Nueva_York])
                                   (precio  340)
                              )

                              ([Dinant-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Dinant])
                                   (precio  431)
                              )
                              ([Savannah-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Savannah])
                                   (precio  431)
                              )
                              
                              ([Dinant-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Dinant])
                                   (precio  523)
                              )
                              ([Buenos_Aires-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Buenos_Aires])
                                   (precio  523)
                              )

                    ;;;EUROPA-ASIA
                         ;;Barcelona
                              ([Barcelona-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Barcelona])
                                   (precio  541)
                              )
                              ([Tokio-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Tokio])
                                   (precio  541)
                              )

                              ([Barcelona-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Barcelona])
                                   (precio  469)
                              )
                              ([Incheon-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Incheon])
                                   (precio  469)
                              )

                              ([Barcelona-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Barcelona])
                                   (precio  370)
                              )
                              ([Katmandu-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Katmandu])
                                   (precio  370)
                              )

                              ([Barcelona-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Barcelona])
                                   (precio  554)
                              )
                              ([Jaipur-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Jaipur])
                                   (precio  554)
                              )
                              
                              ([Barcelona-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Barcelona])
                                   (precio  306)
                              )
                              ([Bangkok-Barcelona] of Avion
                                   (destino  [Barcelona])
                                   (origen  [Bangkok])
                                   (precio  306)
                              )

                         ;;Paris
                              ([Paris-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Paris])
                                   (precio  442)
                              )
                              ([Tokio-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Tokio])
                                   (precio  442)
                              )

                              ([Paris-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Paris])
                                   (precio  373)
                              )
                              ([Incheon-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Incheon])
                                   (precio  373)
                              )

                              ([Paris-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Paris])
                                   (precio  397)
                              )
                              ([Katmandu-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Katmandu])
                                   (precio  397)
                              )

                              ([Paris-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Paris])
                                   (precio  251)
                              )
                              ([Jaipur-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Jaipur])
                                   (precio  251)
                              )
                              
                              ([Paris-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Paris])
                                   (precio  325)
                              )
                              ([Bangkok-Paris] of Avion
                                   (destino  [Paris])
                                   (origen  [Bangkok])
                                   (precio  325)
                              )

                         ;;Berlin
                              ([Berlin-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Berlin])
                                   (precio  483)
                              )
                              ([Tokio-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Tokio])
                                   (precio  483)
                              )

                              ([Berlin-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Berlin])
                                   (precio  424)
                              )
                              ([Incheon-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Incheon])
                                   (precio  424)
                              )

                              ([Berlin-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Berlin])
                                   (precio  469)
                              )
                              ([Katmandu-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Katmandu])
                                   (precio  469)
                              )

                              ([Berlin-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Berlin])
                                   (precio  490)
                              )
                              ([Jaipur-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Jaipur])
                                   (precio  490)
                              )
                              
                              ([Berlin-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Berlin])
                                   (precio  262)
                              )
                              ([Bangkok-Berlin] of Avion
                                   (destino  [Berlin])
                                   (origen  [Bangkok])
                                   (precio  262)
                              )

                         ;;Bergen
                              ([Bergen-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Bergen])
                                   (precio  520)
                              )
                              ([Tokio-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Tokio])
                                   (precio  520)
                              )

                              ([Bergen-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Bergen])
                                   (precio  514)
                              )
                              ([Incheon-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Incheon])
                                   (precio  514)
                              )

                              ([Bergen-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Bergen])
                                   (precio  600)
                              )
                              ([Katmandu-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Katmandu])
                                   (precio  600)
                              )

                              ([Bergen-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Bergen])
                                   (precio  526)
                              )
                              ([Jaipur-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Jaipur])
                                   (precio  526)
                              )
                              
                              ([Bergen-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Bergen])
                                   (precio  350)
                              )
                              ([Bangkok-Bergen] of Avion
                                   (destino  [Bergen])
                                   (origen  [Bangkok])
                                   (precio  350)
                              )

                         ;;Dinant
                              ([Dinant-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Dinant])
                                   (precio  542)
                              )
                              ([Tokio-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Tokio])
                                   (precio  542)
                              )

                              ([Dinant-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Dinant])
                                   (precio  407)
                              )
                              ([Incheon-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Incheon])
                                   (precio  407)
                              )

                              ([Dinant-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Dinant])
                                   (precio  487)
                              )
                              ([Katmandu-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Katmandu])
                                   (precio  487)
                              )

                              ([Dinant-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Dinant])
                                   (precio  453)
                              )
                              ([Jaipur-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Jaipur])
                                   (precio  453)
                              )
                              
                              ([Dinant-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Dinant])
                                   (precio  340)
                              )
                              ([Bangkok-Dinant] of Avion
                                   (destino  [Dinant])
                                   (origen  [Bangkok])
                                   (precio  340)
                              )


                    ;;;ASIA-AMERICA
                         ;;Tokio
                              ([Tokio-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Tokio])
                                   (precio  645)
                              )
                              ([Toronto-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Toronto])
                                   (precio  645)
                              )

                              ([Tokio-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Tokio])
                                   (precio  700)
                              )
                              ([Chachapoyas-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Chachapoyas])
                                   (precio  700)
                              )

                              ([Tokio-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Tokio])
                                   (precio  544)
                              )
                              ([Nueva_York-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Nueva_York])
                                   (precio  544)
                              )

                              ([Tokio-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Tokio])
                                   (precio  725)
                              )
                              ([Savannah-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Savannah])
                                   (precio  725)
                              )
                              
                              ([Tokio-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Tokio])
                                   (precio  649)
                              )
                              ([Buenos_Aires-Tokio] of Avion
                                   (destino  [Tokio])
                                   (origen  [Buenos_Aires])
                                   (precio  649)
                              )

                         ;;Incheon
                              ([Incheon-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Incheon])
                                   (precio  489)
                              )
                              ([Toronto-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Toronto])
                                   (precio  489)
                              )

                              ([Incheon-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Incheon])
                                   (precio  583)
                              )
                              ([Chachapoyas-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Chachapoyas])
                                   (precio  583)
                              )

                              ([Incheon-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Incheon])
                                   (precio  400)
                              )
                              ([Nueva_York-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Nueva_York])
                                   (precio  400)
                              )

                              ([Incheon-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Incheon])
                                   (precio  488)
                              )
                              ([Savannah-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Savannah])
                                   (precio  488)
                              )
                              
                              ([Incheon-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Incheon])
                                   (precio  585)
                              )
                              ([Buenos_Aires-Incheon] of Avion
                                   (destino  [Incheon])
                                   (origen  [Buenos_Aires])
                                   (precio  585)
                              )

                         ;;Jaipur
                              ([Jaipur-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Jaipur])
                                   (precio  800)
                              )
                              ([Toronto-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Toronto])
                                   (precio  800)
                              )

                              ([Jaipur-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Jaipur])
                                   (precio  1200)
                              )
                              ([Chachapoyas-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Chachapoyas])
                                   (precio  1200)
                              )

                              ([Jaipur-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Jaipur])
                                   (precio  536)
                              )
                              ([Nueva_York-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Nueva_York])
                                   (precio  536)
                              )

                              ([Jaipur-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Jaipur])
                                   (precio  1000)
                              )
                              ([Savannah-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Savannah])
                                   (precio  1000)
                              )
                              
                              ([Jaipur-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Jaipur])
                                   (precio  870)
                              )
                              ([Buenos_Aires-Jaipur] of Avion
                                   (destino  [Jaipur])
                                   (origen  [Buenos_Aires])
                                   (precio  870)
                              )

                         ;;Bangkok
                              ([Bangkok-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Bangkok])
                                   (precio  439)
                              )
                              ([Toronto-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Toronto])
                                   (precio  439)
                              )

                              ([Bangkok-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Bangkok])
                                   (precio  800)
                              )
                              ([Chachapoyas-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Chachapoyas])
                                   (precio  800)
                              )

                              ([Bangkok-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Bangkok])
                                   (precio  400)
                              )
                              ([Nueva_York-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Nueva_York])
                                   (precio  400)
                              )

                              ([Bangkok-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Bangkok])
                                   (precio  653)
                              )
                              ([Savannah-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Savannah])
                                   (precio  653)
                              )
                              
                              ([Bangkok-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Bangkok])
                                   (precio  849)
                              )
                              ([Buenos_Aires-Bangkok] of Avion
                                   (destino  [Bangkok])
                                   (origen  [Buenos_Aires])
                                   (precio  849)
                              )

                         ;;Katmandu
                              ([Katmandu-Toronto] of Avion
                                   (destino  [Toronto])
                                   (origen  [Katmandu])
                                   (precio  898)
                              )
                              ([Toronto-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Toronto])
                                   (precio  898)
                              )

                              ([Katmandu-Chachapoyas] of Avion
                                   (destino  [Chachapoyas])
                                   (origen  [Katmandu])
                                   (precio  1020)
                              )
                              ([Chachapoyas-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Chachapoyas])
                                   (precio  1020)
                              )

                              ([Katmandu-Nueva_York] of Avion
                                   (destino  [Nueva_York])
                                   (origen  [Katmandu])
                                   (precio  635)
                              )
                              ([Nueva_York-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Nueva_York])
                                   (precio  635)
                              )

                              ([Katmandu-Savannah] of Avion
                                   (destino  [Savannah])
                                   (origen  [Katmandu])
                                   (precio  800)
                              )
                              ([Savannah-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Savannah])
                                   (precio  800)
                              )
                              
                              ([Katmandu-Buenos_Aires] of Avion
                                   (destino  [Buenos_Aires])
                                   (origen  [Katmandu])
                                   (precio  1000)
                              )
                              ([Buenos_Aires-Katmandu] of Avion
                                   (destino  [Katmandu])
                                   (origen  [Buenos_Aires])
                                   (precio  1000)
                              )
          ;;;Fin Transporte
     
     )
;;FIN INSTANCIAS ------------------------------------


;;;;;;;;;;;;;;;;;;;CODIGO DE LAS REGLAS;;;;;;;;;;;;;;

     ;;;;;;;;;;;;;MODULO MAIN;;;;;;;;;;;;;;;;;;;;;;;
          (defmodule MAIN (export ?ALL))

          ;;VARIABLES GLOBALES--------------
               (defglobal ?*presupuesto* = 0)
               (defglobal ?*presupuestoCiudad* = 0)
               (defglobal ?*continente* = 0)
               (defglobal ?*diasminviaje* = 0)
               (defglobal ?*diasmaxviaje* = 0)
               (defglobal ?*diasviaje* = 0)
               (defglobal ?*ciudades* = 0)
               (defglobal ?*avion* = no)
               (defglobal ?*tren* = no)
               (defglobal ?*bus* = no)
               (defglobal ?*barco* = no)
               (defglobal ?*origen* = "Paris")
               (defglobal ?*sacrificarduracion* = no)
               (defglobal ?*lujo* = no)
               (defglobal ?*evento* = x)
               (defglobal ?*diversion* = no)
               (defglobal ?*cultura* = no)
               (defglobal ?*relajacion* = no)
               (defglobal ?*gastronomia* = no)
               (defglobal ?*experiencias* = no)
               (defglobal ?*romance* = no)
               (defglobal ?*desconocido* = no)
               (defglobal ?*hijos* = no)
               (defglobal ?*amigos* = no)
               (defglobal ?*familia* = no)
               (defglobal ?*pareja* = no)
               (defglobal ?*solo* = no)

               ;;VARIABLES PARA GUARDAR LA SOLUCION
               (defglobal ?*solucion* = (create$))
               (defglobal ?*vueloVuelta* = si)
               (defglobal ?*precioFinal* = 0)

               ;;VARIABLES PARA GUARDAR LOS PROBLEMAS
               (defglobal ?*presupuestoInsuficiente* = no)
               (defglobal ?*transporteImposible* = no)
               (defglobal ?*calidadInsuficienteContinente* = no)
               (defglobal ?*noTransporteVuelta* = no)
          ;;FIN VARIABLES GLOBALES--------------------

          ;;FUNCIONES UTILES ----------------------------
               ;;;Hace una pregunta con respuesta una ciudad que exista
               (deffunction ask-origen (?question)
               (printout t ?question crlf)
               (bind ?answer (read))
               (bind ?ciudades (find-all-instances ((?inst Ciudad)) (eq ?inst:nombre (str-cat ?answer))))
               (while (< (length$ ?ciudades) 1) do
                    (printout t ?question crlf)
                    (bind ?answer (read))
                    (bind ?ciudades (find-all-instances ((?inst Ciudad)) (eq ?inst:nombre (str-cat ?answer))))
               )
               ?answer
               )

               ;;;Hace una pregunta con unos valores concretos
               (deffunction ask-question (?question $?allowed-values)
               (printout t ?question crlf)
               (bind ?answer (read))
               (while (not (member ?answer ?allowed-values)) do
                    (printout t ?question crlf)
                    (bind ?answer (read))
               )
               ?answer
               )

               ;;; Hace una pregunta a la que hay que responder si o no
               (deffunction si-o-no-p (?question)
               (bind ?response (ask-question ?question si no s n))
               (if (or (eq ?response si) (eq ?response s))
                    then TRUE 
                    else FALSE)
               )

               ;;;Hace una pregunta a la que solo se puede responder con numeros en un rango concreto
               (deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
               (format t "%s [%d, %d] %n" ?pregunta ?rangini ?rangfi)
               (bind ?respuesta (read))
               (while (not(and(> ?respuesta (- ?rangini 1))(< ?respuesta (+ ?rangfi 1)))) do
                    (format t "%s [%d, %d] %n" ?pregunta ?rangini ?rangfi)
                    (bind ?respuesta (read))
               )
               ?respuesta
               )

               ;;Escribe una solucion
               (deffunction printSolucion ()

                    (bind ?precioFinal 0)

                    (printout t "-----------SOLUCION-----------" crlf crlf)
                    (printout t "Ciudad de origen: " ?*origen* crlf crlf)
                    (bind ?i 1)
                    (progn$ (?estancia ?*solucion*)
                         ;;Ciudad donde nos hospedamos
                         (printout t "--------Estancia en: ")
                         (printout t (send ?estancia get-es_en) "--------" crlf)
                         ;;Transporte para llegar
                         (bind ?transporte (send ?estancia get-transporte))
                         (printout t  "----Transporte: " ?transporte crlf)
                         (bind ?precioTransporte (send ?estancia get-precio-transporte))
                         (bind ?precioFinal (+ ?precioFinal ?precioTransporte))
                         (printout t  "--------Precio del transporte: " ?precioTransporte crlf crlf)
                         ;;Alojamiendo donde se hospedara el cliente
                         (bind ?alojamiento (send ?estancia get-se_hospeda_en))
                         (printout t "----Alojamiento: " ?alojamiento crlf)
                         (bind ?calidadHotel (send ?alojamiento get-calidad))
                         (printout t "--------Calidad (en *): " ?calidadHotel crlf)
                         (bind ?diasHotel (/ ?*diasviaje* ?*ciudades*))
                         (bind ?precioHotel (send ?alojamiento get-precio))
                         (printout t "--------Dias de estancia: " ?diasHotel crlf)
                         (printout t "--------Precio por noche: " ?precioHotel crlf)
                         (printout t "--------Noches en el hotel: " (- ?diasHotel 1) crlf)
                         (bind ?diasHotel (/ ?*diasviaje* ?*ciudades*))
                         (bind ?precioHotel (* (- ?diasHotel 1) ?precioHotel))
                         (bind ?precioFinal (+ ?precioFinal ?precioHotel))
                         (printout t "--------Precio total hotel: " ?precioHotel crlf crlf)
                         ;;Puntos de interes
                         (printout t "----Puntos de interes: " crlf)
                         (progn$ (?puntoI (send ?estancia get-visita))
                              (printout t "--------" ?puntoI crlf)
                              (bind ?precioPunto (send ?puntoI get-precio))
                              (bind ?precioFinal (+ ?precioFinal ?precioPunto))
                              (printout t "------------Precio de visita:"  ?precioPunto crlf)
                         )
                         (printout t crlf)
                         (printout t "-----------------------------" crlf crlf)
                         (if (eq ?i (length$ ?*solucion*)) then 
                              (printout t  "Transporte vuelta: " ?*vueloVuelta* crlf)
                              (bind ?precioTransporteVuelta (send ?*vueloVuelta* get-precio))
                              (bind ?precioFinal (+ ?precioFinal ?precioTransporteVuelta))
                              (printout t  "----Precio del transporte: " ?precioTransporteVuelta crlf crlf)
                         )

                         (bind ?i (+ ?i 1))
                    )

                    ;;Imprimimos el precio total
                    (printout t "Precio Final: " ?precioFinal crlf)
                    ;;Imprimimos los dias totales
                    (bind ?diasciudad (/ ?*diasviaje* ?*ciudades*))
                    (printout t "Numero de dias: " (* (length$ ?*solucion*) ?diasciudad) crlf)
                    ;;Por cada estancia imprimimos los dias, donde te hospedas y los puntos de interes
                    (printout t "---------------------------------------------" crlf crlf)

                    ;;ANALISIS DE LA SOLUCION

                    (printout t "------------CALIDAD DE LA SOLUCION-----------" crlf)
                    (printout t crlf)
                    (printout t "Se han tenido en cuenta las siguientes preferencias" crlf)
                         (if (eq ?*diversion* si) then (printout t "--Priorizar diversion" crlf))
                         (if (eq ?*cultura* si) then (printout t "--Priorizar cultura" crlf))
                         (if (eq ?*romance* si) then (printout t "--Priorizar romance" crlf))
                         (if (eq ?*gastronomia* si) then (printout t "--Priorizar gastronomia" crlf))
                         (if (eq ?*relajacion* si) then (printout t "--Priorizar relajacion" crlf))
                         (if (eq ?*experiencias* si) then (printout t "--Priorizar experiencias" crlf))
                         (if (eq ?*desconocido* si) then (printout t "--Priorizar lugares desconocidos" crlf))
                         (if (eq ?*hijos* si) then (printout t "--Viaje con hijos" crlf))
                         (if (eq ?*amigos* si) then (printout t "--Viaje con amigos" crlf))
                         (if (eq ?*familia* si) then (printout t "--Viaje con familia" crlf))
                         (if (eq ?*solo* si) then (printout t "--Viaje en solitario" crlf))
                         (if (eq ?*pareja* si) then (printout t "--Viaje en pareja" crlf))
                         (if (not (eq ?*evento* no)) then (printout t "--Evento especial: " ?*evento* crlf))

                    (printout t crlf)
                    (printout t "Se han tenido en cuenta las siguientes restricciones" crlf)
                         (printout t "--Numero de ciudades: " ?*ciudades* crlf)
                         (printout t "--Minimo de dias: " ?*diasminviaje* crlf )
                         (printout t "--Maximo de dias: " ?*diasmaxviaje* crlf )
                         (if (eq ?*sacrificarduracion* si) then 
                              (printout t "--Se sacrifica calidad por ajustar el presupuesto" crlf)
                              (printout t "--Presupuesto: " ?*presupuesto* crlf)
                              else 
                              (printout t "--No se sacrifica calidad por ajustar el presupuesto (20% extra de presupuesto por si acaso)" crlf)
                              (printout t "--Presupuesto: " ?*presupuesto* crlf)
                         )
                         (if (eq ?*lujo* si) then (printout t "--Viaje de lujo (Calidad mayor o igual a 4*)" crlf))
                         (if (eq ?*avion* no) then (printout t "--Cliente no quiere avion" crlf))
                         (if (eq ?*bus* no) then (printout t "--Cliente no quiere autobus" crlf))
                         (if (eq ?*tren* no) then (printout t "--Cliente no quiere tren" crlf))
                         (if (eq ?*barco* no) then (printout t "--Cliente no quiere barco" crlf))
                    
                    (printout t crlf)
                    (printout t "Han habido los siguientes problemas" crlf)
                         (bind ?solucionCorta (< (length$ ?*solucion*) ?*ciudades*))
                         (bind ?continenteMal FALSE)
                         (if (> (length$ ?*solucion*) 0) then
                              (bind ?continenteMal (not (eq (str-cat ?*continente*) (send (send (nth$ 1 ?*solucion*) get-es_en) get-continente ))))
                         )
                         (if (and ?solucionCorta (eq ?*transporteImposible* si)) then (printout t "--No se han encontrado ciudades suficientes debido a las restricciones de transporte" crlf))
                         (if (and ?solucionCorta (eq ?*presupuestoInsuficiente* si)) then (printout t "--No se han encontrado ciudades suficientes debido a presupuesto bajo" crlf))
                         (if (and ?solucionCorta (eq ?*calidadInsuficienteContinente* si)) then (printout t "--No se han encontrado ciudades suficientes debido a que no habia hoteles de lujo en todas las ciudades" crlf))
                         (if (and ?solucionCorta (eq ?*noTransporteVuelta* si)) then (printout t "--No se han encontrado ciudades suficientes debido a que no habia transporte de vuelta a casa" crlf))
                         (if ?continenteMal then (printout t "--Se ha cambiado de continente porque no habia ciudades suficientes" crlf))
                         (if (and (not ?solucionCorta) (not ?continenteMal)) then (printout t "--No se han encontrado problemas" crlf))
                    (printout t "---------------------------------------------" crlf crlf)
               )

          ;;FIN FUNCIONES -------------------------

          ;;Regla que pasa el focus modulo de preguntas al usuario
          (defrule pregunta "Fa les preguntes i fa SET de les propietats adients"
          (declare (salience 10))
          =>
          (focus preguntas))
     ;;;;;;;;;;;;;FIN MODULO MAIN;;;;;;;;;;;;;;;;;;;



     ;;;;;;;;;;;;;;;;MODULO PREGUNTAS AL USUARIO;;;;;;;;;;;;;;;;;;;

          (defmodule preguntas (import MAIN ?ALL))

          ;;; PREGUNTAS --------------------------------------------
               ;;PREGUNTAS SOBRE EL ORIGEN Y DESTINO DEL VIAJE
               (defrule preguntas::preguntaOrigen "Pregunta la ciudad de origen del viaje, y comprueba que exista entre nuestras instancias"
                    (declare (salience 23))
                    =>
                    (bind ?*origen* (ask-origen "De donde eres?"))
                    (bind ?origen (find-instance ((?inst Ciudad)) (eq ?inst:nombre (str-cat ?*origen*))))
                    (bind ?origen (nth$ 1 ?origen))
                    (send ?origen put-visitado "si")
               )

               (defrule preguntas::preguntaContinente "Pregunta el continente de destino del viaje, para reducir las opciones posibles de ciudades"
                    (declare (salience 22))
                    =>
                    (bind ?continente (ask-question "Que continente te gustaria visitar? (America/Europa/Asia)" America Europa Asia))
                    (bind ?*continente* ?continente)
               )

               ;;PREGUNTAS DE DATOS DEL VIAJE
               (defrule preguntas::preguntaPresupuesto "Pregunta el presupuesto del viaje"
                    (declare (salience 21))
                    =>
                    (bind ?*presupuesto* (pregunta-numerica "Cual es tu presupuesto" 100 20000))
               )

               (defrule preguntas::preguntaSacrificar "Pregunta si sacrificar calidad"
                    (declare (salience 20))
                    =>
                    (if (si-o-no-p "Estarias dispuesto a sacrificar calidad de la solucion a cambio de ajustar el presupuesto?")
                         then 
                              (bind ?*sacrificarduracion* si)
                         else 
                              (bind ?*sacrificarduracion* no)
                              (bind ?*presupuesto* (* ?*presupuesto* 1.2))
                    )
               )
               
               (defrule preguntas::preguntaCiudades "Pregunta el numero de ciudades que se quieren visitar"
                    (declare (salience 19))
                    =>
                    (bind ?*ciudades* (pregunta-numerica "Cuantas ciudades quieres visitar?" 1 4))
               )

               (defrule preguntas::preguntaDiasMinimosViaje "Pregunta el maximo de dias que el cliente quiere viajar"
                    (declare (salience 18))
                    =>
                    (bind ?*diasminviaje* (pregunta-numerica "Cuantos dias quieres viajar como minimo?" (* ?*ciudades* 2) (* ?*ciudades* 5)))
               )

               (defrule preguntas::preguntaDiasMaximosViaje "Pregunta el minimo de dias que el cliente quiere viajar y calcula datos que necesitamos mas adelante"
                    (declare (salience 17))
                    =>
                    (bind ?*diasmaxviaje* (pregunta-numerica "Cuantos dias quieres viajar como maximo?" (* ?*ciudades* 5) (* ?*ciudades* 7)))

                    (bind ?media ( / (+ ?*diasminviaje* ?*diasmaxviaje*) 2))
                    (bind ?media (integer ?media))

                    (bind ?sumar ?media)
                    (while (not (eq (mod ?sumar ?*ciudades*) 0))
                         (bind ?sumar (+ ?sumar 1))
                    )

                    (bind ?restar ?media)
                    (while (not (eq (mod ?restar ?*ciudades*) 0))
                         (bind ?restar (- ?restar 1))
                    )

                    (bind ?difsumar (- ?sumar ?media))
                    (bind ?difrestar (- ?restar ?media))

                    (if ( < ?difsumar ?difrestar)
                         then 
                         (bind ?*diasviaje* ?sumar)
                         else 
                         (bind ?*diasviaje* ?restar)
                    )
               )

               ;;RESTRICCIONES TRANSPORTES
               (defrule preguntas::preguntaAvion "Pregunta si el cliente quiere avion"
                         (declare (salience 16))
                    =>
                    (if (si-o-no-p "Quieres viajar en avion?")
                         then (bind ?*avion* si)
                         else (bind ?*avion* no))
               )

               (defrule preguntas::preguntaTren "Pregunta si el cliente quiere tren"
                    (declare (salience 15))
                    =>
                    (if (si-o-no-p "Quieres viajar en tren?")
                         then (bind ?*tren* si)
                         else (bind ?*tren* no))
               )

               (defrule preguntas::preguntaBus "Pregunta si el cliente quiere bus"
                    (declare (salience 14))
                    =>
                    (if (si-o-no-p "Quieres viajar en bus?")
                         then (bind ?*bus* si)
                         else (bind ?*bus* no))
               )

               (defrule preguntas::preguntaBarco "Pregunta si el cliente quiere barco"
                    (declare (salience 13))
                         =>
                         (if (si-o-no-p "Quieres viajar en barco?")
                         then (bind ?*barco* si)
                         else (bind ?*barco* no))
               )

               ;;PREGUNTAS SOBRE CIUDADES, ALOJAMIENTOS Y PUNTOS DE INTERES
               (defrule preguntas::preguntaLujo "Pregunta si el cliente quiere lujo"
                    (declare (salience 12))
                         =>
                         (if (si-o-no-p "Quieres viajar de lujo?")
                         then (bind ?*lujo* si)
                         else (bind ?*lujo* no))
               )

               (defrule preguntas::preguntaDesconocido "Pregunta si el cliente quiere visitar ciudades poco conocidos"
                    (declare (salience 11))
                         =>
                         (if (si-o-no-p "Prefieres visitar sitios poco conocidos?")
                         then (bind ?*desconocido* si)
                         else (bind ?*desconocido* no))
               )

               (defrule preguntas::preguntaEvento "Pregunta si el cliente viaja por un evento especial"
               (declare (salience 10))
                         =>
                         (bind ?evento (ask-question "Viajas por un evento especial? (boda/fin-de-curso/cumpleanos/no)" no boda fin-de-curso cumpleanos))
                         (bind ?*evento* ?evento)
               )

               (defrule preguntas::preguntaDiversion "Pregunta si el cliente viaja por diversion"
               (declare (salience 9))
                    =>
                    (if (si-o-no-p "Viajas por diversion?")
                         then (bind ?*diversion* si)
                         else (bind ?*diversion* no))
               )

               (defrule preguntas::preguntaCultura "Pregunta si el cliente viaja por cultura"
                    (declare (salience 8))
                    =>
                    (if (si-o-no-p "Viajas por cultura?")
                         then (bind ?*cultura* si)
                         else (bind ?*cultura* no))
               )

               (defrule preguntas::preguntaRelajacion "Pregunta si el cliente viaja por relajacion"
                    (declare (salience 7))
                    =>
                    (if (si-o-no-p "Viajas por relajacion?")
                         then (bind ?*relajacion* si)
                         else (bind ?*relajacion* no))
               )

               (defrule preguntas::preguntaGastronomia "Pregunta si el cliente viaja por gastronomia"
                    (declare (salience 6))
                    =>
                    (if (si-o-no-p "Viajas por gastronomia?")
                         then (bind ?*gastronomia* si)
                         else (bind ?*gastronomia* no))
               )

               (defrule preguntas::preguntaExperiencias "Pregunta si el cliente viaja por experiencias"
                    (declare (salience 5))
                    =>
                    (if (si-o-no-p "Viajas por experiencias?")
                         then (bind ?*experiencias* si)
                         else (bind ?*experiencias* no))
               )

               (defrule preguntas::preguntaRomance "Pregunta si el cliente viaja por romance"
                    (declare (salience 4))
                    =>
                    (if (si-o-no-p "Viajas por romance?")
                         then (bind ?*romance* si)
                         else (bind ?*romance* no))
               )

               (defrule preguntas::preguntaSolo "Pregunta si el cliente viaja solo"
                    (declare (salience 3))
                    =>
                    (if (eq ?*evento* no) then
                         (if (si-o-no-p "Viajas solo?")
                              then (bind ?*solo* si)
                              else (bind ?*solo* no))
                    )
               )
               
               (defrule preguntas::preguntaHijos "Pregunta si el cliente viaja con hijos"
               (declare (salience 2))
               =>
               (if (and (eq ?*solo* no) (eq ?*evento* no)) then
                    (if (si-o-no-p "Viajas con hijos?")
                         then (bind ?*hijos* si)
                         else (bind ?*hijos* no))
               )
               )

               (defrule preguntas::preguntaAmigos "Pregunta si el cliente viaja con amigos"
               (declare (salience 2))
               =>
               (if (and (eq ?*solo* no) (eq ?*evento* no)) then
                    (if (si-o-no-p "Viajas con amigos?")
                         then (bind ?*amigos* si)
                         else (bind ?*amigos* no))
               )
               )

               (defrule preguntas::preguntaPareja "Pregunta si el cliente viaja con pareja"
               (declare (salience 1))
               =>
               (if (and (eq ?*solo* no) (eq ?*evento* no)) then
                    (if (si-o-no-p "Viajas con tu pareja?")
                         then (bind ?*pareja* si)
                         else (bind ?*pareja* no))
               )
               )

               (defrule preguntas::preguntaFamilia "Pregunta si el cliente viaja con familia"
                    (declare (salience 1))
                    =>
                    (if (and (eq ?*solo* no) (eq ?*evento* no)) then
                         (if (si-o-no-p "Viajas con familia?")
                              then (bind ?*familia* si)
                              else (bind ?*familia* no))
                    )
               )

          ;;;;;FIN PREGUNTAS -------------------------------

          ;;Regla que pasa al modulo de filtrado
          (defrule preguntas::filtra "Una vez Cliente/Viaje estan seteados, selecciona las instancias buenas"
          (declare (salience 0))
          =>
          (focus filtro))
     ;;;;;;;;;;;;;;;;FIN MODULO PREGUNTAS;;;;;;;;;;;;;;;;;;;;;;;;;;




     ;;;;;;;;;;;;;;;;;;;MODULO FILTRAR;;;;;;;;;;;;;;;;;;;;;;;;;;

          (defmodule filtro (import MAIN ?ALL))


          ;;;;ELIMINAMOS RESTRICCION PRESUPUESTOS
          (defrule filtro::eliminar-transportes-presupuesto "Eliminamos transportes demasiado caros"
               (declare (salience 20))
               ?transporte <- (object (is-a Transporte) (precio ?precio_v))
               =>
               (if (< ?*presupuesto* ?precio_v) then (send ?transporte delete))
          )

          (defrule filtro::eliminar-ciudades-no-continente "Eliminamos ciudades distintas del continente seleccionado"
               (declare (salience 18))
               ?ciudad <- (object (is-a Ciudad) (continente ?continente))
               =>
               (if (and (not (eq ?continente (str-cat ?*continente*))) (not (eq (send ?ciudad get-nombre) (str-cat ?*origen*)))) then 
                    (send ?ciudad put-visitado "si" )
               )
          )

          ;;;;ELIMINAMOS RESTRICCIONES TRANSPORTES
          (defrule filtro::eliminar-vuelo "Eliminamos vuelo si el usuario no quiere volar"
               (declare (salience 17))
               ?vuelo <- (object (is-a Avion))
               =>
               (if (eq ?*avion* no) then (send ?vuelo delete))
          )

          (defrule filtro::eliminar-barco "Eliminamos barco si el usuario no quiere barcos"
               (declare (salience 16))
               ?barco <- (object (is-a Barco))
               =>
               (if (eq ?*barco* no) then (send ?barco delete))
          )

          (defrule filtro::eliminar-tren "Eliminamos tren si el usuario no quiere tren"
               (declare (salience 15))
               ?tren <- (object (is-a Tren))
               =>
               (if (eq ?*tren* no) then (send ?tren delete))
          )

          (defrule filtro::eliminar-bus "Eliminamos bus si el usuario no quiere bus"
               (declare (salience 14))
               ?bus <- (object (is-a Bus))
               =>
               (if (eq ?*bus* no) then (send ?bus delete))
          )

          ;;;;;;AUMENTAMOS LAS PUNTUACIONES

          (defrule filtro::calcular_puntuaciones_ciudades "Calculamos puntuaciones de las ciudades"
               (declare (salience 13))
               ?ciudad <- (object (is-a Ciudad))
               =>
               (bind ?tipos (send ?ciudad get-tiene_tipo))
               ;(printout t "Se entra en la regla de puntuaciones ciudades" crlf)
               ;(printout t ?ciudad crlf)
               (bind ?diversionsi (eq ?*diversion* si))
               (bind ?culturasi (eq ?*cultura* si))
               (bind ?relajacionsi (eq ?*relajacion* si))
               (bind ?gastronomiasi (eq ?*gastronomia* si))
               (bind ?experienciassi (eq ?*experiencias* si))
               (bind ?romancesi (eq ?*romance* si))

               (progn$ (?tipo ?tipos)
                    ;(printout t ?tipo crlf)
                    (bind ?puntuacion (send ?ciudad get-puntuacion))
                    (if (and ?diversionsi (eq (str-cat ?tipo) "Diversion" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por diversion: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    )
                    (if (and ?culturasi (eq (str-cat ?tipo) "Cultural" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por cultura: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    )
                    (if (and ?relajacionsi (eq (str-cat ?tipo) "Descanso" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por relajacion: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    )
                    (if (and ?gastronomiasi (eq (str-cat ?tipo) "Culinario" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por gastronomia: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    )
                    (if (and ?experienciassi (eq (str-cat ?tipo) "Experiencias" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por experiencias: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    )
                    (if (and ?romancesi (eq (str-cat ?tipo) "Romantico" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por romance: " ?puntuacion crlf)
                         ;(printout t (send ?ciudad get-puntuacion) crlf)
                    ) 
               )

               (bind ?conocida (send ?ciudad get-es_conocido))
               
               (if (and (eq ?conocida "false") (eq ?*desconocido* si))
               then
                    (bind ?puntuacion (* ?puntuacion 2))
                    (send ?ciudad put-puntuacion ?puntuacion)
                    ;(printout t "Se dobla la puntuacion por desconocido: " ?puntuacion crlf)
                    ;(printout t (send ?ciudad get-puntuacion) crlf)
               )

               ;(defglobal ?*hijos* = no)
               ;(defglobal ?*amigos* = no)
               ;(defglobal ?*familia* = no)
               (if (or (eq ?*amigos* si) (eq ?*evento* fin-de-curso))
               then
                    (if (eq (send ?ciudad get-nombre) "Incheon")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Buenos_Aires")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Barcelona")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Bangkok")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Berlin")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Tokio")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
               )

               (if (or (eq ?*hijos* si) (eq ?*evento* cumpleanos))
               then
                    (if (eq (send ?ciudad get-nombre) "Paris")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Tokio")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Nueva_York")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
               )

               (if (eq ?*familia* si) 
               then
                    (if (eq (send ?ciudad get-nombre) "Paris")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Tokio")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Nueva_York")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Chachapoyas")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Savannah")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Toronto")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Barcelona")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Dinant")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
               )

               (if (or (eq ?*pareja* si) (eq ?*evento* boda)) 
               then
                    (if (eq (send ?ciudad get-nombre) "Paris")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Tokio")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Barcelona")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Bangkok")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
               )

               (if (eq ?*solo* si) 
               then
                    (if (eq (send ?ciudad get-nombre) "Jaipur")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Katmandu")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Bergen")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
                    (if (eq (send ?ciudad get-nombre) "Bangkok")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?ciudad put-puntuacion ?puntuacion)
                    )
               )

               ;(printout t "----------------------------" crlf crlf)
          )

          (defrule filtro::calcular_puntuaciones_puntos "Calculamos puntuaciones de los puntos de interes"
               (declare (salience 12))
               ?punto <- (object (is-a Punto_Interes))
               =>
               (bind ?tipos (send ?punto get-tiene_tipo))
               ;(printout t "Se entra en la regla de puntuaciones puntos interes" crlf)
               ;(printout t ?punto crlf)
               (bind ?diversionsi (eq ?*diversion* si))
               (bind ?culturasi (eq ?*cultura* si))
               (bind ?relajacionsi (eq ?*relajacion* si))
               (bind ?gastronomiasi (eq ?*gastronomia* si))
               (bind ?experienciassi (eq ?*experiencias* si))
               (bind ?romancesi (eq ?*romance* si))

               (progn$ (?tipo ?tipos)
                    ;(printout t ?tipo crlf)
                    (bind ?puntuacion (send ?punto get-puntuacion))
                    (if (and ?diversionsi (eq (str-cat ?tipo) "Diversion" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por diversion: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    )
                    (if (and ?culturasi (eq (str-cat ?tipo) "Cultural" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por cultura: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    )
                    (if (and ?relajacionsi (eq (str-cat ?tipo) "Descanso" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por relajacion: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    )
                    (if (and ?gastronomiasi (eq (str-cat ?tipo) "Culinario" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por gastronomia: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    )
                    (if (and ?experienciassi (eq (str-cat ?tipo) "Experiencias" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por experiencias: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    )
                    (if (and ?romancesi (eq (str-cat ?tipo) "Romantico" ))
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                         ;(printout t "Se dobla la puntuacion por romance: " ?puntuacion crlf)
                         ;(printout t (send ?punto get-puntuacion) crlf)
                    ) 
               )

               (bind ?conocida (send ?punto get-es_conocido))
               (if (and (eq ?conocida "false") (eq ?*desconocido* si))
               then
                    (bind ?puntuacion (* ?puntuacion 2))
                    (send ?punto put-puntuacion ?puntuacion)
                    ;(printout t "Se dobla la puntuacion por desconocido: " ?puntuacion crlf)
                    ;(printout t (send ?punto get-puntuacion) crlf)
               )

               (if (or (eq ?*amigos* si) (eq ?*evento* fin-de-curso))
               then
                    (if (eq (str-cat (instance-name ?punto)) "Akihabara")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Barrios_Rojos")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Chinatown")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Hockey_Hall_of_Fame")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Rooftop_bars") 
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Shibuya")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
               )

               (if (or (eq ?*hijos* si) (eq ?*evento* cumpleanos))
               then
                    (if (eq (str-cat (instance-name ?punto)) "DisneyLand")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Central_Park")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Estatua_Libertad")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Songwol-don_Fairytale_Village")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
               )

               (if (eq ?*familia* si) 
               then
                    (if (eq (str-cat (instance-name ?punto)) "DisneyLand")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Central_Park")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Estatua_Libertad")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Songwol-don_Fairytale_Village")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Castillo_Veves")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Cemiterio_de_la_Recolecta")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Empire_State")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Estupa_de_Boudhanath")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Hawa_Mahal")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Holocaust-Mahnmal")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Jeondeungsa_Temple")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Khao_San")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Museo_Louvre")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Museo_Metropolitano_de_Arte")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Museo_de_Leymebamba")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Notre-Dame")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Parc_Guell")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Parque_de_los_tres_budas")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Puerta_de_Brandenburg")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Recoleta")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Reichstag_Building")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Sagrada_Familia")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Templo_Sensoji")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
               )

                    (if (or (eq ?*pareja* si) (eq ?*evento* boda))           
                    then
                    (if (eq (str-cat (instance-name ?punto)) "Usina_del_Arte")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Torre_Eiffel")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Museo_Louvre")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Sagrada_Familia")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Aguas_termales_Ganghwado")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Aguas_termales_Tokio")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
               )

               (if (eq ?*solo* si) 
               then
                    (if (eq (str-cat (instance-name ?punto)) "Barrios_Rojos")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Bazar_y_calles_de_la_Ciudad_Rosa")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
                    (if (eq (str-cat (instance-name ?punto)) "Chinatown")
                         then
                         (bind ?puntuacion (* ?puntuacion 2))
                         (send ?punto put-puntuacion ?puntuacion)
                    )
               )

               ;(printout t "----------------------------" crlf crlf)
          )

     
          ;;Pasa al modulo de construccion de la solucion
          (defrule filtro::construye "Construye la solucion a partir de las instancias que cumplen"
          (declare (salience 8))
          =>
          (focus construccion))

     ;;;;;;;;;;;FIN MODULO FILTRAR;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;;;;;;;;;;;;;;;;;;;;;;;;;MODULO CONSTRUCCION DE LA SOLUCION;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

          (defmodule construccion (import MAIN ?ALL))

          ;;Variables globales que se usan en este modulo
          (defglobal ?*preciomediotransporte* = 0)
          (defglobal ?*numerotransportes* = 0)

          (defrule construccion::crear-fact-origen "creamos el fact del origen"
               (declare (salience 10)) 
               =>
               ;calcul del pressupost de la ciutat
               (assert (origen ?*origen*))
               (assert (ciudadDeOrigen ?*origen*))
          )


          (defrule construccion::calcula-suma "Calcula la media de los transportes origen-continente"
               (declare (salience 10))
               ?viaje <- (object(is-a Transporte) (origen ?origen) (destino ?destino))
               (ciudadDeOrigen ?o)
               => 
               (if (and (eq (str-cat(send ?destino get-nombre)) (str-cat ?o)) (eq (str-cat(send ?origen get-visitado)) "no"))
               then
                    (bind ?*preciomediotransporte* (+ ?*preciomediotransporte* (send ?viaje get-precio)))
                    (bind ?*numerotransportes* (+ ?*numerotransportes* 1))
                    ;;(printout t "se entra en calculasuma" crlf)
               )
          )

          (deffunction construccion::mira-maxim(?transporte ?o)
               (bind ?origen (send ?transporte get-origen))
               (bind ?destino (send ?transporte get-destino))

               (bind ?b1 (eq (str-cat(send ?destino get-nombre)) (str-cat ?o)))
               (bind ?b2 (eq (str-cat(send ?origen get-visitado)) "no"))

               (bind ?result (and ?b1 ?b2))
               ?result
          )

          (defrule construccion::calculo-presupuesto 
               ;calcul preu mig viatge de tornada
               (declare (salience 8))
               (ciudadDeOrigen ?o)
               =>
               ;(printout t "Calculamos presupuestos" crlf)
               (bind ?preciomediovuelta 0)
               (if (> ?*numerotransportes* 0) then (bind ?preciomediovuelta (/ ?*preciomediotransporte* ?*numerotransportes*)))
               ;(printout t "Precio medio vuelta " ?preciomediovuelta crlf)
               (bind ?presupuesto (- ?*presupuesto* ?preciomediovuelta))
               (bind ?*preciomediotransporte* ?preciomediovuelta)
               (if (eq ?*sacrificarduracion* no) then 
                    (bind ?transportes (find-all-instances ((?inst Transporte)) (mira-maxim ?inst ?o)))
                    (bind ?max 0)
                    (bind ?i 1)
                    (progn$ (?transporte ?transportes)
                         (if (< ?max (send ?transporte get-precio)) then
                              (bind ?max (send ?transporte get-precio))
                         )
                    )
                    (bind ?*preciomediotransporte* ?max)
                    ;(printout t ?*preciomediotransporte* crlf)
               )
               ;(printout t "Presupuesto tras restar " ?presupuesto crlf)
               (bind ?diasciudad (integer(/ ?*diasviaje* ?*ciudades*)))
               (bind ?*presupuestoCiudad* (* (/ ?presupuesto ?*diasviaje*) ?diasciudad))
               ;(printout t "Presupuesto ciudad " ?*presupuestoCiudad* crlf)
          )

          ;;funcion usada para ordenar los transportes segun la puntuacion de la ciudad de destino
          (deffunction construccion::sort-puntuacion (?f1 ?f2)
               (bind ?a (send ?f1 get-destino))
               (bind ?b (send ?f2 get-destino))
               (< (send ?a get-puntuacion) (send ?b get-puntuacion))
          )

          ;;funcion usada para ordenar los puntos de interes segun su puntuacion
          (deffunction construccion::sort-puntuacion-interes (?a ?b)
               (< (send ?a get-puntuacion) (send ?b get-puntuacion))
          )

          ;;funcion usada para ordenar los alojamientos segun calidad o precio dependiendo si el cliente quiere lujo o no
          (deffunction construccion::sort-alojamientos (?a ?b)
               (bind ?result FALSE)
               (if (eq ?*lujo* si) 
                    then
                         (bind ?result (< (send ?a get-calidad) (send ?b get-calidad)))
                    else 
                         (bind ?result (> (send ?a get-precio) (send ?b get-precio)))
               )
               ?result
          )

          ;;funcion usada para escoger las instancias de transporte que nos interesan
          (deffunction construccion::mira-transporte (?transporte ?o)
               (bind ?origen (send ?transporte get-origen))
               (bind ?destino (send ?transporte get-destino))

               (bind ?b1 (eq (str-cat(send ?origen get-nombre)) (str-cat ?o)))
               (bind ?b2 (eq (str-cat(send ?destino get-visitado)) "no"))

               (bind ?result (and ?b1 ?b2))
               ?result
          )

          ;;funcion usada para escoger las instancias de transporte para volver a casa que nos interesan
          (deffunction construccion::mira-transporteVuelta (?transporte ?o ?d)
               (bind ?origen (send ?transporte get-origen))
               (bind ?destino (send ?transporte get-destino))

               (bind ?b1 (eq (str-cat(send ?origen get-nombre)) (str-cat ?o)))
               (bind ?b2 (eq (str-cat(send ?destino get-nombre)) (str-cat ?d)))

               (bind ?result (and ?b1 ?b2))
               ?result
          )

          ;;regla que anade una ciudad a la solucion
          (defrule construccion::escoger-ciudades "escogemos una a una las ciudades que se ajusten al presupuesto"
               (declare (salience 6))
               ?factId <- (origen ?o)
               ?ciudadOrigenid <- (ciudadDeOrigen ?o2)
               (test (< (length$ ?*solucion*) ?*ciudades*))
               =>
               ;(printout t "Se entra en la regla de ciudades-------------- " crlf)
               ;(printout t "Presupuesto ciudad " ?*presupuestoCiudad* crlf)

               ;;se seleccionan y se ordenan los transportes posibles por puntuacion de forma decreciente
               (bind ?transportes (find-all-instances ((?inst Transporte)) (mira-transporte ?inst ?o)))
               (bind ?transportes (sort sort-puntuacion ?transportes))
               (if ( eq (length$ ?transportes) 0) then (bind ?*transporteImposible* si))
               (bind ?sol_found 0)
               ;;recorremos los transportes ordenados 
               (progn$ (?transporte ?transportes)
                    (bind ?origen (send ?transporte get-origen))
                    (bind ?destino (send ?transporte get-destino))
                    ;(printout t "fkeioajiofjeioaj " crlf)
                    (bind ?preuTransport (send ?transporte get-precio))
                    ;(printout t "Se coge el transporte vuelta " crlf)
                    

                    ;(printout t ?destino crlf)
                    ;(printout t ?o2 crlf)
                    (bind ?transporteVuelta (find-instance ((?inst Transporte)) (mira-transporteVuelta ?inst ?destino ?o2)))
                    
                    (if (not (eq (length$ ?transporteVuelta ) 0)) then 
                         (bind ?transporteVuelta (nth$ 1 ?transporteVuelta))
                         ;(printout t ?transporteVuelta crlf)
                         ;(printout t "Se coge el precio transporte vuelta " crlf)
                         
                         (bind ?preuTransportTornada (send ?transporteVuelta get-precio))
                         ;(printout t ?transporte " " ?destino " " (send ?destino get-puntuacion) crlf)

                         ;;si no se ha encontrado una solucion, continuamos
                         (if (eq ?sol_found 0) then
                              (if (or (and (eq (length$ ?*solucion*) (- ?*ciudades* 1)) (<= ?preuTransportTornada ?*preciomediotransporte*)) (not (eq (length$ ?*solucion*) (- ?*ciudades* 1))))
                                   then
                                   (bind ?i 0)
                                   ;(bind ?sol_found 0)
                                   
                                   ;;;ahora comprobamos que se pueda escoger la ciudad destino de transporte segun el presupuesto del cliente
                                   ;;calculamos el precio de ir a la ciudad y lo restamos
                                   (bind ?pressupostCiutat (- ?*presupuestoCiudad* ?preuTransport))
                                   ;(printout t "Ciudad: " ?destino crlf)
                                   ;(printout t "Precio transporte: " ?preuTransport crlf)
                                   ;(printout t "Presupuesto ciudad-transporte: " ?pressupostCiutat crlf)
                                   ;obtenemos los hoteles de la ciudad que estamos mirando, los ordenamos y comprobamos si alguno cumple el presupuesto
                                   (if (> ?pressupostCiutat 0) then   
                                        (bind ?i 1)
                                        (bind ?alojamientos (send ?destino get-tiene_alojamiento))
                                        (bind ?alojamientos (sort sort-alojamientos ?alojamientos))
                                        (while ( and (<= ?i (length$ ?alojamientos)) (eq ?sol_found 0) )
                                             do
                                             (bind ?alojamiento (nth$ ?i ?alojamientos))
                                             ;;;Calculamos si el hotel se puede coger
                                             (bind ?diasciudad (integer(/ ?*diasviaje* ?*ciudades*)))
                                             (bind ?precioHotel (* (- ?diasciudad 1) (send ?alojamiento get-precio)))
                                             (bind ?calidadHotel (send ?alojamiento get-calidad))
                                             (bind ?cumpleLujo (or (eq ?*lujo* no) (> ?calidadHotel 3)))
                                             ;(printout t "Hotel: " ?alojamiento crlf)
                                             ;(printout t "Precio hotel: " ?precioHotel crlf)
                                             (if (and ( <= ?precioHotel ?pressupostCiutat) ?cumpleLujo) then
                                                  (bind ?sol_found 1)
          
                                                  (bind ?estancia (make-instance (gensym*) of Estancia))
                                                  (send ?estancia put-es_en ?destino)
                                                  (send ?estancia put-se_hospeda_en ?alojamiento)
                                                  (send ?estancia put-transporte (instance-name ?transporte))
                                                  (send ?estancia put-precio-transporte ?preuTransport)

                                                  (bind ?*vueloVuelta* ?transporteVuelta)
                    
                                                  ;;Actualizamos el presupuesto de la ciudad
                                                  (bind ?pressupostCiutat (- ?pressupostCiutat ?precioHotel))
                                                  ;(printout t "Presupuesto ciudad-hotel: " ?pressupostCiutat crlf)

                                                  ;;Escogemos los puntos de interes con el presupuesto restante
                                                  ;;Cogemos maximo dos puntos de interes por dia
                                                  (bind ?maxPuntos (* ?diasciudad 2))
                                                  (bind ?contPuntos 0)

                                                  (bind ?j 1)
                                                  (bind ?puntosInteres (send ?destino get-tiene_punto))
                                                  (bind ?puntosInteres (sort sort-puntuacion-interes ?puntosInteres))
                                                  (while (and (<= ?j (length$ ?puntosInteres)) (< ?contPuntos ?maxPuntos))
                                                       do
                                                       ;;Mientras no nos pasemos, cogemos puntos interes
                                                       (bind ?puntoI (nth$ ?j ?puntosInteres))
                                                       (bind ?precioPunto (send ?puntoI get-precio))
                                                       ;(printout t (send ?puntoI get-puntuacion) crlf)
                                                       (if (<= ?precioPunto ?pressupostCiutat)
                                                            then 
                                                            (bind ?contPuntos (+ ?contPuntos 1))
                                                            (bind ?pressupostCiutat (- ?pressupostCiutat ?precioPunto))
                                                            ;(printout t "Precio punto "?precioPunto crlf)
                                                            ;(printout t "Presupuesto ciudad-punto: " ?pressupostCiutat crlf)
                                                            (slot-insert$ ?estancia visita ?contPuntos ?puntoI)
                                                            else 
                                                            (bind ?*presupuestoInsuficiente* si)
                                                       )
                                                       (bind ?j (+ ?j 1))
                                                  ) 

                                                  ;;si la ciudad cumple el presupuesto estimado, la anadimos a la solucion
                                                  ;; , la marcamos como visitada y actualizamos los presupuestos de las ciudades restantes con el dinero 
                                                  ;; que nos haya sobrado de lo que habiamos preestimado
                                                  (send ?destino put-visitado "si")
                                                  (bind ?*solucion* (insert$ ?*solucion* (+(length$ ?*solucion*) 1) ?estancia)) 
                                                  (bind ?diasRestantes (-  ?*ciudades* (length$ ?*solucion*)))
                                                  (bind ?p (* (/ ?*presupuesto* ?*diasviaje*) ?diasciudad))
                                                  ;(printout t "Dias restantes: " ?diasRestantes crlf)
                                                  ;(printout t "Sobrante: " ?pressupostCiutat crlf)
                                                  (if (not (eq ?diasRestantes 0)) then 
                                                       (bind ?*presupuestoCiudad* (+ ?p ?pressupostCiutat))
                                                  )
                                                  
                                                  ;;actualizamos los hechos para que las reglas se actualicen y se pase a comprobar y construir la siguiente ciudad
                                                  (retract ?factId)
                                                  (if (eq (length$ ?*solucion*) ?*ciudades*) then
                                                       (retract ?ciudadOrigenid)
                                                  else 
                                                       (assert (origen (send ?destino get-nombre)))
                                                  )
                                             else 
                                             (if ( > ?precioHotel ?pressupostCiutat) then (bind ?*presupuestoInsuficiente* si)
                                             else 
                                             (bind ?*calidadInsuficienteContinente* si)
                                             )
                                             (bind ?i (+ ?i 1))
                                             )   
                                        )
                                   )
                              else 
                              (bind ?*presupuestoInsuficiente* si)
                              )
                         )
                    else 
                    (bind ?*noTransporteVuelta* si)
                    )
                    
               )
               ;(printout t "---------------------------------" crlf)
          )

          ;;Pasamos al modulo que printa la primera solucion
          (defrule printea "Printea la solucion"
               (declare (salience 5)) 
               =>
               (focus print_solucion)
          )
          ;;Calculamos los parametros de la segunda solucion
          (defrule logicaSegunda "Resetea parámetros para la segunda solucion"
               (declare (salience 4))
               =>
               (focus logicasegunda)
          )
          ;;reset de las reglas para construir una segunda solucion
          (defrule seteafactsegunda "Resetea parámetros para la segunda solucion"
               (declare (salience 3))
               =>
               (bind ?origen (find-all-facts ((?x origen)) TRUE))
               (bind ?ciudadOrigen (find-all-facts ((?x ciudadDeOrigen)) TRUE))
               (progn$ (?o ?origen) (retract ?o))
               (progn$ (?o2 ?ciudadOrigen) (retract ?o2))
               (assert (origen ?*origen*))
               (assert (ciudadDeOrigen ?*origen*))
               (bind ?*preciomediotransporte* 0)
               (bind ?*numerotransportes* 0)
          )
          ;;Pasamos al modulo que printa la segunda solucion
          (defrule printeaSegunda "Printea la solucion"
               (declare (salience 2)) 
               =>
               (focus print_segunda_solucion)
          )

     ;;;;;;;FIN MODULO CONSTRUCCION SOLUCION;;;;;;;;;;;;;;;;;;;;;

     

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;MODULO PREPARAR SEGUNDA SOLUCION;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

          (defmodule logicasegunda (import MAIN ?ALL))

          (defrule logicasegunda::prepara ;Reseteamos el contenedor de solucion,
               =>                          ;y comprobamos si se puede generar otra solucion a partir de las ciudades restantes
               (bind ?*solucion* (create$));en el continente. Si no se puede, usamos otro.
               (bind ?ciudadesRestantes (find-all-instances ((?inst Ciudad)) (eq ?inst:visitado "no")))
               (bind ?*transporteImposible* no)
               (bind ?*calidadInsuficienteContinente* no)
               (bind ?*presupuestoInsuficiente* no)
               (if (< (length$ ?ciudadesRestantes) ?*ciudades*) then
                    (progn$ (?ciudad ?ciudadesRestantes)
                         (send ?ciudad put-visitado "si") ;ponemos los continentes que quedan como visitados
                    )
                    (if (eq ?*continente* Asia) then
                         (bind ?ciudadesNuevas (find-all-instances ((?inst Ciudad)) (eq ?inst:continente "Europa")))
                         (progn$ (?ciudad ?ciudadesNuevas)
                              (send ?ciudad put-visitado "no") ;Rehabilitamos nuevas ciudades en otro continente
                         )
                    )
                    (if (eq ?*continente* Europa) then
                         (bind ?ciudadesNuevas (find-all-instances ((?inst Ciudad)) (eq ?inst:continente "Asia")))
                         (progn$ (?ciudad ?ciudadesNuevas)
                              (send ?ciudad put-visitado "no") ;Rehabilitamos nuevas ciudades en otro continente
                         )
                    )
                    (if (eq ?*continente* America) then
                         (bind ?ciudadesNuevas (find-all-instances ((?inst Ciudad)) (eq ?inst:continente "Europa")))
                         (progn$ (?ciudad ?ciudadesNuevas)
                              (send ?ciudad put-visitado "no") ;Rehabilitamos nuevas ciudades en otro continente
                         )
                    )
                    (bind ?origen (find-instance ((?inst Ciudad)) (eq ?inst:nombre (str-cat ?*origen*)))) 
                    (bind ?origen (nth$ 1 ?origen))
                    (send ?origen put-visitado "si")
               )
          )
     ;;;;;;;;;;;;;;;;;;;;;;;;FIN MODULO SEGUNDA SOLUCION;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

     ;;;;;;;;;;;;;;;;;;;;;;;;;;;MODULO IMPRIMIR SOLUCION;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

          (defmodule print_solucion (import MAIN ?ALL))

          (defrule print_solucion::hola
               =>(printSolucion)
          )

          (defmodule print_segunda_solucion (import MAIN ?ALL))
          
          (defrule print_segunda_solucion::segundo_hola
               =>(printSolucion)
          )
     ;;;;;;;;;;;;;;;;;;;;;;;;;;;FIN MODULO IMPRIMIR SOLUCION;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;FIN REGLAS;;;;;;;;;;;;;;;;;;;;;;;;