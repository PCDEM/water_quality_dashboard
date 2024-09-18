box::use(
  dplyr[`%>%`]
)

# Info for Allen's Creek (WBID: 1604, 1604B1)
allens <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Allen's Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/allens.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%",
      alt = 'Allen Creek Watershed'),
      tags$p(""),
      "The Allen's Creek watershed is shaded in green on the map above, with the 
      monitoring sites denoted by green dots.", 
      tags$p(""),
      "Allen's Creek flows east into Old Tampa Bay.  As part of the Pinellas County 
     ambient monitoring program, six sites have been sampled eight times a year, 
     approximately every 40 days from June through September (wet season) and every 
     51 days for the rest of the year (dry season).  Site 19-02 is tidally influenced, 
     so it is assessed separately from the other sites, which are freshwater.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Alligator Creek (WBID: 1574)
alligator <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Alligator Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/alligator.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Alligator Creek watershed is shaded in green on the map above, with 
      the monitoring sites denoted by green dots.  Site 14-07 is at the Alligator 
      Lake dam while site 14-10 is on Alligator Creek in Kapok Park.", 
      tags$p(""),
      "Alligator Creek flows east and is impounded to form Alligator Lake just 
      before it flows into Old Tampa Bay. Biological sampling is conducted in the 
      spring and fall every other year along Alligator Creek. This includes an assessment
      of the macroinvertebrates living in the stream, estimates of the amount of 
      algae present, and documentation of nuisance exotic vegetation in the stream.
      The vegetation in Alligator Lake is assessed annually to document native 
      plant species, invasive vegetation, and sensitive species, and assess the 
      overall plant community composition.",
      easyClose = TRUE,
      footer = modalButton("Close"))) 
    })
}

# Info for Anclote River (WBID: 1440)
anclote <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Anclote River Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/anclote.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Anclote River watershed is shaded in green on the map to the left,
      with monitoring sites 01-01 and 01-08 denoted by green dots.", 
      tags$p(""),
      "The Anclote River flows west, emptying into St. Joseph Sound in the City 
      of Tarpon Springs.  Much of the large watershed is outside of Pinellas County.  
      Two sites are currently monitored, site 01-01 at the Alternate Highway 19 
      bridge and site 01-08 just east of the Forest Hills Golf and Country Club.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}


# Info for Hollin Creek (WBID: 1475)
hollin <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Hollin Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/hollin.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Hollin Creek watershed is shaded in green on the map above, with 
      monitoring sites denoted by green dots.",
      tags$p(""),
      "Hollin Creek flows west to its confluence with the Anclote River just 
      north of Lake Tarpon.  Three sites have been monitored since 2015.  
      The upper two sites, 01-10 and 01-11, are located in wetland habitats 
      with very sluggish flow.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}


# Info for long/cross Bayou
cross_bayou <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = 'Long Bayou/Cross Bayou Watershed',
      "The Cross Bayou Canal system extends 7.9 miles across the county peninsula 
      from Old Tampa Bay to Boca Ciega Bay. The 7,697-acre system receives stormwater 
      drainage from unincorporated County, City of Pinellas Park, City of Seminole, 
      and City of St Petersburg along with tidal impacts from both coastal bay 
      systems, therefore the flow direction and salinity matrix in the Canal is 
      highly dynamic.",
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}



# Info for Boca Ciega Bay (WBIDs: '1528A','1618C','1694B','1694A','1558N')
bcb <- function(input,value, strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = paste('Boca Ciega Bay:',strata),
      tags$img(
        src = base64enc::dataURI(file = 'www/bcb.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "Boca Ciega Bay (BCB) is subdivided into four areas, as shown on the map above.
      Monitoring in BCB is accomplished by dividing the Bay into four regions:
      The Narrows, BCB North, BCB Central, and BCB South", 
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology. 
      Additionally, 
      Pinellas County partners with the Tampa Bay Estuary 
      Program (TBEP) and the EPCHC to conduct seagrass surveys and sediment and benthic 
      invertebrate assessments every year.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Bishop Creek (WBIDs: 1569, 1569A)
bishop <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Bishop Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/bishop.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Bishop Creek watershed is shaded in green on the map above, with the 
      monitoring sites denoted by green dots.", 
      tags$p(""),
      "Bishop Creek flows east into Old Tampa Bay.  Two sites are monitored on
      the creek: site 12-02, the North Branch which is tidally influenced, and 
      site 12-04, the South Branch. Biological sampling is conducted in the spring 
      and fall every other year in the South Branch of Bishop Creek. This includes 
      assessment of the macroinvertebrates living in the stream, estimates of 
      the amount of algae present, and documentation of nuisance exotic vegetation 
      in the stream. Biological assessment in the North Branch is not performed 
      due to the tidal influence.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Brooker Creek (WBID 1474)
brooker <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Brooker Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/brooker.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto"),
      tags$p(""),
      "The Brooker Creek watershed is shaded in green on the map above, 
        with monitoring sites denoted by green dots.",
      tags$p(""),
      "The upper portion of the Brooker Creek watershed, representing more than 
        half of the total area, is located in Hillsborough County, with a small 
        area in Pasco County.  Much of Brooker Creek flows through a natural, 
        low gradient swamp area, including the Brooker Creek Preserve, which 
        comprises approximately 8,700 acres of undeveloped land. In Pinellas 
        County, Brooker Creek flows southwest and enters the southern-most area 
        of Lake Tarpon. Biological sampling is conducted in the spring and fall 
      every other year in at site 04-04. This includes assessment of the 
      macroinvertebrates living in the stream, estimates of the amount of algae 
      present, and documentation of nuisance exotic vegetation in the stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Cedar Creek (WBID: 1556A)
cedar <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Cedar Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/cedar.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Cedar Creek watershed is shaded in green on the map above. The 
      monitoring site, located in Hammock Park in Dunedin, is denoted by a green 
      dot.", 
      tags$p(""),
      "Cedar Creek flows west into the northern part of Clearwater Harbor in Dunedin 
      and is tidally influenced.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Cross Bayou Canal
cross <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Cross Bayou Canal Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/cross.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Cross Bayou Canal watershed is shaded in green on the map above, with 
      the monitoring sites denoted by green dots.", 
      tags$p(""),
      "The South Cross Bayou Canal flows southward into Long Bayou and then into 
      Boca Ciega Bay from sites 24-01 and 24-07, while the flow in North Cross 
      Bayou, as measured at 24-02, is northward into Old Tampa Bay.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Curlew Creek
curlew <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Curlew Creek and Jerry Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/curlew.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Curlew Creek watershed is shaded in green on the map above, with 
      monitoring sites denoted by green dots.", 
      tags$p(""),
      "Curlew Creek and Jerry Branch flow west into the northern part of Clearwater 
      Harbor in Dunedin.  Curlew has been monitored since 2003 and Jerry Branch 
      since 2015. In addition, biological sampling is conducted in the spring and 
      fall every other year.  This includes assessment of the macroinvertebrates 
      living in the stream, estimates of the amount of algae present, and 
      documentation of nuisance exotic vegetation in the stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Joes Creek
joes <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Joes Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/joes.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Joes Creek watershed is shaded in green on the map to the left, with 
      monitoring sites denoted by green dots.", 
      tags$p(""),
      "Joes Creek flows west and then northwest, ultimately emptying into South 
      Cross Bayou Canal.  One of the major tributaries to Joes Creek is Miles 
      Creek, which flows west and then north to join Joes Creek.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Klosterman Creek
klosterman <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Klosterman Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/klosterman.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Klosterman Creek watershed is shaded in green on the map above, with 
      monitoring sites denoted by green dots.", 
      tags$p(""),
      "Klosterman Creek flows west into St. Joseph Sound, and much of the watershed 
      is located in the Innisbrook Golf Club.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Long Branch Creek
long <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(
      title = "Long Branch Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/long.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Long Branch Creek watershed is shaded in green on the map above, with 
      the monitoring sites denoted by green dots.", 
      tags$p(""),
      "Long Branch Creek flows east into Old Tampa Bay. The biological community 
      was assessed in the freshwater portion of the creek in 2015 and 2017, 
      along with an assessment of the plant community, which included estimating 
      the amount of algae present and documenting nuisance exotic vegetation in 
      the stream.",
      easyClose = TRUE,
      footer = modalButton("Close"))) 
    })
}

# Info for Lake Tarpon
lt <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Lake Tarpon Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/lt.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Lake Tarpon watershed, covering 52 square miles and extending into 
      Hillsborough County, is shaded in green on the map to the left.  Brooker 
      Creek is the primary tributary to the lake.  Rapid urbanization has occurred 
      within the watershed and along the shoreline of the lake. In 1967, an 
      outfall canal was constructed at the south end of the lake to control lake 
      levels and reduce flooding, and in 1969, a berm was built in the northwest 
      area of the lake to cutoff a tidally influenced sinkhole.  The Southwest
      Florida Water Management District, SWFWMD, currently controls lake level 
      fluctuations.", 
      tags$p(""),
      "Lake Tarpon is the largest lake in the County, with a surface area of 
      approximately 2,500 acres.  As part of the Pinellas County ambient monitoring 
      program, four sites within the lake are selected randomly for sampling 
      every 40 days from June through September (wet season) and every 51 days
      for the rest of the year (dry season). The vegetative community in the lake 
      is assessed annually, which includes documenting native plant species, 
      invasive vegetation, and sensitive species, and assessing the overall plant 
      community composition.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for McKay Creek 
mckay <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "McKay Creek/Church Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/mckay.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "McKay Creek flows north and then southwest into the southern part of Clearwater 
      Harbor.  Lakes Walsingham and Taylor were created from impoundments on McKay 
      Creek.", tags$p(""),
      "The biological community was assessed in the creek in 2014 and 2016, along 
      with an assessment of the plant community, which included estimating the 
      amount of algae present and documenting nuisance exotic vegetation in the 
      stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Church Creek
church <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Church Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/church.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Church Creek watershed is shaded in green on the map above, with the
      monitoring site denoted by a green dot.", tags$p(""),
      "Church Creek flows northwest into South Clearwater Harbor in Largo. The 
      biological community was assessed in 2014 and 2016, along with an assessment 
      of the plant community in the creek, which included estimating the amount of 
      algae present and documenting nuisance exotic vegetation in the stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}

# Info for Mullet Creek
mullet <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Mullet Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/mullet.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Mullet Creek watershed is shaded in green on the map above, with the 
      monitoring site denoted by a green dot.", 
      tags$p(""),
      "Mullet Creek flows east into Old Tampa Bay. Biological sampling is conducted 
      in the spring and fall every other year. This includes assessment of the 
      macroinvertebrates living in the stream, estimates of the amount of algae 
      present, and documentation of nuisance exotic vegetation in the stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Old Tampa Bay
otbN <- function(input,value,strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = strata,
      tags$img(
        src = base64enc::dataURI(file = 'www/otb.jpg',
                                 mime = "image/jpeg")),
        # style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "Old Tampa Bay is divided into four regions, as shown on the map above.", 
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology.  
      Additionally, Pinellas County partners with the Tampa Bay Estuary Program 
      (TBEP) to conduct seagrass surveys every year. Data collected by Pinellas 
      County staff are shared with the TBEP to allow assessment of seagrass and 
      benthic community health in Tampa Bay in its entirety. The Southwest Florida 
      Water Management District (SWFWMD) also collects aerial data of seagrass 
      coverage every two years, which is combined with the field-collected data 
      to provide a good estimate of seagrass abundance. Seagrass health in Old 
      Tampa Bay has improved significantly, and the health of the benthic community
      has varied in Old Tampa Bay, but overall is considered in fair condition.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}



# Info for Old Tampa Bay
otbS <- function(input,value,strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = strata,
      tags$img(
        src = base64enc::dataURI(file = 'www/otb.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "Old Tampa Bay is divided into four regions, as shown on the map above.", 
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology.  
      While Pinellas County does not conduct seagrass or benthic assessments in 
      this portion of Old Tampa Bay, other agencies monitor this portion of the 
      bay. The Southwest Florida Water Management District (SWFWMD) also collects 
      aerial data of seagrass coverage every two years, which is combined with 
      the field-collected data to provide a good estimate of seagrass abundance. 
      Seagrass health in Old Tampa Bay has improved significantly, and the health 
      of the benthic community has varied in Old Tampa Bay, but overall is 
      considered in fair condition.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Riviera Bay
rb <- function(input,value,strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = strata,
      tags$img(
        src = base64enc::dataURI(file = 'www/rb.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "South Old Tampa Bay and Riviera Bay are shown on the map above.", 
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Roosevelt Creek
roosevelt <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Roosevelt Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/roosevelt.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Roosevelt Creek watershed is shaded in green on the map above, with 
      the monitoring site denoted by a green dot.", 
      tags$p(""),
      "Roosevelt Creek flows in a general northerly direction into Feather Sound 
      in Old Tampa Bay.  It has been channelized along much of its length.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for Lake Seminole
sa_b <- function(input,value,strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = paste("Lake Seminole Watershed:", strata),
      tags$img(
        src = base64enc::dataURI(file = 'www/sa_b.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Lake Seminole watershed is shaded in green on the map above. Monitoring 
      occurs at randomly selected sites in the North Lobe and South Lobe of the lake.", 
      tags$p(""),
      "Lake Seminole was created in the 1940s when a dam was installed as part 
      of the construction of Park Boulevard.  It is the second largest lake in 
      the County. The vegetative community in the lake is assessed annually, 
      which includes documenting native plant species, invasive vegetation, and 
      sensitive species, and assessing the overall plant community composition.",
      easyClose = TRUE,
      footer = modalButton("Close")))
    })
}

# Info for St. Joseph Sound
sjs <- function(input,value,strata){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = strata,
      tags$img(
        src = base64enc::dataURI(file = 'www/sjs.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "St. Joseph Sound and Clearwater Harbor North and South are on the west 
      side of Pinellas County and extend to the barrier islands, as shown on 
      the map above.", 
      tags$p(""),
      "As part of the Pinellas 
      County Ambient Monitoring Program, four sites within each of the stratified 
      regions are selected randomly for sampling approximately every 40 days from 
      June through September (wet season) and every 51 days for the rest of the year 
      (dry season) for a total of eight sampling events and 32 sites per region. 
      The Environmental Protection Commission of Hillsborough County (EPCHC) monitors 
      the eastern portions of Old Tampa Bay using a similar methodology. Additionally, 
      Pinellas County conducts seagrass surveys and sediment and benthic invertebrate 
      assessments every other year.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}

# Info for Bee Branch/Smith Creek
bee <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = "Bee Branch/Smith Creek Watershed",
      tags$img(
        src = base64enc::dataURI(file = 'www/smith.jpg',
                                 mime = "image/jpeg"),
        style="display: block; margin-left: auto; margin-right: auto; max-width:100%"),
      tags$p(""),
      "The Bee Branch watershed is shaded in green on the map to the right, with 
      the monitoring site denoted by a green dot.  Photos show different reaches 
      of the stream.", 
      tags$p(""),
      "Bee Branch flows west into the southern part of St. Joseph Sound in Ozona. 
      The monitoring site, 08-03, is located near the northeast corner of Palm Harbor 
      Blvd and Tampa Rd in Palm Harbor. In addition, biological sampling is conducted 
      in the spring and fall every other year. This includes assessment of the
      macroinvertebrates living in the stream, estimates of the amount of algae
      present, and documentation of nuisance exotic vegetation in the stream.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}

# No info available:
noInfo <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(  
      title = 'No Information Available',
      tags$p(""),
      "This watershed has not been sampled by Pinellas County and no information 
      available at this time.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}

# Information is under development:
tbd <- function(input,value){
  observeEvent(input[[value]], {  
    showModal(modalDialog(
      title = 'Information Coming Soon!',
      tags$p(""),
      "The information for this watershed is under development and will be available
      as soon as possible.",
      easyClose = TRUE,
      footer = modalButton("Close")))
  })
}

# Check to see which polygon what clicked:
getStrata <- function(spDat,lat, lng){
  spt <- as(spDat, "Spatial")
  pnt <- sp::SpatialPoints(matrix(c(lng, lat),ncol=2), 
                           proj4string = sp::CRS(sp::proj4string(spt)))
  return(sp::over(pnt,spt)$WBID)
}

# Function to create a plotly plot
plt <- function(data, var,crit = 0){
  p <- plotly::plot_ly(data, x = ~Date, y = ~data[,2], type = 'scatter', mode = 'lines+markers',
                       marker = list(size = 5, color = 'lightblue', line = list(color='black',width = 2)),
                       line = list(color = 'black'), name = 'Data') |>
    plotly::layout(yaxis = c(list(linecolor = 'black', linewidth = 0.5, mirror = TRUE),
                             list(title = list(text = paste0('<b>',var,'<b>'), 
                                               font = list(size=13)))),
                   xaxis = list(linecolor = 'black', linewidth = 0.5, mirror = TRUE, title = ""))
  
  if (crit != 0){
    p <- p |>
      plotly::add_trace(y = crit, mode = 'lines', line = list(color = '#DF5353',
                                                              dash = 'dash',width = 1.5),
                        name = 'FDEP\nCriterion', marker = NULL)
  } else {
    p
  }
}

# Function to create a gauge plot:
gauge <- function(data,var,unit,max,round,g1,g2,r1,r2,fs,width){
  chart <- highcharter::highchart() |>
    highcharter::hc_chart(type = "gauge") |>
    highcharter::hc_title(
      text = HTML('<b>',paste0(var,' (',
                               format(data[,1][max(which(!is.na(data[,2])))], 
                                      '%b %Y'),')')), 
      style = list(fontSize = paste0(width*0.01, "px")),
      margin = -15) |>
    highcharter::hc_pane(
      startAngle = -110,
      endAngle = 110) |>
    highcharter::hc_add_series(
      data = list(data[,2][max(which(!is.na(data[,2])))]),
      name = var,
      tooltip = list(valueSuffix = unit),
      dataLabels = list(
        format = paste0('{point.y:.',round,'f}',unit),
        borderWidth = 0,
        style = list(fontSize = '16px'),
        verticalAlign = 'top',
        y = 32
      )
    ) |>
    highcharter::hc_yAxis(
      min = 0,
      max = max,
      minorTickInterval = "auto",
      minorTickWidth = 1,
      minorTickLength = 10,
      minorTickPosition = "inside",
      minorTickColor = "#666",
      tickPixelInterval = 30,
      tickWidth = 2,
      tickPosition = "inside",
      tickLength = 10,
      tickColor = "#666",
      labels = list(
        step = 2
      ),
      plotBands = list(
        list(from = g1, to = g2, color = ifelse(nrow(data)==0, 'white',"#55BF3B")),
        list(from = r1, to = r2, color = ifelse(nrow(data)==0, 'white',"#DF5353"))
      )
    ) |>
    highcharter::hc_plotOptions(
      gauge = list(
        wrap = FALSE
      )
    )
  return(chart)
}

# check data availability for plot or retrun message:
pltmsg <- function(dataFunc, colName, plotFunc) {
  renderUI({
    if (length(which(!is.na(dataFunc()[[colName]]))) < 5) {
      h3("PARAMETER NOT COLLECTED AT THIS SITE", 
         style = "color: red; text-align: center; font-weight: bold;")
    } else {
      plotFunc()
    }
  })
}

      
      