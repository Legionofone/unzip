FROM alpine:3.14
ADD script.sh /
RUN chmod +x script.sh

# Set user and group
ARG user=appuser
ARG group=appuser
ARG uid=99
ARG gid=100
RUN groupadd -g ${gid} ${group}
RUN useradd -u ${uid} -g ${group} -s /bin/sh -m ${user} # <--- the '-m' create a user home directory
RUN chown ${uid}:${gid} /script.sh
# Switch to user
USER ${uid}:${gid}

CMD /script.sh
