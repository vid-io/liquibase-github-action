FROM liquibase/liquibase:latest

RUN cd /liquibase/lib && wget https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/2.1.0.9/redshift-jdbc42-2.1.0.9.jar \
&& wget https://github.com/liquibase/liquibase-redshift/releases/download/v4.16.1/liquibase-redshift-4.16.1.jar

COPY entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
