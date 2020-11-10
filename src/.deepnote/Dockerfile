FROM gcr.io/deepnote-200602/templates/deepnote
RUN python -m pip install --upgrade pip
RUN pip install torch==1.6.0+cpu torchvision==0.7.0+cpu -f https://download.pytorch.org/whl/torch_stable.html
RUN pip install torchtext
RUN pip install sacremoses
RUN pip install -U scikit-learn
RUN pip install nltk
RUN pip install nevergrad==0.4.2
RUN sudo apt-get update
RUN sudo apt-get -y upgrade
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -yq install apt-utils
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -yq install sqlite3
RUN sudo mkdir -p /usr/share/man/man1
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -yq install default-jdk
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get -yq install scala
RUN wget -q --trust-server-names https://ftp.yz.yamagata-u.ac.jp/pub/network/apache/spark/spark-3.0.1/spark-3.0.1-bin-hadoop3.2.tgz -O /home/jovyan/spark-3.0.1-bin-hadoop3.2.tgz
RUN cd /home/jovyan/
RUN tar xvfz spark-3.0.1-bin-hadoop3.2.tgz
RUN sudo mkdir -p /usr/local/spark
RUN sudo mv spark-3.0.1-bin-hadoop3.2/* /usr/local/spark/
RUN sudo rm spark-3.0.1-bin-hadoop3.2.tgz
RUN sudo rm -rf spark-3.0.1-bin-hadoop3.2
RUN export SPARK_HOME=/usr/local/spark
RUN export PATH=$PATH:$SPARK_HOME/bin:$SPARK_HOME/sbin
RUN pip install pyspark