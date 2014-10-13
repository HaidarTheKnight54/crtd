FROM ubuntu:14.04
MAINTAINER jeffbonhag

RUN apt-get update && apt-get install -y \
  build-essential \
  qmlscene \
  qt5-qmake \
  qt5-default \
  qtdeclarative5-dev \
  qtdeclarative5-controls-plugin \
  qtdeclarative5-qtquick2-plugin \
  libqt5qml-graphicaleffects \
  qtdeclarative5-dialogs-plugin \
  qtdeclarative5-localstorage-plugin \
  qtdeclarative5-window-plugin \
  git

RUN git clone https://github.com/Swordfish90/cool-retro-term.git
WORKDIR cool-retro-term
RUN qmake && make install

CMD ["/usr/bin/cool-retro-term"]

