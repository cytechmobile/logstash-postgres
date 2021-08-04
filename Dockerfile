FROM docker.elastic.co/logstash/logstash:7.14.0
RUN /opt/logstash/bin/logstash-plugin install logstash-integration-jdbc
RUN /opt/logstash/bin/logstash-plugin install logstash-output-amazon_es
RUN mkdir /opt/logstash/vendor/jdbc
RUN curl -Lo /opt/logstash/vendor/jdbc/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.23.jar
