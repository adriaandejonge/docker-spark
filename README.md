# docker-spark

```
docker network create spark
docker run -d -p 8080:8080 -p 7077:7077 --name master --net spark adejonge/spark sh
```
