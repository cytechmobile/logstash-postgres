# WARNING: This file is overwritten from docker-image.yml
FROM docker.elastic.co/logstash/logstash:8.7.0
RUN /opt/logstash/bin/logstash-plugin install logstash-integration-jdbc
RUN mkdir /opt/logstash/vendor/jdbc
RUN curl -Lo /opt/logstash/vendor/jdbc/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.6.0.jar