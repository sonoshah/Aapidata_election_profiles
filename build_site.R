#Set our working directory. 
#This helps avoid confusion if our working directory is 
#not our site because of other projects we were 
#working on at the time. 
setwd("/Users/sonoshah/Aapidata_election_profiles/")

#render your sweet site. 
rmarkdown::render_site()

setwd("~/Aapidata_election_profiles")
states = c("Ohio","Utah","Nevada", "Pennsylvania","Massachusetts", "Louisiana", "Texas", "Wisconsin", "Minnesota", "New York","Michigan", "California")
for(state in states)
  rmarkdown::render(input = "test.Rmd", 
                    output_file = paste0(state,".html"),
                    params = list(state = state)
  )


