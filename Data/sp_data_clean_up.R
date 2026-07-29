path <- 'www/old/new_maps/'

f <- list.files(path)

for (i in f) {
  
  img <- image_read(paste0(path,i)) |>
    image_scale("500")
  
  image_write(image = img, path = paste0(path,str_sub(i, end = -9),
                                         '.jpg'), format = 'jpeg', quality = 80) 
  
  file.remove(paste0(path,i))
}



# Read in City of St. Petersburg water quality data:
cospRaw <- readxl::read_excel('data/st_pete_wq_2013_2026.xlsx')

# Reformat SP data to match PC data:
cospWQ <- cospRaw |>
  dplyr::filter(! substr(Analysis,1,12) == 'Confirmation',
                tResult != 'ND') |>
  dplyr::select(Site = SampleName,
         Latitude,
         Longitude,
         Date = Sampled,
         Analysis,
         Analyte,
         Result,
         tResult) |>
  dplyr::mutate(
    Analyte = dplyr::case_when(
      Analyte %in% c('CHL-A', 'Chlorophyll A', "Corrected Chlorophyll A") ~ 'Chl-a',
      Analyte %in% c('CHL-B', 'Chlorophyll B', 'Chlorophyll-b') ~ 'Chl-b',
      Analyte %in% c('CHL-C', 'Chlorophyll C', 'Chlorophyll-c') ~ 'Chl-c',
      Analyte %in% c('Dissolved Oxygen', 'Dissolved oxygen (DO)') ~ 'DO',
      Analyte == 'Dissolved Oxygen Saturation' ~ 'DO%',
      Analyte %in% c('PHEOPHYTIN', 'Pheophytin A', 'Pheophyton-a') ~ 'Pheophytin',
      Analyte %in% c('Phosphate', 'Phosphate, Ortho as (P)', 'Orthophosphate as P') ~ 'OP',
      Analyte %in% c('Phosphorus', 'Phosphorus, Total', 'Phosphorus, Total (as P)',
                     'Phosphorus, Total (as P) LL', 'Phosphorous, Total',
                     'Total Phosphorous', 'Total Phosphorus (as P)',
                     'Total  Phosphorus (as P)') ~ 'TP',
      Analyte %in% c('Total Nitogen', 'Total Nitrogen') ~ 'TN',
      Analyte %in% c('Nitrogen, Total Kjeldahl', 'Nitrogen, Kjeldahl',
                     'Nitrogen, Kjeldahl, Total', 'Total Kjeldahl Nitrogen') ~ 'TKN',
      Analyte %in% c('Nitrate (as N)', 'Nitrate-N') ~ 'Nitrate',
      Analyte %in% c('Nitrite (as N)', 'Nitrite-N') ~ 'Nitrite',
      Analyte %in% c('Depth, Secchi Disk Depth', 'Secchi Disk') ~ 'Secchi',
      Analyte %in% c('E. Coli', 'E. Coli (conf)') ~ 'E_coli',
      Analyte %in% c('Temperature', 'Temperature, water', 'Water Temperature') ~ 'Temp_Water',
      Analyte %in% c('Fecal coliform (conf)', 'Fecal Coliforms') ~ 'Fecal coliform',
      Analyte %in% c('Ammonia-N', 'Nitrogen, Ammonia') ~ 'NH3',
      Analyte == 'Nitrate+Nitrite-N' ~ 'NOX',
      Analyte == 'Nitrogen, mixed forms (NH3)+(NH4)+organic+(NO2)+(N' ~ 'N-mixed',
      TRUE ~ Analyte
    )
  ) |>
  dplyr::mutate(Value = ifelse(is.na(Result), tResult, Result)) |>
  dplyr::select(-c(Result, tResult, Analysis)) |>
  dplyr::filter(Analyte %in% c('DO%','Chl-a','TN','TP','TSS','Turbidity','Secchi',
                        'Temp_Water','Salinity', 'E_coli','Enterococci'),
                Site != 'Reagent Water Blank') |>
  tidyr::drop_na(Value) |>
  dplyr::distinct() |>
  dplyr::mutate(Date = substr(Date, 1,9),
                Date = as.Date(substr(Date,1,9), format = '%d-%b-%y'),
                Site = ifelse(substr(Site,1,6) %in% c('COSPE6','COSPE7'),substr(Site,5,8),
                              Site)) |>
  dplyr::arrange(Site, Date) 
  # tidyr::pivot_wider(id_cols = c(Site, Latitude, Longitude, Date),
  #             names_from = Analyte, values_from = Value) 
  # dplyr::mutate_at(c('Latitude', 'Longitude', 'DO%', 'Salinity', 'Secchi',
  #             'Turbidity','Temp_Water', 'TN','TP','TSS','E_coli',
  #             'Enterococci','Chl-a'), as.numeric) 

cospWQ |> 
  dplyr::summarise(n = dplyr::n(), .by = c(Site, Latitude, Longitude, Date, Analyte)) |> 
  dplyr::filter(n > 1L)

SPwbid <- readxl::read_excel('data/cosp_WBID.xlsx') |>
  dplyr::select(Site = SampleName, WBID, Segment = WATERBODY_NAME, Type = WATER_TYPE) |>
  dplyr::mutate(bact =
           dplyr::case_when(
             Site == '32-03' ~ 'Entero',
             Site == '39-02' ~ 'Ecoli',
             Site == '40-02' ~ 'Ecoli',
             Site == '44-02' ~ 'Entero',
             Site == '45-03' ~ 'Ecoli',
             Site == '46-03' ~ 'Ecoli',
             Site == '48-03' ~ 'Entero',
             Site == '51-02' ~ 'Ecoli',
             Site == 'BC-01' ~ 'Entero',
             Site == 'BC-01 27th Ave N' ~ 'Entero',
             Site == 'GC-01' ~ 'FRESHWATER',
             TRUE ~ NA
           ),
         Type =
           dplyr::case_when(
             Type == 'ESTUARY' ~ 'MARINE',
             Type == 'STREAM' & bact == 'Entero' ~ 'TIDAL',
             Type == 'STREAM' & bact == 'Ecoli' ~ 'FRESHWATER',
             TRUE ~ Type
           )) |>
  dplyr::select(-bact)

cospW <- cospWQ |>
  dplyr::left_join(SPwbid, by = 'Site') |>
  dplyr::relocate(WBID, Segment, Type, .after = Site) |>
  dplyr::mutate(Level = 'Surface')

