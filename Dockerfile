FROM golang:1.13.2 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
RUN go get -d
RUN go build -o main . 
RUN echo "Hello-world" 
CMD ["/app/main"]
EXPOSE 80
