# docker-spark

```
docker network create spark
docker run -d -p 8080:8080 -p 7077:7077 --name master --net spark adejonge/spark:server
docker run -v $(pwd)/target/scala-2.11:/app --net ek adejonge/spark:submit --class ekhackathon /app/ekhackathon_2.11-1.0.jar netcat 9999
```

