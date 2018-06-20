FROM golang:1.9
# 在容器内部创建一个目录来存储我们的 web 应用，接着使它成为工作目录。

RUN mkdir -p /go/src/chat_bottle
WORKDIR /go/src/chat_bottle
ADD . /go/src/chat_bottle
RUN go build .

# 设置 PORT 环境变量
ENV PORT 8080
# 给主机暴露 8080 端口，这样外部网络可以访问你的应用
EXPOSE 8080
CMD ["./chat_bottle"]