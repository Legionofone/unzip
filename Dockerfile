FROM alpine:3.14
ADD script.sh /

RUN adduser \
    --disabled-password \
    --gecos "" \
    --ingroup "users" \
    --no-create-home \
    --uid "99" \
    appuser

RUN chmod +x script.sh
RUN chown 99:100 script.sh

USER 99:100

CMD /script.sh
