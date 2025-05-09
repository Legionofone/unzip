FROM alpine:3.14
ADD script.sh /

ARG user=appuser
ARG uid=99
RUN useradd -u ${uid} -g users -s /bin/sh

RUN chmod +x script.sh
RUN chown 99:100 script.sh

USER 99:100

CMD /script.sh
