ARG R
ARG BUILD_DATE
ARG VCS_REF

FROM rocker/r-ver:$R

LABEL maintainer="Charlotte Dawson <csdaw@outlook.com>" \
      maintainer="Jens Preussner<j.preussner@posteo.de>" \
      org.label-schema.vcs-url="https://github.com/csdaw/rmarkdown-tinytex" \
      org.label-schema.license="MIT"

# install tinytex linux dependencies, pandoc, and rmarkdown
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    wget \
    graphviz \
    perl && \
    /rocker_scripts/install_pandoc.sh && \
    install2.r rmarkdown

# copy files to workdir
COPY install.R tfbrief-template.tex /data/

# Will copy the custom cls file to tlmgr conf auxtrees show
COPY tfbrief.cls /usr/local/lib/R/share/texmf/tex/latex/

# install tinytex
RUN Rscript -e 'install.packages("pacman"); source("/data/install.R")'

