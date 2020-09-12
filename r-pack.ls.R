## getting the list of installed packages
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
i.p<-#levels(
    ip$Package
      #      )

## getting the list of installed packages
str(allPackage <- installed.packages(.Library, priority = "high"))
allPackage [, c(1,3:5)]

# packages I want to have installed
pckjs <- c("units", "openssl", "sf", "GISTools", "httr", "gh", "acs", "covr", "rvest", "usethis", "tigris", "ggmap", "plotly", "choroplethr", "devtools", "tidyverse", "bookdown", "choroplethrMaps", "data.table", "dlnm", "dplyr", "faraway", "forcats", "GGally", "ggplot2", "ggthemes", "gridExtra", "knitr", "leaflet", "lubridate", "magrittr", "microbenchmark", "pander", "profvis", "pryr", "purrr", "rappdirs", "raster", "RColorBrewer", "readr", "rmarkdown", "scales", "sp", "stringr", "testthat", "tidyr", "titanic", "viridis", "rgeos", "rgdal", 'XML', 'dplR', 'dplyr', 'SPARQL', 'gmp', 'stringi', 'dplR', 'reshape2', 'measuRing', 'dplR', "here", "choroplethr", "devtools", "dlnm", "faraway", "GGally", "ggmap", "ggplot2", "ggthemes", "GISTools", "httr", "leaflet", "openssl", "plotly", "sf", "tidyverse", "tigris", "units", "usethis", 'measurements', 'lidR')


# vector diferencia de dos vectores
i.p.not.inst <- setdiff(i.p, pckjs)
i.p
pckjs
setdiff(i.p, pckjs)
setdiff(pckjs,i.p)
# remove packages (for old ones, ie)
remove.packages("sp", .libPaths() )

#  update packages
update.packages() 

# r-packages
# https://cran.rediris.es/
wget -q https://cran.rediris.es/src/contrib/likelihood_1.7.tar.gz
R CMD INSTALL likelihood_1.5.tar.gz

# vector ordenado
datos <- datos[with(datos, order(datos$id)), ] # Orden directo
datos <- datos[with(datos, order(-datos$id)), ] # Orden inverso

# vector sin repetidos
unique(datos)
datos <- datos[!duplicated(datos), ]

pckjs <- c("")

install.packages(pckjs)

## install from file
install.packages(pkgs='/home/cristobal/Disk.IUGFS/R/basifoR/package/Rbasifor_0.1.tar.gz', repos = NULL)
                      contriburl = contrib.url(repos, type),
                      method, available = NULL, destdir = NULL,
                      dependencies = NA, type = getOption("pkgType"),
                      configure.args = getOption("configure.args"),
                      configure.vars = getOption("configure.vars"),
                      clean = FALSE, Ncpus = getOption("Ncpus", 1L),
                      verbose = getOption("verbose"),
                      libs_only = FALSE, INSTALL_opts, quiet = FALSE,
keep_outputs = FALSE, ...)


## reports 
libraries <- c('ggforce', 'ggsci', 'wesanderson')
