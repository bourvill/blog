FROM abhin4v/hastatic:latest

COPY . /opt/mywebsite
WORKDIR /opt/mywebsite
CMD ["/usr/bin/hastatic"]
