FROM java:latest


# install dev tools
RUN apt-get install -y wget tar

# get drill
RUN wget -O drill.tgz http://www.apache.org/dyn/closer.lua\?filename\=drill/drill-1.9.0/apache-drill-1.9.0.tar.gz\&action\=download
# create Drill folder
RUN mkdir -p /opt/drill

# extract Drill
RUN tar -xvzf drill.tgz -C /opt/drill

# add boostrap.sh
ADD bootstrap.sh /etc/bootstrap.sh
RUN chown root:root /etc/bootstrap.sh
RUN chmod 700 /etc/bootstrap.sh
ENV BOOTSTRAP /etc/bootstrap.sh
ENTRYPOINT /etc/bootstrap.sh
