FROM java:8

MAINTAINER Cédric CLOVEL 

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev

RUN wget https://download.jetbrains.com/idea/ideaIU-2016.3.3.tar.gz -O /tmp/idea.tar.gz -q && \
    mkdir -p /usr/share/intellij && \
    tar -xf /tmp/idea.tar.gz --strip-components=1 -C /usr/share/intellij && \
    rm /tmp/idea.tar.gz


CMD /usr/share/intellij/bin/idea.sh
