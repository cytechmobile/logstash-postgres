# WARNING: This file is overwritten from docker-image.yml
FROM docker.elastic.co/logstash/logstash:9.3.3
RUN /opt/logstash/bin/logstash-plugin install logstash-integration-jdbc
RUN mkdir /opt/logstash/vendor/jdbc
RUN curl -Lo /opt/logstash/vendor/jdbc/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.7.10.jar