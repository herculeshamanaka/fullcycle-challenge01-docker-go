FROM golang:1.14

# Setting the working directory and copying the files
WORKDIR /go/src/app
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]