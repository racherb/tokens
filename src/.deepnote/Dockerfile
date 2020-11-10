FROM gcr.io/deepnote-200602/templates/deepnote
RUN python -m pip install --upgrade pip
RUN pip install torch==1.6.0+cpu torchvision==0.7.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install torchtext==0.8.0
RUN pip install sacremoses==0.0.43
RUN pip install -U scikit-learn==0.23.2
RUN pip install nltk==3.5
RUN pip install nevergrad==0.4.2
RUN apt-get update
RUN apt-get upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends sqlite3
RUN mkdir -p /usr/share/man/man1
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends default-jdk
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install --no-install-recommends scala
RUN wget -q --trust-server-names https://ftp.yz.yamagata-u.ac.jp/pub/network/apache/spark/spark-3.0.1/spark-3.0.1-bin-hadoop3.2.tgz -O /home/jovyan/spark-3.0.1-bin-hadoop3.2.tgz
RUN cd /home/jovyan/ || exit
RUN tar xvfz spark-3.0.1-bin-hadoop3.2.tgz
RUN mkdir -p /usr/local/spark
RUN mv spark-3.0.1-bin-hadoop3.2/* /usr/local/spark/
RUN rm spark-3.0.1-bin-hadoop3.2.tgz
RUN rm -rf spark-3.0.1-bin-hadoop3.2
RUN export SPARK_HOME=/usr/local/spark
RUN export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
RUN pip install pyspark==3.0.1