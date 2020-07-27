FROM alpine:3.7

MAINTAINER Prashant Shahi "coolboi567@gmail.com"

COPY . /app

WORKDIR /app

RUN apk add --no-cache bash git nginx uwsgi uwsgi-python3 python3 \
	&& pip3 install --upgrade pip \
	&& pip3 install -r requirements.txt \
	&& rm -rf /var/cache/apk/*

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]