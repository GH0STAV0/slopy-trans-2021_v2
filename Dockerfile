FROM m0uray/slop-trans



ENV INST_SCRIPTS=/root/install 



ADD ./src/ $INST_SCRIPTS/
RUN find $INST_SCRIPTS -name '*.sh' -exec chmod a+x {} +

RUN $INST_SCRIPTS/package.sh


EXPOSE 3389 22 9001 993 7513 1984 1985 1022
CMD ["/bin/bash", "/root/startup.sh"]
