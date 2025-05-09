FROM alpine:3.14
ADD script.sh /
RUN chmod +x script.sh
CMD /script.sh
