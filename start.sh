#/bin/sh
if [ ! -e apache-skywalking-apm-incubating-5.0.0-alpha.tar.gz  ]; then
    wget http://apache.forsale.plus/incubator/skywalking/5.0.0-alpha/apache-skywalking-apm-incubating-5.0.0-alpha.tar.gz
fi
export SKYWALKING_ES_DATA=`pwd`/es_data
mkdir -p $SKYWALKING_ES_DATA
chmod 777 $SKYWALKING_ES_DATA
mkdir -p $SKYWALKING_ES_DATA/data
mkdir -p $SKYWALKING_ES_DATA/logs
export SKYWALKING_DATA=`pwd`/skywalking_data
mkdir -p $SKYWALKING_DATA
chmod 777 $SKYWALKING_DATA
mkdir -p $SKYWALKING_DATA/config
chmod 777 $SKYWALKING_DATA/config
mkdir -p $SKYWALKING_DATA/logs
chmod 777 $SKYWALKING_DATA/logs
mkdir -p $SKYWALKING_DATA/buffer
chmod 777 $SKYWALKING_DATA/buffer
export SKYWALKING_HOST=192.168.2.151 && \
cp -v ./config/* $SKYWALKING_DATA/config/ && \
sed -i -e s/localhost/$SKYWALKING_HOST/g $SKYWALKING_DATA/config/application.yml && \
export SKYWALKING_WEBAPP_PORT=9920 && \
docker-compose up --build
