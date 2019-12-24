#### install last version of R
## https://linuxize.com/post/how-to-install-r-on-ubuntu-18-04/
# Install the packages necessary to add a new repository over HTTPS:
sudo aptitude install apt-transport-https software-properties-common
# Enable the CRAN repository and add the CRAN GPG key to your system using the following commands:
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
# Now that the apt repository is added, update the packages list and install the R package by typing:
sudo aptitude update
sudo apt install r-base -y
# To verify that the installation was successful run the following command which will print the R version:
R --version

sleep 10
read -p "Press [Enter] key to continue..."



sudo aptitude install -y libgdal-dev libproj-dev
sudo aptitude install -y manpages-posix-dev
sudo aptitude install -y libudunits2-dev
sudo aptitude install -y libssl-dev
sudo aptitude install -y libxml2-dev
sudo aptitude install -y cairo-perf-utils
sudo aptitude install -y libcairo2-dev
sudo aptitude install -y libxt-dev
sudo aptitude install -y libglu1-mesa-dev
sudo aptitude install -y libgmp-dev

sudo aptitude install -y libgdal-dev libproj-dev manpages-posix-dev libudunits2-dev libssl-dev libxml2-dev cairo-perf-utils libcairo2-dev libxt-dev libglu1-mesa-dev libgmp-dev

sleep 10
read -p "Press [Enter] key to install R-packages..."

sudo R CMD BATCH r-pack.R