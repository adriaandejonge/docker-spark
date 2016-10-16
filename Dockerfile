FROM java:jre-alpine
RUN wget -O - http://www-us.apache.org/dist/spark/spark-2.0.1/spark-2.0.1-bin-hadoop2.7.tgz | tar xvz
CMD ["/usr/bin/java","-cp","/spark-2.0.1-bin-hadoop2.7/conf/:/spark-2.0.1-bin-hadoop2.7/jars/*","-Xmx1g","org.apache.spark.deploy.master.Master","--port","7077","--webui-port","8080"]
EXPOSE 7077 8080
