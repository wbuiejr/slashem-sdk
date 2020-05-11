FROM gcc:latest
RUN groupadd dungeon
RUN useradd -g dungeon -m dungeonmaster
COPY --chown=dungeonmaster:dungeon slashem-0.0.7E7F2 /home/dungeonmaster/sources
COPY --chown=dungeonmaster:dungeon bashrc /home/dungeonmaster/.bashrc
COPY --chown=dungeonmaster:dungeon vimrc /home/dungeonmaster/.vimrc
COPY --chown=dungeonmaster:dungeon slashemrc-gtk /home/dungeonmaster/.slashemrc-gtk
RUN apt-get update && apt-get install -y vim
RUN apt-get -y install gtk2.0
RUN apt-get -y install bison
RUN apt-get -y install flex
RUN mkdir /usr/local/games/slashemdir
RUN chown dungeonmaster /usr/local/games/slashemdir
RUN chmod 0755 /usr/local/games/slashemdir
RUN chgrp games /usr/local/games/slashemdir
ARG ROOT_PASSWD
RUN echo "${ROOT_PASSWD}\n${ROOT_PASSWD}"|passwd
USER dungeonmaster
WORKDIR /home/dungeonmaster/sources
RUN make all
USER root
RUN make install
USER dungeonmaster
WORKDIR /home/dungeonmaster
