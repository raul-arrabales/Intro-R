# Setting up R to work with Hadoop

# Install R in every node of the cluster
yum install R 

# Install Dependencies required for RHadoop
# In R interpreter
R
install.packages(c("Rcpp", "RJSONIO", "bitops", "digest", "functional", "reshape2", "stringr", "plyr", "caTools", "rJava"))
# q() to leave R interpreter

# Required env variables
export HADOOP_CMD=/usr/bin/hadoop
export HADOOP_STREAMING=/usr/hdp/2.5.0.0-1245/hadoop-mapreduce/hadoop-streaming-2.7.3.2.5.0.0-1245.jar  

# Install RHadoop (rmr and rhdfs)
wget https://github.com/RevolutionAnalytics/rmr2/blob/3.1.0/build/rmr2_3.1.0.tar.gz?raw=true –O rmr2_3.1.0.tar.gz
R CMD INSTALL rmr2_3.1.0.tar.gz
wget https://github.com/RevolutionAnalytics/rhdfs/blob/master/build/rhdfs_1.0.8.tar.gz?raw=true –O rhdfs_1.0.8.tar.gz
R CMD INSTALL rhdfs_1.0.8.tar.gz

# Install R Studio Server
wget http://download2.rstudio.org/rstudio-server-0.98.507-x86_64.rpm
yum install --nogpgcheck rstudio-server-0.98.507-x86_64.rpm



