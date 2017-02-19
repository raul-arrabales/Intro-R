Sys.setenv("HADOOP_CMD" = "/usr/bin/hadoop")
Sys.setenv("HADOOP_STREAMING" = "/usr/hdp/2.5.0.0-1245/hadoop-mapreduce/hadoop-streaming-2.7.3.2.5.0.0-1245.jar")

library(rmr2)

map = function(null, data) {
  for (i in 1:nrow(data)) {
    keyval(data[i,1], data[i,3])
    }
}

reduce = function(key, val.list) {
  keyval(key, mean(val.list))
}

mapreduce(
  input="/movielens/ratings_tab.dat",
  input.format = make.input.format("csv", sep = "\t"),
  output="/movielens/avgs",
  map=map,
  reduce=reduce,
  combine=NULL
)
