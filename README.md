# docker-spark

```
docker network create spark
docker run -d -p 8080:8080 -p 7077:7077 --name master --net spark adejonge/spark:master
docker run -ti --name client --net spark adejonge/spark bash
[...]
./bin/spark-submit \
  --master spark://master:7077 \
  examples/src/main/python/pi.py \
  1000
```

