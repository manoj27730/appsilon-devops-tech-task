FROM rocker/shiny:latest

LABEL org.opencontainers.image.title="182-google-charts" \
      org.opencontainers.image.authors="Maksym Shaposhnikov <shaposhnikoff@gmail.com>" \
      org.opencontainers.image.description="182-google-charts Devops test task by Maksym Shaposhnikov" 


RUN apt-get update -qq && apt-get -y --no-install-recommends install \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get clean

COPY /example-app ./app

# install renv & restore packages
RUN Rscript -e 'install.packages("renv")'
RUN Rscript -e 'install.packages("devtools")'
RUN Rscript -e 'install.packages("dplyr")'
RUN Rscript -e 'renv::consent(provided = TRUE)'
RUN Rscript -e 'renv::restore()'
RUN Rscript -e 'devtools::install_github("jcheng5/googleCharts")'

# expose port
EXPOSE 80 

# run app on container start
CMD ["R", "-e", "shiny::runApp('/app', host = '0.0.0.0', port = 80)"]


