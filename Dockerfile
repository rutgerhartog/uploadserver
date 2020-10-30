FROM alpine:3.12

RUN apk add --no-cache py3-pip
RUN adduser -SDu 1337
USER 1337
RUN pip3 install uploadserver

EXPOSE 8000

CMD ["python3", "-m", "uploadserver"]
