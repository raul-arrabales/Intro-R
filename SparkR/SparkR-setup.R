 
 # SparkR not included / not compatible in CDH 5.5
 
 if (nchar(Sys.getenv("SPARK_HOME")) < 1) 
 {
     Sys.setenv(SPARK_HOME = "/usr/lib/spark")
 }
 
 library(SparkR, lib.loc = c(file.path(Sys.getenv("SPARK_HOME"), "R", "lib"))) 
 
 sc <- sparkR.init(master = "local[*]", sparkEnvir = list(spark.driver.memory="2g")) 
 
 
 
 
