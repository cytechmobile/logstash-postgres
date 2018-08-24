FROM docker.elastic.co/logstash/logstash:6.3.2
RUN /opt/logstash/bin/logstash-plugin install logstash-input-jdbc
RUN mkdir /opt/logstash/vendor/jdbc
RUN curl -Lo /opt/logstash/vendor/jdbc/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.4.jar
