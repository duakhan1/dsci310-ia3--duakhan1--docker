# Use the RStudio base image
FROM rocker/rstudio:4.4.2

# Switch to root user
USER root

# Install the remotes package
RUN Rscript -e 'install.packages("remotes", repos="http://cran.rstudio.com")'

# Install a specific version of cowsay (or another package of your choice)
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.7.0", repos="http://cran.rstudio.com")'

# Switch back to rstudio user
USER rstudio
