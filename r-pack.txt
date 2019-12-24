## getting the list of installed packages
ip <- as.data.frame(installed.packages()[,c(1,3:4)])
ip <- ip[is.na(ip$Priority),1:2,drop=FALSE]
i.p<-levels(ip$Package)

## getting the list of installed packages
str(allPackage <- installed.packages(.Library, priority = "high"))
allPackage [, c(1,3:5)]

# remove packages (for old ones, ie)
remove.packages("sp", .libPaths() )

#  update packages
update.packages() 

# r-packages
# https://cran.rediris.es/
wget -q https://cran.rediris.es/src/contrib/likelihood_1.7.tar.gz
R CMD INSTALL likelihood_1.5.tar.gz

# vector diferencia de dos vectores
i.p.not.inst <- setdiff(i.p, pckjs)

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






"png", "miniUI", "htmlTable", "crosstalk", "readbitmap", "downloader", "units", "crosstalk", "lme4", "crosstalk", "crosstalk", "manipulateWidget", "sf", "DT", "Hmisc", "ggmap", "tigris" "future", "gdalUtils", "geometry", "imager", "RCSF", "rgl", "rlas", "sf", "RcppArmadillo" 





 ‘ggmap’ had non-zero exit status
16: In install.packages(i.p.not.inst) :
  installation of package ‘tidyverse’ had non-zero exit status
17: In install.packages(i.p.not.inst) :
  installation of package ‘GGally’ had non-zero exit status
18: In install.packages(i.p.not.inst) :
  installation of package ‘measuRing’ had non-zero exit status
19: In install.packages(i.p.not.inst) :
  installation of package ‘manipulateWidget’ had non-zero exit status
20: In install.packages(i.p.not.inst) :
  installation of package ‘Hmisc’ had non-zero exit status
21: In install.packages(i.p.not.inst) :
  installation of package ‘DT’ had non-zero exit status
22: In install.packages(i.p.not.inst) :
  installation of package ‘imager’ had non-zero exit status
23: In install.packages(i.p.not.inst) :
  installation of package ‘sf’ had non-zero exit status
24: In install.packages(i.p.not.inst) :
  installation of package ‘plotly’ had non-zero exit status
25: In install.packages(i.p.not.inst) :
  installation of package ‘faraway’ had non-zero exit status
26: In install.packages(i.p.not.inst) :
  installation of package ‘leaflet’ had non-zero exit status
27: In install.packages(i.p.not.inst) :
  installation of package ‘rgl’ had non-zero exit status
28: In install.packages(i.p.not.inst) :
  installation of package ‘tigris’ had non-zero exit status
29: In install.packages(i.p.not.inst) :
  installation of package ‘devtools’ had non-zero exit status
30: In install.packages(i.p.not.inst) :
  installation of package ‘choroplethr’ had non-zero exit status
31: In install.packages(i.p.not.inst) :
  installation of package ‘lidR’ had non-zero exit status
