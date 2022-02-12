FROM golang:1.16-alpine

WORKDIR /app

COPY ./app ./

RUN sudo ls -ltrR
RUN go mod download
# RUN go build -o ./bin
# RUN chmod a+rx ./bin

EXPOSE 8080

#CMD [ "/bin" ]
CMD ["go","run","main.go" ]
