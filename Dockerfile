FROM windev/webdev-base:US240063m

COPY WW_Precilia_Winter.ZIP ${WEBDEVConfiguration}comptes/ftp_webdev/

RUN set -ex \
	&& cd ${WEBDEVBinaries} \
	&& ${WEBDEVBinaries}WDInstalle /DOCKER/INSTALLEGO/WW_Precilia_Winter

# Création de la persistance
VOLUME ${WEBDEVConfiguration}comptes/Donnees/WW_Precilia_Winter/