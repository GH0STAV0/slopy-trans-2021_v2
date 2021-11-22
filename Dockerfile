FROM m0uray/slop-trans


VOLUME ["/etc/ssh"]
EXPOSE 3389 22 9001 993 7513 1984 1985 1022
CMD ["/bin/bash", "/root/startup.sh"]
