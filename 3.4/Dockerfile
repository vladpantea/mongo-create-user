FROM mongo:3.4.9-jessie
MAINTAINER Vlad Pantea <vlad.pantea@gmail.com>

RUN apt-get update && \
    apt-get install -y cron && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
