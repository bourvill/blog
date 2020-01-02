FROM abhin4v/hastatic:latest

COPY Output /opt/mywebsite
WORKDIR /opt/mywebsite
CMD ["/usr/bin/hastatic"]
