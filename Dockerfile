FROM alpine:3.14
ADD script.sh /

ARG uid=99
RUN useradd -u ${uid} -g 100 -s /bin/sh appuser

RUN chmod +x script.sh
RUN chown 99:100 script.sh

USER 99:100

CMD /script.sh
