FROM feliperaposo/protheus-docker-base:26
LABEL maintainer="Felipe Raposo <feliperaposo@gmail.com>"
EXPOSE 1234/tcp
COPY ./root/ /
